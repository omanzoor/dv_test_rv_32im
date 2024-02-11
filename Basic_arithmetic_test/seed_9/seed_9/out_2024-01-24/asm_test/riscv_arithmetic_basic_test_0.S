.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x28, h0_start
jalr x0, x28, 0
h0_start:
                  li x27, 0x40001104
                  csrw 0x301, x27
kernel_sp:        
                  la x25, kernel_stack_end

trap_vec_init:    
                  la x27, mtvec_handler
                  ori x27, x27, 1
                  csrw 0x305, x27 # MTVEC

mepc_setup:       
                  la x27, init
                  csrw 0x341, x27

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x27, 0x1800
                  csrw 0x300, x27 # MSTATUS
                  li x27, 0x0
                  csrw 0x304, x27 # MIE
                  mret
init:             
                  li x0, 0xfd490f7a
                  li x1, 0x0
                  li x2, 0x2
                  li x3, 0xa6ac505d
                  li x4, 0xf694a40d
                  li x5, 0x80000000
                  li x6, 0x3
                  li x7, 0x0
                  li x8, 0x60e7c3d1
                  li x9, 0x143fbd38
                  li x10, 0xb30e2876
                  li x11, 0x80000000
                  li x12, 0xd
                  li x13, 0xf34661a6
                  li x15, 0x979fd03f
                  li x16, 0x80000000
                  li x17, 0x0
                  li x18, 0x0
                  li x19, 0x8f2f6c2e
                  li x20, 0x80000000
                  li x21, 0xf1bce7e3
                  li x22, 0x8
                  li x23, 0x5283edb5
                  li x24, 0xfe1cc8dc
                  li x26, 0x9
                  li x27, 0x80000000
                  li x28, 0x80000000
                  li x29, 0x80000000
                  li x30, 0x80000000
                  li x31, 0xf8fb0471
                  la x14, user_stack_end
main:             mulh         a6, t2, t5
                  ori          tp, s11, 1706
                  addi         a5, t4, 512
                  or           a3, a4, a4
                  sub          sp, s4, a6
                  srai         s6, s10, 13
                  mulhu        a7, t1, s0
                  andi         s8, t0, -189
                  slli         s0, a3, 31
                  sltiu        s2, a0, -854
                  srli         a0, a7, 3
                  div          ra, s10, a1
                  divu         a1, gp, a6
                  add          s2, tp, s7
                  slt          s10, t1, s11
                  add          s5, t4, s10
                  mulh         s0, a1, t5
                  rem          tp, t0, s5
                  mulhu        s3, a5, a6
                  mulh         t0, s2, s7
                  div          t6, zero, t5
                  slti         a1, t0, -185
                  xor          s8, a7, a2
                  xori         s3, a3, 390
                  mul          s7, tp, s7
                  mul          s3, s4, a7
                  slt          t2, s6, s9
                  mul          t4, t6, s11
                  mulh         tp, s10, ra
                  ori          a1, s0, 1931
                  lui          a5, 762454
                  sltiu        a2, t1, -121
                  andi         t1, s10, -194
                  div          tp, s9, t2
                  slli         s8, t3, 25
                  mulhu        a0, s9, gp
                  nop
                  xor          t1, s11, sp
                  slli         a3, s7, 12
                  sra          s3, zero, s6
                  nop
                  sll          a6, ra, s1
                  slt          s11, t6, t0
                  andi         t4, t2, -146
                  addi         s4, a2, 1105
                  xori         s11, a1, -553
                  sra          a0, t3, s5
                  sra          s8, a1, gp
                  srl          s4, s7, gp
                  or           s11, s11, s4
                  auipc        t5, 164499
                  mulhsu       t4, t5, s1
                  srai         a3, t4, 24
                  xori         s5, t4, -591
                  slti         s3, s0, -324
                  mulhu        t0, a4, tp
                  mulh         t5, a7, a5
                  slti         s11, s9, 207
                  lui          s0, 644607
                  srli         s5, t0, 3
                  sltu         s2, s8, t2
                  mulhu        a5, a6, t3
                  mulhsu       s1, s11, s3
                  ori          t2, s3, 926
                  sll          s7, a4, gp
                  ori          zero, a4, 181
                  srai         s11, s5, 22
                  srl          s8, a4, t1
                  srai         t2, s10, 7
                  srl          a6, a3, s5
                  or           s8, t3, a0
                  divu         a5, sp, s11
                  remu         tp, t0, a7
                  slti         s1, s1, 1
                  and          s3, s2, sp
                  add          a2, a3, a3
                  slt          s7, tp, a2
                  add          a5, ra, zero
                  rem          a1, s7, s9
                  auipc        a3, 849894
                  mulh         t4, sp, sp
                  nop
                  and          s10, s3, t4
                  srl          tp, sp, a6
                  xori         t0, s5, -1312
                  mul          t4, s11, ra
                  sll          s0, a7, a4
                  lui          a5, 791744
                  sra          a0, tp, t5
                  divu         a6, a3, s8
                  sltiu        s8, tp, 170
                  div          t2, a7, a3
                  andi         a1, s8, -770
                  xori         s8, s4, 2022
                  slt          s3, s7, a3
                  auipc        s1, 907305
                  ori          a1, s4, 1989
                  mulhsu       s5, s10, a1
                  nop
                  srli         s3, a2, 29
                  mulhu        s4, a1, t2
                  srl          a6, s8, ra
                  slli         a0, gp, 31
                  mul          s3, a4, t6
                  ori          t4, a1, 1675
                  mul          s5, t0, a1
                  div          s4, s6, t4
                  or           tp, a5, gp
                  mulhu        s11, t4, s6
                  div          sp, gp, s7
                  xor          s3, s0, s1
                  sltiu        s11, t6, -852
                  slt          s10, a2, t3
                  sll          a3, a7, a5
                  sll          ra, s1, t1
                  and          a7, zero, a6
                  srl          s6, s7, s10
                  sra          s2, a0, a1
                  rem          a0, s9, t0
                  or           s5, a2, t0
                  auipc        s8, 820453
                  mulhu        s0, a4, t0
                  slt          a7, t4, s0
                  or           t5, s1, a3
                  div          s10, s1, sp
                  slti         a2, s6, -295
                  nop
                  xor          s5, s5, a4
                  sra          s8, s1, a0
                  divu         s8, s1, t3
                  srli         s5, a3, 10
                  srl          ra, s4, s6
                  rem          t2, ra, s5
                  mulhsu       a1, t0, s8
                  srl          a2, a6, a0
                  and          tp, s6, gp
                  mulh         a5, a2, t3
                  or           t0, s0, t5
                  mulhu        zero, zero, s0
                  sltiu        a0, tp, -35
                  srli         s11, a2, 26
                  xor          s8, s8, t3
                  sll          tp, s3, s5
                  sltiu        s7, s4, 1635
                  sltiu        tp, s2, -180
                  lui          t5, 675461
                  slt          t1, s0, a4
                  divu         s4, t2, zero
                  slli         a5, zero, 5
                  and          s11, a3, s10
                  and          s0, s4, t5
                  auipc        s10, 353841
                  sub          a1, s3, a6
                  div          a0, t3, sp
                  and          gp, t3, a7
                  xor          s0, t0, s9
                  mulh         s0, s1, s1
                  slt          s1, s2, a7
                  mulh         a2, a2, t0
                  srai         a1, s0, 25
                  or           s7, a3, t2
                  sra          s0, a2, a4
                  sub          tp, gp, gp
                  srli         a2, a5, 4
                  srai         a3, a6, 24
                  xori         tp, s6, 436
                  srl          gp, s2, s1
                  srli         s2, s0, 6
                  or           t6, s2, ra
                  auipc        s10, 774134
                  slti         s8, s9, -15
                  mul          s2, a6, a5
                  sll          s8, s1, s2
                  andi         zero, t3, -1783
                  sltu         a2, t1, s4
                  sub          s2, a6, a6
                  sll          tp, s11, s11
                  add          s4, s11, s1
                  mulhu        a5, a6, t0
                  slli         t0, s10, 15
                  remu         a5, t6, a5
                  sltu         a2, zero, s4
                  xori         a2, a5, -1892
                  auipc        s7, 1035739
                  sra          t6, gp, s5
                  mulhu        t4, s4, s10
                  slti         t5, s1, -1970
                  divu         t2, t2, a0
                  or           a7, t3, t4
                  sltiu        zero, a1, 1722
                  remu         a5, t2, zero
                  sra          s7, t1, a3
                  sub          t4, a7, t0
                  sltu         t1, t0, a3
                  ori          s1, a2, -216
                  slti         a5, s5, -2
                  nop
                  sltiu        s6, a3, -1664
                  sub          t1, a2, a6
                  sltiu        s11, sp, 443
                  xor          t1, a7, t4
                  and          tp, s2, a6
                  mulhsu       a1, t0, s7
                  srl          a3, s1, s9
                  mul          t0, t3, tp
                  mul          s5, t1, a7
                  remu         s10, a2, a5
                  xor          t4, a3, t0
                  and          s3, s1, gp
                  xori         t5, s3, -876
                  srai         t5, t4, 7
                  add          s2, a2, a5
                  sra          s2, gp, a7
                  sltiu        t5, t5, -1127
                  mulh         a2, a7, a0
                  mulhu        s2, s0, gp
                  mulhsu       s0, a0, t6
                  sub          s0, s7, a5
                  and          s8, a3, ra
                  nop
                  addi         tp, t0, 869
                  sra          a0, ra, s0
                  div          a5, s1, a3
                  mulhsu       tp, t4, a1
                  sra          s1, s10, s7
                  srl          a1, t4, t3
                  xor          t1, t5, a6
                  mulhsu       s4, s6, sp
                  and          s2, a2, s2
                  srl          tp, s1, s6
                  divu         a6, zero, a6
                  add          t1, s3, t1
                  nop
                  ori          a0, s11, -385
                  andi         t0, t4, -1013
                  sra          a7, sp, a2
                  sltu         s11, zero, a5
                  sltu         s10, a2, a7
                  add          s6, s6, a4
                  sltu         s1, s3, s10
                  slt          a1, s7, a4
                  slt          s5, s3, ra
                  srai         s6, a3, 0
                  nop
                  divu         s4, a6, ra
                  xori         t2, s1, -1435
                  sltiu        a3, s10, -70
                  mulhu        t4, s6, zero
                  sll          s4, t4, t6
                  slti         ra, s6, -573
                  mul          s1, s5, s5
                  mulhsu       a1, t0, s10
                  or           zero, t0, a1
                  lui          s8, 421027
                  mulhu        a1, s8, s4
                  andi         s8, gp, 478
                  srl          a3, t1, s0
                  nop
                  nop
                  lui          a0, 579196
                  div          s6, zero, s8
                  slli         t4, s5, 7
                  srli         t4, a3, 10
                  and          t5, t3, tp
                  xori         a7, s5, -977
                  slt          s5, a6, t2
                  and          a3, tp, a7
                  divu         ra, s10, a4
                  auipc        s3, 256750
                  or           s0, s9, a2
                  srl          s2, s8, s5
                  sra          zero, gp, s10
                  and          t0, s8, s6
                  addi         s7, ra, 343
                  sra          ra, tp, s0
                  remu         a5, t2, t5
                  div          s7, a2, s2
                  srai         s0, t6, 9
                  auipc        t4, 283881
                  rem          t2, a2, t0
                  slti         s8, t4, -444
                  sltiu        t5, a6, -1170
                  andi         a6, t0, -1562
                  sub          t6, t0, s11
                  remu         s3, a5, a1
                  slti         t1, s2, 99
                  sltiu        t2, a7, 498
                  sll          t4, ra, s4
                  xori         t1, t5, 1777
                  or           t1, s7, t2
                  mul          s11, s1, gp
                  sll          s8, s1, s0
                  nop
                  slt          a2, a4, t3
                  sub          s0, a5, s1
                  srl          gp, s5, a7
                  and          a7, a0, s9
                  divu         gp, a7, t5
                  rem          zero, t4, gp
                  rem          s3, a7, t5
                  xor          a6, t0, a4
                  rem          a7, t3, t4
                  srl          t4, zero, s10
                  slt          s8, t6, a5
                  mulhsu       s1, s9, t6
                  addi         t4, s1, 959
                  lui          t1, 286448
                  sra          sp, t3, a5
                  rem          a5, ra, s1
                  xori         t4, s5, 288
                  slli         s5, s8, 30
                  slli         s10, a6, 12
                  ori          gp, t0, -825
                  addi         t4, zero, 1041
                  xor          a5, zero, zero
                  mulh         t6, t5, a4
                  nop
                  srl          a0, a5, s9
                  sltu         a3, s7, s5
                  srai         s6, a1, 9
                  xor          t2, a2, a3
                  slli         s8, s4, 18
                  srai         s5, a6, 16
                  xor          t5, t5, t4
                  srli         a5, s11, 8
                  sll          a7, t4, s3
                  divu         s8, zero, s5
                  mulhu        t4, t5, t3
                  srli         t5, a1, 13
                  andi         s11, gp, 1044
                  div          a1, a7, a7
                  div          s10, a7, s0
                  rem          s1, a3, a5
                  auipc        a7, 268858
                  add          a5, t2, t0
                  lui          s11, 611758
                  mul          t4, s8, t2
                  srai         a1, s10, 11
                  srai         a7, a6, 13
                  rem          t0, s11, t4
                  sra          t4, s11, s8
                  xori         s2, s1, 461
                  auipc        s11, 477696
                  xor          s3, ra, t3
                  div          t0, s0, t4
                  or           a5, a7, t1
                  sll          t2, s3, sp
                  mulh         a7, ra, t1
                  xor          s4, ra, ra
                  addi         s2, s3, -912
                  sltiu        zero, a0, 1072
                  mulhu        zero, a7, s5
                  sltu         t6, s9, s4
                  srl          s7, gp, s4
                  xori         t1, tp, 513
                  mul          s6, ra, s9
                  sltu         t0, s0, s3
                  add          s1, s7, s3
                  srl          s11, s6, zero
                  auipc        gp, 675475
                  mulhu        t1, s1, t0
                  mulh         t4, s1, tp
                  xor          s11, s0, s10
                  slti         a2, a1, 355
                  sltiu        s7, gp, 1293
                  and          t2, s5, t5
                  mulhu        t0, s7, t0
                  lui          a1, 170357
                  rem          zero, a0, t1
                  add          a5, t1, t2
                  sltu         t5, s0, a5
                  auipc        ra, 649184
                  add          t0, s2, s8
                  sll          a2, a7, ra
                  nop
                  slti         t2, t3, 1696
                  nop
                  addi         zero, s4, -117
                  sltu         s10, t5, zero
                  srai         ra, s2, 16
                  srai         s7, sp, 18
                  andi         tp, zero, 82
                  or           t6, t0, s5
                  rem          t0, s10, a1
                  add          t1, t1, s9
                  or           t5, s8, ra
                  xori         zero, t4, -581
                  slti         sp, s2, -1937
                  mulhu        tp, a4, t4
                  lui          gp, 384681
                  slli         a0, s5, 3
                  mulhsu       t4, a3, t0
                  mulhsu       s8, t5, s2
                  ori          s4, sp, 325
                  lui          t6, 967361
                  sll          a6, a7, a4
                  auipc        t2, 8549
                  andi         sp, t1, -1678
                  divu         t2, a6, s0
                  remu         zero, s7, t2
                  xori         a3, t6, -17
                  slli         t0, t0, 19
                  sra          gp, a2, t0
                  slli         s0, a5, 24
                  slt          a2, t6, a4
                  xori         t0, s11, 1194
                  addi         t0, s5, 1563
                  srai         t2, s7, 8
                  addi         s7, s2, 72
                  mulh         a3, a5, t1
                  addi         t0, ra, -21
                  lui          s1, 498860
                  remu         t4, zero, s2
                  add          a7, gp, s5
                  xori         t5, a1, -546
                  slt          s11, s10, gp
                  mul          tp, s1, s0
                  srai         a7, s1, 27
                  ori          s1, t3, 539
                  rem          t5, s11, s5
                  xori         s0, a3, 1785
                  srl          a2, gp, s8
                  mulhsu       a6, t0, ra
                  srl          s8, a6, zero
                  addi         a5, t2, -644
                  div          gp, t0, s3
                  addi         s2, a6, 1975
                  slt          ra, ra, gp
                  mulhsu       t4, s3, a5
                  div          gp, ra, s8
                  lui          tp, 928504
                  mulh         zero, a1, a6
                  or           s3, t1, t4
                  or           t0, a3, a0
                  auipc        t0, 1027442
                  add          t0, a6, s8
                  and          a7, s0, gp
                  and          s2, t6, zero
                  lui          tp, 50535
                  slli         s8, t5, 9
                  add          t5, s11, s6
                  srai         s4, s10, 13
                  remu         a1, s11, t4
                  xor          a1, s6, s2
                  addi         a0, t2, 1959
                  sltiu        s3, s0, -1679
                  mulhu        a5, s0, gp
                  mulh         gp, t2, sp
                  mulh         a3, t5, t0
                  mulhu        s2, gp, a1
                  xori         a1, s9, -1788
                  remu         a6, t6, t3
                  nop
                  lui          a5, 876278
                  addi         s3, s10, 959
                  srai         a6, a7, 5
                  addi         t4, t4, 1802
                  sltu         sp, s11, s9
                  auipc        a2, 959840
                  sll          tp, s3, s3
                  xori         tp, gp, -1825
                  sll          a3, tp, t2
                  srl          s6, a7, s1
                  srli         a0, t2, 15
                  remu         s3, sp, t1
                  ori          tp, s4, 1100
                  or           a1, zero, a5
                  sub          s1, zero, ra
                  mulhu        s7, t6, a5
                  or           a0, a7, t2
                  and          s0, a4, a3
                  lui          s6, 88785
                  rem          a1, a7, zero
                  sltiu        t1, sp, -1357
                  sub          t6, a3, a6
                  slti         s5, s7, -257
                  slt          t1, s6, s6
                  andi         gp, t6, 1506
                  sll          s11, t1, s3
                  nop
                  sll          a3, a7, zero
                  srl          a7, s0, gp
                  mulhu        t1, zero, a0
                  xori         s1, s2, 1874
                  add          a5, a3, ra
                  sra          a5, s9, s4
                  div          t0, t2, s3
                  slli         t1, s10, 17
                  slti         s11, t4, 274
                  slli         t2, a0, 5
                  slti         a3, s4, 1457
                  mulhu        s5, t0, t2
                  nop
                  mul          t4, zero, tp
                  slti         t0, s6, 2032
                  srai         s0, a0, 8
                  mulh         t5, s1, s2
                  add          s6, t2, a3
                  xori         t1, s0, 770
                  or           tp, a0, t1
                  auipc        t4, 877275
                  mulhu        s4, t4, s5
                  nop
                  srai         s11, t2, 21
                  sub          a6, a3, t2
                  xori         tp, s5, 1220
                  add          s11, t6, t3
                  remu         t5, t4, s9
                  slli         a3, t3, 0
                  auipc        s7, 356974
                  sub          s8, s2, t2
                  mulh         a1, a2, s3
                  ori          a1, a4, 554
                  mulhu        zero, t2, a3
                  mul          t5, s3, t3
                  sltu         a5, a2, a4
                  slti         a6, a5, -1231
                  rem          s10, a7, sp
                  sltiu        t6, s8, 1591
                  mulh         s5, t3, s9
                  div          a0, s4, s2
                  div          a6, a1, s0
                  xor          t0, t3, s0
                  srl          gp, t2, t5
                  lui          a3, 822502
                  and          t4, a0, t1
                  sltu         zero, a1, a0
                  ori          t0, t2, -1679
                  sltu         s8, s10, t5
                  rem          t4, a7, t0
                  sltiu        s8, t3, -798
                  sltu         a2, t5, a0
                  sra          t5, t1, s11
                  rem          a2, sp, a5
                  addi         s10, a2, -1091
                  xor          t0, a2, a0
                  xor          gp, t3, s8
                  srai         a3, t4, 5
                  sra          a1, s4, zero
                  mulh         ra, a3, tp
                  sll          a2, s10, t5
                  srai         s7, s4, 29
                  and          zero, s2, s4
                  divu         s6, gp, s2
                  sltu         a2, t5, s7
                  xori         t4, ra, -814
                  xori         a6, t1, -676
                  nop
                  nop
                  or           s11, a1, a0
                  sub          tp, s1, a3
                  or           s4, s8, a1
                  xor          s11, t5, sp
                  divu         t6, t6, a7
                  sll          s3, a7, ra
                  srli         t5, s1, 22
                  auipc        a2, 364907
                  slti         ra, s2, 219
                  or           s4, a6, s11
                  sub          s8, s6, s4
                  divu         a7, t0, tp
                  srai         s2, s8, 9
                  rem          zero, a4, t2
                  and          t6, t0, s9
                  auipc        gp, 505277
                  mulhu        t6, zero, s8
                  divu         s7, sp, s10
                  mulhsu       s4, s6, tp
                  lui          s4, 235596
                  or           t2, ra, s11
                  sra          t5, s3, s10
                  remu         t1, a6, s9
                  srl          a0, a0, tp
                  srai         s4, a7, 3
                  add          t0, t4, t5
                  lui          tp, 403511
                  add          t4, s5, ra
                  sll          a3, t0, s9
                  sltiu        s3, s4, 394
                  mul          s8, a1, t1
                  slti         s5, s5, 1253
                  xor          s4, s7, a0
                  addi         s5, a5, 901
                  nop
                  srl          s1, t0, s5
                  slli         s5, t3, 31
                  andi         zero, s10, 327
                  mulhsu       s5, s2, t3
                  or           s8, a5, t3
                  auipc        t4, 892282
                  andi         a7, s6, -991
                  andi         a5, s2, 690
                  sll          t1, a6, s4
                  xor          s0, s11, a6
                  lui          t2, 839015
                  sltiu        s2, s1, -803
                  sll          a7, t6, a6
                  sub          zero, s0, t5
                  rem          ra, gp, a7
                  srli         t5, s9, 11
                  slti         s7, a5, 1120
                  div          s6, ra, t5
                  add          a1, s7, zero
                  andi         s5, ra, -1120
                  sub          s4, s6, a1
                  mulh         gp, a6, s5
                  addi         gp, s6, -1039
                  srli         s10, s4, 21
                  rem          a1, s2, s0
                  xor          s10, s0, t3
                  ori          tp, a3, 1375
                  sra          s0, zero, zero
                  lui          s10, 504135
                  addi         a6, t3, -1873
                  divu         sp, a7, s9
                  addi         t6, s5, -1208
                  auipc        tp, 1028338
                  or           zero, t1, t3
                  auipc        a1, 541813
                  andi         t6, s2, 214
                  mulhu        a2, zero, a6
                  slli         t4, s0, 18
                  srli         a7, a1, 6
                  srai         s8, tp, 4
                  sltu         t0, t6, s9
                  srl          a0, s0, s10
                  sra          a1, s10, a1
                  sub          s6, s6, gp
                  add          a1, s1, a1
                  slt          tp, a2, s4
                  lui          s0, 97325
                  sub          a1, s6, tp
                  auipc        s5, 896143
                  sltu         a7, zero, gp
                  sra          s1, s0, s3
                  sub          s0, zero, zero
                  auipc        s6, 45048
                  mulhu        s4, tp, a5
                  lui          t0, 534455
                  srl          t2, s3, gp
                  add          s0, t4, a0
                  sra          tp, s3, t2
                  slli         a6, t1, 20
                  sub          s0, a5, a0
                  srli         s7, sp, 23
                  xor          tp, zero, tp
                  mulhu        a7, s9, s9
                  mulhsu       t5, a0, tp
                  xori         s11, t4, -1199
                  and          t6, a1, a3
                  or           a0, a5, t1
                  auipc        s5, 386848
                  addi         s6, s0, -441
                  nop
                  sltiu        s1, a1, -1946
                  sltiu        t5, zero, -993
                  lui          sp, 478955
                  sra          ra, t1, t5
                  auipc        s8, 1047697
                  slt          t5, t4, gp
                  sll          t4, s3, s3
                  sltu         t1, a7, t1
                  rem          t4, s9, t5
                  srli         s5, s4, 28
                  xori         zero, a2, -942
                  ori          s7, s11, 29
                  srai         gp, s2, 27
                  lui          s2, 764368
                  remu         s6, a2, s10
                  slti         t5, s4, -55
                  mulhu        t5, t0, zero
                  sltu         t5, a0, s8
                  mul          s11, zero, a6
                  addi         s2, s4, -339
                  xor          s11, a3, t3
                  addi         a2, a0, -444
                  and          t4, s9, zero
                  mulhsu       s6, s4, t0
                  andi         sp, s9, -1057
                  and          tp, s7, s9
                  lui          zero, 336867
                  srli         gp, s4, 19
                  add          a7, s11, s11
                  mulhu        t2, zero, a5
                  add          zero, t1, t4
                  or           s6, t3, s0
                  mulh         a6, s11, t1
                  srai         s10, a6, 31
                  addi         a1, t3, 753
                  addi         a6, t6, -557
                  auipc        a7, 80566
                  srli         s1, gp, 7
                  remu         t0, a2, t3
                  andi         s7, a3, -1811
                  mulh         s5, a0, s10
                  rem          s8, tp, s2
                  xori         t0, t6, 840
                  mul          s1, tp, s7
                  srli         t5, s1, 14
                  srl          ra, s5, s5
                  remu         t2, a4, sp
                  mul          s4, s6, a1
                  mulhsu       a0, t6, s11
                  sub          t4, a4, s10
                  mul          a6, s1, t5
                  mulhsu       s4, s2, s2
                  auipc        s2, 723395
                  slti         t1, s7, -1297
                  or           a5, t1, t2
                  nop
                  mulh         t2, s1, t0
                  sll          s1, t6, a5
                  mulhu        t5, sp, s3
                  lui          s3, 63450
                  add          t6, a4, s5
                  lui          s4, 588541
                  sll          a0, t4, t6
                  slli         s3, t0, 0
                  xori         t4, ra, 656
                  xor          t4, ra, a4
                  auipc        s6, 525080
                  mul          t4, s1, t2
                  auipc        a3, 960853
                  rem          s11, zero, t2
                  or           a2, s8, sp
                  addi         a7, a7, -1917
                  or           a3, a6, a5
                  mulhu        s1, s11, t3
                  ori          t1, s9, 48
                  remu         a2, a7, tp
                  remu         t1, a2, s1
                  srl          ra, a0, tp
                  xori         a6, t3, -39
                  sll          s10, t1, s6
                  mul          s8, a4, s2
                  mul          a7, t5, s5
                  mulhsu       a1, a0, s1
                  ori          s1, s2, 1713
                  xor          s7, s2, s8
                  xori         zero, s3, -1737
                  srli         a5, t1, 26
                  srl          gp, s7, a2
                  srai         s10, s9, 15
                  xor          s2, s4, a5
                  nop
                  addi         t5, ra, -1249
                  srli         a7, s4, 2
                  sll          t1, s0, s11
                  mulhsu       s0, a1, zero
                  sltiu        zero, s10, 52
                  divu         sp, t4, a7
                  xori         a5, sp, 698
                  andi         t5, a4, 279
                  sltu         a3, s7, a3
                  mulh         a5, a2, a0
                  addi         gp, s1, 882
                  add          a5, tp, t4
                  mulh         s2, t4, zero
                  lui          t1, 96634
                  slt          s7, s5, a7
                  sub          t2, s2, t3
                  srai         s0, a6, 15
                  lui          a7, 722920
                  lui          t1, 664863
                  mul          ra, tp, t4
                  sub          a1, t0, s8
                  mulh         s3, a3, s6
                  ori          t5, a6, -1585
                  srl          a7, ra, tp
                  mulh         t5, t4, a5
                  sltiu        t6, a0, 790
                  and          s8, ra, a2
                  nop
                  lui          s6, 24778
                  remu         s11, t4, t3
                  add          t5, s11, t6
                  xori         a0, t2, 1891
                  srli         a5, t6, 27
                  mulh         a1, s6, a5
                  slli         s0, s5, 23
                  div          s7, a3, s2
                  xori         a7, s11, 553
                  sltu         t4, a7, a4
                  xori         t1, a2, -817
                  sltiu        t2, t5, 2042
                  sltiu        a7, s1, -1610
                  sra          ra, zero, s8
                  auipc        s2, 936791
                  rem          sp, gp, s8
                  xor          a6, s1, ra
                  div          a2, zero, a5
                  slli         a5, sp, 6
                  lui          t2, 230083
                  auipc        t0, 324201
                  andi         s7, gp, 480
                  divu         s2, s10, a2
                  slti         a5, ra, -217
                  rem          t0, a6, tp
                  xori         t4, t4, 1512
                  sll          a1, s0, tp
                  xori         s11, s6, -353
                  mulhu        a3, sp, s10
                  mul          sp, s6, zero
                  srl          t1, a7, a6
                  mulh         s4, t2, t0
                  ori          s3, a2, -104
                  div          gp, a4, a1
                  slli         s7, a3, 20
                  auipc        a7, 496310
                  nop
                  slli         t4, t1, 3
                  slt          s0, s0, t5
                  ori          a1, s3, 778
                  andi         t6, s11, 1984
                  ori          t2, a5, -1443
                  srl          s3, a2, gp
                  mulh         a0, ra, s2
                  div          s1, a7, s1
                  srai         s1, s2, 3
                  addi         s11, s2, 684
                  sltu         s5, s4, t5
                  mulhu        s8, a7, s0
                  srl          t1, t2, a0
                  xori         s0, s11, 800
                  slt          s8, a7, s4
                  andi         a5, tp, -44
                  sltiu        s6, ra, 724
                  mulh         t2, t0, a1
                  nop
                  xori         t5, a4, 654
                  srai         a1, a6, 30
                  and          s4, tp, a3
                  xor          s2, a6, s7
                  addi         s6, a6, -1390
                  sll          s8, t3, t2
                  sltiu        s8, a3, 1411
                  remu         a7, s0, s0
                  div          s0, a6, zero
                  div          tp, t2, t0
                  sltu         s3, t0, a1
                  srli         t5, s9, 10
                  srli         s7, s7, 21
                  srai         t4, s11, 0
                  slt          a7, a2, s8
                  xori         s2, s5, -1312
                  xori         a5, ra, 345
                  mulhu        t4, s10, gp
                  xori         a0, s0, 683
                  rem          a3, a7, tp
                  xor          s3, s4, s0
                  and          s5, zero, s1
                  and          zero, s6, s2
                  div          zero, s3, zero
                  xori         s6, t3, 1802
                  xor          s0, s4, sp
                  or           t6, s4, a7
                  addi         s11, s8, 95
                  sll          ra, a1, s5
                  srli         s1, s8, 31
                  lui          t5, 982821
                  mulhu        s4, s6, s6
                  div          a7, s8, s2
                  remu         a3, s2, zero
                  div          t5, a1, t1
                  xori         zero, sp, -246
                  remu         tp, s3, t6
                  sll          a2, s0, s2
                  sll          s6, t0, s2
                  auipc        gp, 501293
                  sub          a2, s9, t1
                  slti         a7, t1, -1452
                  addi         a5, a3, -535
                  slli         s1, sp, 30
                  and          s1, a4, a1
                  mulhu        t5, s3, tp
                  lui          s5, 990943
                  mul          t6, s8, a6
                  mul          t1, a4, s8
                  slli         s8, s1, 26
                  sub          s2, a2, a2
                  sra          t5, a3, ra
                  sltu         s0, a7, gp
                  sub          a3, a6, s8
                  slt          ra, t4, s4
                  sra          a2, a3, t4
                  srli         t0, t1, 12
                  xori         a7, t0, 199
                  srli         t5, s9, 17
                  slti         s8, s7, -827
                  slti         a1, t1, -2006
                  srl          s8, zero, tp
                  mul          s11, a3, s2
                  srl          a5, s1, tp
                  mulhu        sp, s4, s10
                  sra          a5, t2, t1
                  srl          a5, tp, a3
                  auipc        gp, 1023945
                  sltu         s0, s9, a0
                  rem          t0, s8, t1
                  sub          s4, s3, a0
                  addi         s3, tp, -32
                  mulh         s2, zero, a7
                  sra          s2, a5, a4
                  xori         a2, s0, 910
                  lui          a1, 890075
                  divu         s0, s0, s8
                  slti         s3, tp, -174
                  srai         a3, ra, 15
                  lui          t1, 211425
                  slli         a3, t1, 24
                  andi         a3, s3, -1098
                  div          a1, s4, a1
                  div          s6, a3, s4
                  slt          s11, a4, t2
                  xori         t4, t1, 1287
                  auipc        s3, 741962
                  div          a6, s3, t6
                  srli         t6, t5, 28
                  nop
                  slt          s0, s4, a2
                  remu         a2, s6, a5
                  rem          s8, t6, s1
                  and          s5, a0, t3
                  rem          s3, t3, a4
                  mulhsu       s1, a2, t1
                  sltu         s0, a1, s5
                  mulh         s4, a1, tp
                  sltu         s3, sp, sp
                  and          a0, s11, t4
                  srli         a0, s3, 29
                  srli         t2, tp, 31
                  and          a5, s2, s3
                  divu         t4, ra, t0
                  sltu         t1, a5, a7
                  mulhu        s2, s5, a0
                  slli         t1, t5, 15
                  xori         s7, a7, -1717
                  sltu         gp, gp, a3
                  mulhsu       t4, s1, s2
                  sltiu        a2, s1, -1445
                  xori         s2, a0, 956
                  slti         ra, sp, -673
                  lui          t1, 598175
                  slli         tp, t6, 11
                  divu         gp, a4, a1
                  srli         a3, s5, 6
                  srai         s10, s4, 8
                  slt          s5, s5, sp
                  srl          a6, zero, s5
                  sltiu        gp, gp, 78
                  sltu         s5, s6, s2
                  sltiu        a0, s9, -1646
                  add          s0, a7, t6
                  xor          s1, s6, a7
                  div          s8, s7, s9
                  div          a0, a7, s4
                  slli         s0, a5, 13
                  xori         t5, t4, 1768
                  sra          t4, t2, a6
                  ori          tp, a0, -1367
                  nop
                  lui          s4, 421004
                  sltu         s0, s0, t6
                  sub          s11, a5, s5
                  andi         a5, gp, 703
                  xor          t2, a1, a0
                  mul          s5, s11, s8
                  xor          tp, gp, s1
                  div          a6, a5, s11
                  and          a0, s4, s8
                  auipc        gp, 412414
                  auipc        t5, 88600
                  xori         a0, zero, 1176
                  mulhu        s0, s6, a4
                  and          t4, a0, s10
                  slti         t2, sp, -1700
                  xori         a7, ra, 286
                  srli         t1, a4, 6
                  slt          t6, a0, a6
                  slt          s2, t2, s5
                  sra          gp, s9, zero
                  rem          s3, s7, s3
                  and          a6, a6, a6
                  sra          s2, s7, s0
                  and          a0, s8, t6
                  and          a7, t5, gp
                  auipc        s6, 534941
                  srli         zero, s8, 31
                  mulhu        a7, s0, s8
                  div          a2, zero, s1
                  sltu         a0, t2, t5
                  nop
                  addi         t1, t5, 336
                  auipc        a0, 711186
                  srl          ra, t0, s3
                  addi         s8, tp, 1346
                  sra          t1, s1, gp
                  nop
                  andi         a0, gp, -393
                  mulh         zero, t3, t2
                  slt          t5, s6, a4
                  slti         s2, s8, -1430
                  xor          t5, s2, s10
                  ori          s0, a1, -1807
                  mul          s11, s11, s2
                  xor          s5, s8, s10
                  sltiu        sp, a1, 445
                  divu         t1, a4, s4
                  slti         ra, t4, 530
                  addi         s5, zero, 1257
                  slti         gp, sp, 1522
                  xori         a6, t1, 410
                  or           a5, a7, sp
                  xor          t5, s2, s8
                  slt          s3, t5, s9
                  sltiu        t0, t4, 1767
                  srl          a1, s5, t1
                  sub          s4, ra, s2
                  remu         s1, s11, zero
                  slli         s0, sp, 14
                  srli         a5, s10, 15
                  xor          s6, t0, t3
                  mul          s11, tp, s4
                  mul          a5, s7, a5
                  rem          t0, s2, tp
                  mulh         s11, a3, a1
                  mulhu        s10, gp, s4
                  xori         t4, a6, -1530
                  srl          tp, a2, a6
                  srai         a7, t4, 11
                  and          a5, tp, ra
                  add          t1, a0, t0
                  sll          t5, t2, s2
                  or           t6, s10, s4
                  sub          s7, t4, s7
                  slli         t0, s0, 27
                  sub          gp, s7, s8
                  xori         t4, s9, -1831
                  andi         s1, t1, -1144
                  slt          s0, a6, zero
                  xori         s2, s5, 890
                  mulhsu       a3, a5, s3
                  remu         t1, a3, a6
                  addi         s11, a0, -517
                  and          a0, ra, s6
                  and          s0, s11, s1
                  mulhu        a3, a4, t1
                  srai         a5, t0, 17
                  lui          t2, 57181
                  ori          t0, a6, 923
                  srai         gp, s1, 25
                  mulhsu       s0, s10, tp
                  srli         t0, s4, 2
                  xor          a0, t1, t2
                  slti         t0, s3, -1699
                  mulhu        ra, tp, a7
                  slti         s2, t4, -1320
                  divu         t1, zero, s7
                  srl          s4, a6, a7
                  lui          a6, 703920
                  rem          s6, s8, s0
                  sltiu        a3, a7, -1554
                  mulhu        t6, t5, s6
                  div          t5, a0, sp
                  addi         s3, s4, 1320
                  add          s8, a1, a3
                  slti         t1, tp, 1106
                  srli         a5, t6, 9
                  auipc        t2, 1698
                  mulhu        s4, gp, a5
                  mulhsu       s4, t0, s2
                  sra          t1, a4, t2
                  sra          t4, s6, a5
                  slt          t6, t3, s3
                  srl          t5, t6, sp
                  sub          s5, s0, s10
                  slt          s2, s10, zero
                  sltu         a5, zero, ra
                  auipc        a6, 734614
                  mulhsu       ra, a5, zero
                  srli         a0, a6, 7
                  nop
                  rem          zero, t4, ra
                  remu         t6, zero, t0
                  sll          a0, s10, a0
                  lui          a7, 1029808
                  and          t5, ra, s9
                  slti         s2, a0, -81
                  lui          t6, 354724
                  slti         t0, a7, -1998
                  addi         zero, gp, -1762
                  srli         a2, t0, 13
                  mulh         s6, t2, tp
                  remu         a6, t1, s5
                  slti         s1, s5, 2021
                  sra          zero, s0, t2
                  andi         s4, s5, -1000
                  srai         a0, t2, 10
                  srli         a7, t3, 20
                  andi         t5, a4, 1781
                  auipc        t5, 205736
                  or           t5, t0, t5
                  sra          t1, ra, s6
                  and          s1, a5, s9
                  sltu         t4, a5, a6
                  mul          s1, a1, a6
                  mulhu        s2, s8, ra
                  auipc        s4, 819386
                  rem          s0, a2, a6
                  srli         tp, s6, 5
                  sub          s1, s9, a6
                  slti         gp, s10, -117
                  ori          t4, t3, 676
                  xor          s11, s4, t3
                  slt          t4, t4, a2
                  ori          s10, s10, -986
                  addi         s1, a7, 37
                  sltiu        s8, t4, -639
                  div          s1, s11, a5
                  sltiu        s4, zero, -1264
                  auipc        a0, 610201
                  sll          t2, s4, s3
                  nop
                  srli         t4, a5, 16
                  lui          a5, 827508
                  xor          a1, s5, s5
                  div          s2, s7, s0
                  srli         a2, s1, 11
                  slti         a1, t2, 146
                  or           a6, t2, a2
                  srai         zero, t0, 14
                  srl          a0, s4, t2
                  rem          s4, s11, t0
                  addi         t6, a6, 1337
                  sltiu        t0, s1, -876
                  or           s3, s8, s8
                  addi         t6, s4, 730
                  srai         a0, s8, 6
                  sltu         s8, t5, s10
                  and          t1, s11, s8
                  srli         a5, s5, 7
                  xori         a0, s1, -1962
                  sub          t4, a6, a2
                  xor          s11, s6, zero
                  nop
                  sub          a6, t4, s5
                  mul          s0, t1, a1
                  sll          s5, s4, gp
                  xor          a5, ra, s4
                  slli         t1, t3, 15
                  auipc        t4, 225439
                  mulhsu       s1, a2, t2
                  lui          s4, 484572
                  mulhu        t6, t6, a6
                  srai         t0, t0, 31
                  ori          a7, t4, -1614
                  add          s5, a1, gp
                  divu         s10, s1, ra
                  div          t0, a6, a3
                  sltiu        s11, s8, -894
                  srai         s8, tp, 20
                  srl          t1, t4, zero
                  slli         s0, t1, 0
                  mulh         t5, t5, t1
                  sll          s11, s6, s9
                  slt          tp, t0, a2
                  divu         ra, s11, s0
                  sub          s11, t5, a4
                  xor          s7, s11, s1
                  xori         s4, ra, 1820
                  srli         t4, s6, 6
                  xori         s2, t4, -1793
                  sub          t0, t3, a5
                  lui          a0, 178244
                  sra          gp, t4, s11
                  rem          s11, a1, t0
                  sra          gp, s8, s1
                  mulhsu       a7, s4, s9
                  srl          t0, tp, a4
                  auipc        a2, 54757
                  lui          s6, 301835
                  and          a5, s3, s8
                  srai         s7, s7, 5
                  andi         ra, a3, 1067
                  or           ra, a3, t0
                  andi         a0, a6, -1827
                  sll          s1, a0, s5
                  sll          s8, s2, t0
                  sltu         sp, t4, a2
                  sltu         zero, t6, t1
                  sub          t1, a2, a7
                  mul          a6, s11, s2
                  xor          a6, t5, s9
                  andi         t1, a1, 204
                  mul          gp, s2, a5
                  slt          sp, a2, s1
                  remu         s8, s8, s2
                  sltu         s5, t5, a3
                  srai         s2, s5, 13
                  sll          s5, a7, a0
                  andi         s1, a5, -1808
                  mul          s7, s10, s10
                  addi         a0, a2, 1137
                  slti         s2, s9, 1111
                  add          a2, s11, s10
                  andi         t5, ra, -336
                  add          s6, t5, s7
                  xori         sp, s2, -525
                  sub          tp, s4, t1
                  mulhu        gp, t2, a6
                  xor          t5, s5, s4
                  xor          t5, s6, t6
                  nop
                  srli         a1, t2, 20
                  srl          a2, s2, t5
                  add          t5, a7, t2
                  add          s2, t0, s1
                  slli         a6, a1, 9
                  mulh         s10, a1, a3
                  and          t4, a5, s10
                  sra          s0, ra, s8
                  xori         ra, t4, -774
                  andi         a7, tp, 1223
                  sltiu        s11, s3, 1769
                  mulh         a5, a4, s8
                  sra          s10, t6, s9
                  remu         s11, t4, a7
                  slli         a2, a0, 15
                  mulhsu       a6, t4, s9
                  slti         s1, a0, -1891
                  srl          t2, a5, s3
                  srli         s1, t0, 4
                  slli         a0, s1, 7
                  sltu         a5, s11, gp
                  mulhsu       a6, s10, tp
                  sll          t6, sp, s9
                  remu         s5, a4, zero
                  srai         s1, t1, 8
                  divu         s10, s10, t2
                  srai         t5, s9, 6
                  srl          ra, t5, s10
                  and          a3, s11, t5
                  xor          a3, s11, a0
                  sub          sp, s3, s11
                  mulhu        gp, s11, s4
                  nop
                  nop
                  srai         a1, s6, 31
                  rem          t1, s2, a6
                  sltu         a0, t0, s3
                  lui          a3, 784115
                  addi         s1, a4, 1011
                  andi         t5, zero, -450
                  srl          a1, s5, zero
                  sll          zero, s4, a3
                  or           s8, s11, ra
                  remu         s2, s5, s4
                  srai         t2, s9, 10
                  remu         zero, s0, a4
                  srl          s1, t5, s4
                  sra          s1, s3, s0
                  addi         t1, s5, 421
                  mulhu        t5, s4, s11
                  div          a2, a6, a0
                  sltiu        t0, t4, -1754
                  mulhu        s1, a2, s6
                  rem          s11, s0, zero
                  or           s2, t6, s11
                  xor          s0, t6, zero
                  or           zero, tp, s11
                  srl          gp, gp, s3
                  and          s4, s10, t2
                  and          a0, a0, s2
                  or           s2, t3, t6
                  sra          s11, t2, s10
                  or           s0, sp, t1
                  slli         a2, zero, 28
                  sltiu        s7, s1, 692
                  andi         s3, t4, 1600
                  add          t1, t4, zero
                  srai         s10, t2, 25
                  or           tp, s4, s6
                  ori          a1, t1, 986
                  add          t5, a6, t5
                  lui          t0, 63621
                  mulhu        s11, s7, s4
                  srai         s7, sp, 25
                  auipc        s0, 357456
                  sltiu        gp, s5, 644
                  srai         t1, s5, 0
                  srai         s5, s10, 13
                  sltu         a5, ra, s0
                  rem          s0, tp, gp
                  sll          a1, sp, a2
                  or           ra, s7, s2
                  auipc        s0, 211119
                  nop
                  xori         t4, s5, 771
                  or           t4, s5, s10
                  and          t0, a4, s7
                  slt          a2, a6, t2
                  sra          t4, a2, t3
                  xor          s7, a4, gp
                  or           sp, a5, a6
                  and          s11, a4, ra
                  xor          a6, a2, tp
                  ori          t5, s0, -1070
                  slli         t0, s4, 24
                  rem          s11, zero, t0
                  slt          s10, s9, s5
                  srai         s1, s0, 4
                  rem          s8, a2, s5
                  rem          s8, t1, s1
                  sra          t4, a4, a0
                  mul          a2, s1, a2
                  nop
                  slli         sp, a3, 20
                  andi         s1, t3, -1777
                  or           t6, t4, s8
                  auipc        s0, 148858
                  slt          s2, t4, a1
                  xori         t2, t6, 1770
                  addi         a5, a5, -1151
                  lui          a3, 478254
                  slt          s8, s1, a0
                  div          t4, t2, sp
                  divu         s11, a4, t1
                  addi         s8, zero, 44
                  or           t5, s9, a0
                  rem          zero, t6, a4
                  nop
                  and          s6, a0, s6
                  srl          s8, a5, sp
                  auipc        sp, 146573
                  mulhsu       s1, s7, s4
                  xori         a2, gp, -150
                  mulhu        a6, t6, a7
                  srli         a5, s4, 2
                  xor          tp, a5, t1
                  srai         a2, s3, 13
                  mulh         ra, s8, a3
                  sltu         a1, s7, t3
                  sll          sp, gp, a2
                  srli         t5, s0, 25
                  ori          t6, a6, -1350
                  lui          a2, 724697
                  slt          s1, s6, zero
                  remu         sp, s2, s8
                  add          t5, t1, s9
                  mul          s6, a0, a4
                  slti         s1, s2, -122
                  andi         t2, sp, 1669
                  sub          tp, s5, s7
                  mulhu        s0, ra, a7
                  lui          t0, 293613
                  xori         s1, s7, -464
                  div          t5, s10, s5
                  sltu         t6, t6, sp
                  add          s2, a2, a0
                  slli         s8, ra, 24
                  addi         gp, gp, -874
                  slt          a1, s6, s8
                  xor          s0, a2, s0
                  sltiu        a3, t2, -407
                  addi         ra, s7, -434
                  andi         a3, a3, -659
                  and          gp, t1, s6
                  srli         s7, a6, 18
                  sub          a5, s0, a2
                  sltiu        s4, s6, 1832
                  mulhu        t6, a7, t1
                  srli         gp, zero, 0
                  xor          s1, s4, tp
                  xor          a5, gp, a6
                  divu         tp, t5, a4
                  slti         a2, s10, 1776
                  nop
                  mulhsu       s6, a2, a0
                  sll          ra, s1, s2
                  and          gp, s3, a3
                  sll          s2, s0, a7
                  slt          t5, gp, t2
                  lui          t5, 563823
                  mulh         s6, s1, s11
                  sltiu        s3, s6, -1553
                  srai         s2, s6, 3
                  rem          a1, s3, s6
                  add          zero, sp, a5
                  auipc        s8, 147078
                  slli         a1, a1, 19
                  sub          s11, ra, zero
                  auipc        t1, 163941
                  addi         t1, t1, 1196
                  xor          s10, s0, t0
                  xori         t1, ra, 1721
                  slti         t2, s7, -244
                  sltiu        t6, a2, 1528
                  sra          a2, a4, a1
                  andi         t0, a6, 139
                  sub          tp, t0, s1
                  xor          t6, s3, t3
                  xori         t5, s0, -1484
                  rem          s6, s6, s0
                  lui          t2, 953468
                  add          s8, s5, a1
                  sub          t4, gp, s1
                  slli         s3, t4, 17
                  sltiu        tp, t4, 766
                  lui          s1, 883538
                  srai         t1, s5, 16
                  sltiu        a3, s8, -1351
                  addi         s11, s9, 448
                  sra          s3, t2, s2
                  mulh         t5, s6, t1
                  auipc        a2, 560879
                  sltu         t6, s0, s9
                  nop
                  slt          s0, s1, tp
                  andi         a3, t5, -224
                  sra          gp, t4, t0
                  srli         a6, s9, 29
                  mulhsu       t6, s8, a1
                  slli         a2, t6, 25
                  srl          ra, gp, ra
                  slt          a6, t4, a3
                  xori         s0, t0, 423
                  sltiu        a3, s6, -925
                  sll          s6, t6, s2
                  mulhu        t6, a2, gp
                  xor          a3, tp, a0
                  divu         s0, s6, t3
                  and          s1, ra, a3
                  mul          s8, s5, a7
                  divu         t4, s0, a4
                  mulhu        t2, a0, t2
                  sltiu        s11, t0, 577
                  sltiu        a5, t4, 1950
                  slti         s11, sp, -1029
                  sltu         a3, a5, a0
                  sll          s6, ra, a7
                  add          s11, t1, a4
                  remu         t4, a3, s4
                  mulhu        s3, t0, s1
                  slti         zero, s2, -1544
                  sll          s8, t1, t6
                  andi         a6, s11, 1439
                  xor          a5, s9, s8
                  and          t4, ra, a5
                  div          s6, s1, s11
                  divu         sp, a6, tp
                  remu         zero, s2, s7
                  mulh         tp, sp, s10
                  addi         a6, s3, 1248
                  mulhu        sp, a0, t6
                  divu         gp, s5, s1
                  srl          a6, s2, s5
                  slti         s7, t2, -1957
                  ori          s6, t0, 499
                  mul          a7, a3, s11
                  rem          s7, zero, a5
                  add          gp, s11, a5
                  mulhsu       t6, s4, t4
                  srai         gp, s5, 0
                  andi         a0, s5, 979
                  or           s2, a2, a2
                  sltiu        a5, sp, 553
                  add          t5, a7, a0
                  rem          sp, a6, s8
                  sltiu        t5, a2, 893
                  or           s4, s10, a7
                  sltiu        s1, s7, 1725
                  slli         s5, s11, 3
                  nop
                  sra          gp, t3, a5
                  lui          a5, 99888
                  auipc        t2, 654320
                  auipc        a7, 764328
                  mul          a6, s1, a1
                  srli         a0, t5, 18
                  sub          s5, t0, s9
                  addi         tp, t0, -1167
                  mulhu        s0, ra, t0
                  slli         s6, s6, 19
                  sub          s7, s10, a1
                  divu         a0, s1, t2
                  mul          gp, sp, s1
                  lui          sp, 35952
                  sra          a6, sp, a2
                  add          t5, a3, tp
                  mulhsu       t1, ra, a4
                  mul          t2, t0, t6
                  sltu         tp, s6, a4
                  add          s10, t1, t4
                  srli         sp, a5, 10
                  mulhsu       s4, t2, t5
                  sltu         ra, s11, s7
                  divu         t2, s9, a0
                  sltiu        s6, s3, 1075
                  xor          s11, a4, s2
                  slti         s8, s1, 1448
                  andi         t0, a1, 936
                  sltiu        a6, a6, 460
                  sra          ra, ra, a1
                  add          s4, a7, s5
                  div          t4, t5, t0
                  addi         t5, ra, -1243
                  mulhu        s8, a5, s3
                  mulhu        t2, s4, s4
                  xor          s11, s0, t6
                  xor          s4, a2, a6
                  ori          s7, s2, 1994
                  xori         t6, sp, -1292
                  mulhu        a0, tp, a0
                  lui          zero, 994515
                  sra          zero, zero, a5
                  auipc        t0, 257388
                  sltiu        a7, s11, 1847
                  andi         sp, a7, 829
                  sltiu        s2, gp, 589
                  mul          ra, a7, t3
                  sltiu        ra, s0, 1672
                  slli         t5, s8, 30
                  sra          t4, t6, a2
                  mulh         ra, ra, t2
                  add          t5, zero, s11
                  and          a1, a4, sp
                  mul          sp, s5, s10
                  mulhu        s4, a5, sp
                  mulhsu       a3, s9, a2
                  or           t2, ra, sp
                  nop
                  mul          gp, s7, a0
                  add          s2, s7, t2
                  srli         a0, t2, 0
                  srai         s3, s1, 15
                  lui          sp, 1023757
                  remu         a6, t2, a6
                  slt          s6, a5, t0
                  sll          s8, s10, t1
                  mulhsu       s10, a7, s6
                  remu         zero, a6, s7
                  sltiu        t2, tp, 1557
                  and          s5, t4, s10
                  sltiu        t2, ra, -913
                  sra          s8, a3, a6
                  sra          a7, s4, t1
                  lui          a3, 209173
                  xori         t4, s3, 626
                  mulhsu       a1, s4, s11
                  add          s0, s11, a1
                  xor          a2, s11, a3
                  mulhsu       a0, a0, s3
                  srli         zero, s1, 2
                  or           t4, a3, t0
                  auipc        s6, 11410
                  or           s11, s11, s4
                  sltu         a5, a3, t0
                  srli         a2, s11, 5
                  sltiu        s6, s9, 1267
                  slli         t4, a2, 1
                  srl          s2, a2, s5
                  xor          a5, t5, ra
                  lui          a3, 202257
                  slli         a6, sp, 12
                  ori          a2, a1, -1475
                  nop
                  or           s11, a4, a0
                  lui          s11, 559509
                  slt          sp, t1, s3
                  ori          a2, a2, 154
                  or           tp, t1, s0
                  mulhsu       s2, sp, s6
                  remu         t4, a3, a2
                  mulhu        s7, a1, t5
                  slli         t0, t5, 11
                  sltiu        a1, s9, -423
                  add          a6, s3, tp
                  or           a7, a3, s0
                  andi         a2, s3, -319
                  auipc        t2, 851340
                  or           t2, a1, t0
                  srl          s8, a7, tp
                  remu         sp, a5, a4
                  auipc        t5, 1035206
                  mulh         s7, s10, s3
                  slti         a3, a2, 981
                  sub          s5, t0, t6
                  div          tp, a1, a4
                  xori         s8, a2, 193
                  divu         tp, s10, s6
                  mul          sp, a6, a7
                  srai         s11, a4, 8
                  mulh         s7, tp, s10
                  srli         s7, a5, 13
                  srli         t6, t6, 16
                  mulhu        a0, t2, t3
                  nop
                  sub          a3, zero, a3
                  mulhu        a6, a6, s7
                  sra          s7, t5, s0
                  add          a7, a2, t3
                  divu         s10, a0, s7
                  xori         zero, a2, 1216
                  div          s7, zero, a1
                  sub          a6, zero, t2
                  lui          t4, 462310
                  srai         a1, sp, 31
                  mulhsu       s6, s4, s1
                  slt          tp, a3, tp
                  rem          tp, s1, a7
                  sra          a3, sp, t5
                  divu         t4, s5, tp
                  ori          s11, t1, -1171
                  mulhsu       t4, s7, s7
                  mul          s1, a1, s10
                  srli         a3, s11, 31
                  divu         gp, s10, s7
                  andi         gp, zero, -1859
                  auipc        gp, 425559
                  xori         s2, t3, 1548
                  remu         a1, sp, s1
                  srli         gp, a2, 13
                  and          zero, a0, s5
                  srl          s6, a3, t3
                  srl          a3, s3, a5
                  xor          s4, s9, a4
                  add          s7, a5, s8
                  slli         s8, t4, 7
                  srli         gp, a2, 9
                  div          a2, a4, s3
                  addi         t4, s5, -1016
                  sub          t1, a4, a0
                  srl          t5, t5, a1
                  slli         t5, s2, 19
                  slti         a3, s3, 1337
                  auipc        s3, 533065
                  srli         s2, s9, 6
                  srl          s4, t2, a1
                  mul          s1, a3, s5
                  auipc        a7, 422061
                  srl          t1, a2, ra
                  slt          t6, t4, s10
                  divu         zero, s1, zero
                  divu         a7, s8, a5
                  add          a6, sp, t2
                  and          gp, a6, a4
                  and          a0, a1, a0
                  div          t1, t6, s0
                  add          zero, a5, a7
                  nop
                  slli         s4, t0, 29
                  and          a7, t0, t0
                  slti         tp, s5, -1454
                  and          s3, s9, s1
                  mulhsu       t6, a3, a6
                  divu         t0, s5, t2
                  srl          s4, t0, tp
                  srl          t4, s11, a5
                  lui          gp, 325471
                  div          s0, s10, a2
                  ori          s2, t4, -724
                  or           a2, s8, ra
                  slli         t4, gp, 4
                  addi         s7, a3, -820
                  nop
                  srli         s7, s10, 29
                  andi         s7, t5, -252
                  xor          a2, s8, sp
                  sltu         t0, s4, a6
                  nop
                  xor          tp, t6, s6
                  ori          a7, a4, -1141
                  sll          s11, a1, s8
                  lui          t2, 40089
                  remu         s2, s11, s3
                  srai         t4, s9, 24
                  srai         a2, gp, 1
                  slt          s4, ra, a4
                  rem          gp, a7, tp
                  ori          s10, s9, -26
                  sll          s3, a4, t0
                  auipc        t4, 308574
                  and          sp, zero, s3
                  add          zero, a6, s9
                  sra          t6, s3, s10
                  srli         zero, t0, 21
                  srai         a6, s9, 22
                  mulhsu       a0, s3, sp
                  sub          ra, a2, s9
                  add          t0, s10, s5
                  mulhu        s5, t5, s2
                  mul          t0, s11, sp
                  xori         t2, s1, -382
                  add          a0, t5, t4
                  xori         s2, ra, -82
                  sltiu        s5, t2, -1507
                  mulhsu       s1, t5, a7
                  srli         tp, a4, 17
                  or           a1, s10, s8
                  slli         t4, tp, 11
                  slli         tp, zero, 27
                  rem          a6, t4, a3
                  nop
                  sra          t5, a3, t3
                  slli         t0, sp, 27
                  and          s5, s4, s7
                  andi         t6, gp, 883
                  lui          a7, 227042
                  remu         sp, s7, s9
                  andi         t1, s6, -646
                  sub          s10, s1, t2
                  sltu         a0, a4, s7
                  srli         s5, t2, 18
                  addi         tp, a4, 1574
                  srai         s5, a6, 14
                  sltu         a1, s6, s9
                  srl          sp, a6, s2
                  mulhu        t1, s5, tp
                  xor          t5, t0, t2
                  sltiu        s8, t6, -243
                  andi         tp, s8, 446
                  sub          a0, s1, a3
                  remu         tp, t6, gp
                  sltiu        s0, zero, -1137
                  divu         s5, a3, gp
                  sub          tp, s10, t2
                  srli         s11, zero, 21
                  divu         s8, a6, ra
                  div          s11, s9, s2
                  srli         a1, tp, 24
                  or           t5, t5, t5
                  sub          s10, a6, t3
                  sltu         tp, s8, t4
                  add          a7, a7, s6
                  or           t2, a5, s3
                  slti         s1, t2, 1957
                  sll          a2, a3, a1
                  sra          a1, t1, s6
                  slt          a1, t4, s8
                  srli         a1, t6, 20
                  srli         gp, s10, 6
                  mulh         tp, s5, s3
                  div          s1, s7, t1
                  srai         t5, s1, 0
                  rem          s11, zero, t5
                  sltiu        s5, s4, -489
                  addi         t0, a5, -1835
                  sub          t5, s8, s0
                  sra          s6, a7, a6
                  xor          a6, s10, s7
                  sra          a3, gp, s1
                  andi         t4, gp, -1783
                  addi         s11, zero, -1045
                  mul          a1, a6, s4
                  or           t0, tp, s3
                  mulhsu       s5, a5, a3
                  add          t6, a3, zero
                  mulh         a0, a0, a2
                  sltiu        t6, a2, 1284
                  sltiu        gp, s7, 1343
                  srl          a0, t4, t4
                  mul          s5, s9, a6
                  rem          a0, s5, s9
                  or           t0, s6, a2
                  sub          t4, a2, s2
                  rem          s5, s3, a5
                  sll          a1, t2, s3
                  slti         a3, sp, -1640
                  rem          t4, s10, s11
                  rem          s3, zero, s2
                  sltu         s2, s5, t5
                  and          s7, tp, s8
                  rem          t5, sp, s2
                  mulhu        ra, s5, a7
                  xori         ra, s5, 537
                  srli         s8, s10, 26
                  sltu         a2, a0, a5
                  srli         s5, s8, 14
                  srl          t2, s0, s1
                  mul          s4, s8, s4
                  mulhsu       zero, t2, a5
                  lui          s3, 593857
                  addi         a3, s5, 32
                  andi         a0, gp, -588
                  sll          t0, s0, t2
                  rem          zero, s0, a0
                  or           a0, s5, s0
                  ori          t6, t2, 1885
                  srai         tp, tp, 2
                  mulhsu       t0, s10, s2
                  sltiu        a1, a2, 558
                  sltu         t6, t0, s3
                  nop
                  srli         a3, s6, 6
                  auipc        a2, 980645
                  srli         s8, s3, 17
                  mulhu        s11, t2, tp
                  mulhsu       a2, a7, a7
                  xor          t1, sp, t5
                  sll          s4, zero, ra
                  slt          a7, tp, s0
                  mulh         a7, zero, sp
                  addi         t4, s9, -77
                  sltu         sp, s7, t3
                  slt          s11, a4, s8
                  rem          s1, s4, gp
                  srl          a1, s5, a1
                  nop
                  andi         s5, s0, 1570
                  srl          zero, tp, t2
                  div          tp, s8, zero
                  sltu         zero, tp, a3
                  slli         t2, t3, 22
                  xor          a6, s8, s11
                  mulh         t4, a4, t6
                  mulhu        a1, a4, a6
                  auipc        ra, 711686
                  srli         s5, s5, 19
                  sll          s6, tp, a4
                  lui          t0, 793101
                  nop
                  mulh         t5, s8, s10
                  rem          a2, t5, t0
                  srl          a5, s8, s3
                  slt          s0, s9, t2
                  nop
                  slt          s8, t2, a4
                  sub          t5, s5, s9
                  rem          t2, s7, t2
                  divu         a5, s5, s9
                  xori         s7, gp, -1807
                  sub          sp, a2, t2
                  mulh         sp, t2, s11
                  srli         t4, a3, 5
                  and          tp, s11, gp
                  slt          a5, t1, s6
                  sltiu        t4, a5, 249
                  divu         tp, a1, s2
                  lui          a5, 356596
                  slti         s3, a3, 1532
                  srl          s2, s5, t3
                  srli         a0, s6, 8
                  divu         gp, tp, s3
                  add          a1, s2, a7
                  rem          a7, s2, t5
                  add          s2, s2, zero
                  divu         a5, s7, t1
                  mulhsu       t0, s3, s11
                  sltiu        s5, a6, -929
                  ori          a6, a1, -786
                  slti         a7, t3, -1066
                  and          s7, ra, t6
                  srli         t4, t2, 1
                  divu         t0, ra, sp
                  divu         t0, s10, s3
                  srl          s11, a4, sp
                  sll          a2, s6, a1
                  addi         a2, s2, 497
                  srai         zero, s2, 21
                  mulhu        a7, s3, a1
                  div          a3, t4, a2
                  addi         s0, sp, -1473
                  srli         t2, tp, 17
                  auipc        a0, 118817
                  mulhu        s4, t3, s9
                  xori         s10, s1, 1723
                  mulhsu       t2, tp, t5
                  addi         s11, a0, 1605
                  andi         t4, s0, 1419
                  remu         a0, zero, s0
                  srl          a3, s2, s1
                  ori          s0, s5, 1080
                  sltiu        a3, s7, 1185
                  sll          s10, s0, a7
                  mul          s1, ra, s4
                  add          s0, s11, s4
                  or           t2, sp, a5
                  add          t0, s6, a6
                  slti         t2, s7, 1938
                  slli         t6, s5, 15
                  auipc        s6, 75065
                  andi         s11, s2, -1495
                  slt          a1, s10, s6
                  mul          s10, s11, tp
                  srl          sp, s11, s2
                  mulh         t6, t4, s7
                  sra          a1, t6, s5
                  srli         s8, a2, 26
                  divu         s2, t2, t0
                  srai         s0, s2, 5
                  lui          a6, 162595
                  srai         s7, s0, 26
                  srai         t4, t2, 10
                  xori         t1, a7, 1740
                  ori          ra, t0, 1050
                  add          a5, t1, t1
                  xori         s5, s8, -618
                  xori         t2, a4, 1989
                  rem          a3, t3, t1
                  xori         s4, tp, -1198
                  slt          tp, tp, s0
                  sll          s1, a5, a0
                  slli         a0, t3, 20
                  mulh         t0, a2, s5
                  nop
                  lui          tp, 668302
                  mulhu        t1, t0, a3
                  div          s10, sp, s5
                  slli         s1, gp, 4
                  sltu         s8, s2, a2
                  sll          tp, tp, t4
                  auipc        a6, 984672
                  div          a0, sp, a7
                  sll          s10, sp, tp
                  and          s11, s6, t3
                  slt          t1, a1, t1
                  srai         gp, a7, 12
                  xor          s1, s6, s1
                  or           a6, s1, s9
                  nop
                  ori          ra, s5, -1077
                  remu         s10, s2, s8
                  srai         t4, a7, 18
                  sll          t2, sp, gp
                  ori          a3, s3, -251
                  ori          s2, s7, -553
                  ori          t5, ra, 198
                  slti         a1, a5, 1954
                  mul          s8, a1, a2
                  add          gp, sp, s0
                  addi         t1, s10, -1749
                  sltu         s8, s5, t5
                  auipc        gp, 152020
                  rem          s7, s10, t4
                  slt          t0, s5, t5
                  sltiu        s3, a3, -1010
                  nop
                  xori         s0, t6, 1488
                  nop
                  srl          t5, gp, a6
                  nop
                  add          s6, s2, gp
                  add          s8, ra, a6
                  addi         gp, s11, -56
                  sll          s0, s10, gp
                  sltiu        a1, t5, 475
                  ori          s7, t5, -1136
                  div          s0, s6, s9
                  mulhu        a3, t2, s5
                  mulhu        zero, s11, a6
                  andi         gp, s4, -1195
                  sltiu        a6, ra, -1235
                  sub          t2, s9, a3
                  sub          s2, s4, gp
                  rem          gp, t1, a0
                  addi         t2, t2, 926
                  xor          t5, a3, ra
                  sltiu        a0, t0, -875
                  ori          s7, a6, 1734
                  sra          t5, s3, t6
                  add          a6, a5, t2
                  and          s0, t2, s5
                  addi         gp, t1, 1787
                  srli         s8, s0, 9
                  xor          t6, t6, gp
                  sltu         s3, s4, a4
                  slti         s11, t1, 179
                  mul          gp, s2, t4
                  addi         s8, s2, 2040
                  sub          a0, t4, zero
                  xor          s11, s3, zero
                  or           s1, s7, t0
                  sltiu        sp, t6, -271
                  srai         t0, t2, 15
                  srli         sp, a1, 30
                  slli         t5, t3, 9
                  lui          s2, 549523
                  srai         a0, s5, 9
                  mul          a1, a5, s5
                  mulh         a7, s8, t0
                  mulhsu       tp, s7, a2
                  slti         a2, a7, 394
                  srl          s3, t3, s3
                  and          a3, a4, a4
                  slt          t6, t6, t1
                  sltiu        s2, s4, 909
                  and          s0, s0, s7
                  sltiu        s1, s8, -1232
                  mulh         zero, s0, ra
                  remu         a2, a7, s3
                  remu         a6, t3, s10
                  add          zero, s5, a1
                  sltu         a2, t5, t0
                  mulhu        s2, t5, t4
                  slli         s4, a1, 16
                  sltiu        tp, a2, 271
                  slt          a3, t0, tp
                  add          s4, s1, s10
                  andi         s8, s2, -1936
                  mulhu        t5, t4, a0
                  slli         t1, t3, 22
                  mulhu        a2, s7, s10
                  remu         t5, t3, t0
                  sltu         s6, gp, t6
                  nop
                  rem          tp, t2, s8
                  auipc        gp, 950522
                  srl          ra, a0, s0
                  add          t4, s8, ra
                  remu         s3, a7, s2
                  mulh         a2, s8, s3
                  sltiu        zero, s4, 1685
                  lui          sp, 518497
                  sub          zero, tp, s9
                  sra          a3, s4, a4
                  ori          s11, a0, -388
                  mulh         s11, t4, a0
                  ori          t4, s8, -1621
                  srai         ra, s1, 4
                  sltiu        sp, t3, -619
                  divu         a2, a3, a5
                  slt          t4, s5, s0
                  slt          s11, t4, a7
                  lui          t4, 784704
                  srli         s8, t5, 11
                  div          tp, a4, a0
                  rem          s7, t3, ra
                  ori          a7, a6, 825
                  nop
                  slti         t5, a7, 502
                  nop
                  sra          s2, t3, t2
                  sll          s2, a2, s10
                  sltu         a7, s7, tp
                  srli         a1, s8, 18
                  div          t5, s7, s4
                  add          a5, tp, s9
                  lui          s8, 1010501
                  addi         ra, zero, -697
                  sub          zero, s11, s3
                  xor          a0, s6, a4
                  divu         t2, s4, s4
                  slli         s7, s10, 23
                  mulh         s6, s4, t0
                  add          a0, a3, t2
                  mulhu        t6, s2, s2
                  and          t4, s7, s7
                  mul          a5, s9, s7
                  sub          s6, s7, s7
                  mulhu        t0, t3, t0
                  xori         s5, t5, -1397
                  or           a7, tp, t2
                  sltiu        s11, t3, 1096
                  rem          t4, t6, a0
                  mul          t6, s6, s5
                  xori         s4, a0, 58
                  addi         t1, s5, 310
                  sra          s6, s6, s7
                  and          sp, s5, t1
                  remu         tp, a0, tp
                  sll          a5, tp, s5
                  addi         s0, s2, 187
                  div          gp, t2, sp
                  or           tp, s3, a0
                  div          t1, gp, s4
                  slli         s1, a3, 7
                  auipc        tp, 385411
                  srl          t6, s1, a4
                  srl          a0, a5, a3
                  ori          a5, a1, 752
                  sltu         a5, s3, t3
                  srai         t4, ra, 15
                  srl          s5, tp, a1
                  or           sp, t4, ra
                  slli         t5, a6, 5
                  mulhu        s5, a7, s0
                  xori         a5, s5, -1054
                  nop
                  sll          a6, s6, a6
                  sra          s6, a3, s6
                  ori          s3, s0, -1667
                  divu         s8, ra, a3
                  addi         s8, s2, 1266
                  andi         s4, a1, 84
                  slt          a7, a6, s9
                  sra          s2, t1, a3
                  sub          s4, s8, s5
                  nop
                  mul          s1, tp, s11
                  remu         s4, t5, s6
                  sra          t1, gp, s2
                  sll          gp, sp, a5
                  nop
                  lui          a5, 785219
                  slti         s2, s10, -1443
                  slli         t1, s6, 31
                  slt          s7, a1, s1
                  nop
                  xori         s5, s7, 1150
                  sltiu        s11, t3, 297
                  sltu         a7, a5, s11
                  xor          tp, t5, a7
                  mulhu        t5, s11, a6
                  ori          a3, a5, -427
                  slt          s7, a7, t6
                  sub          t5, s2, s9
                  sltiu        s7, s9, -241
                  or           zero, t0, ra
                  mulh         s10, a5, gp
                  srli         a5, t1, 22
                  slti         sp, s7, 669
                  xori         a1, a6, -227
                  sll          s6, t3, s8
                  remu         t6, t1, tp
                  remu         s1, s9, gp
                  mul          s5, zero, t3
                  slli         a6, a5, 10
                  slt          a5, t3, zero
                  nop
                  or           t4, zero, s4
                  lui          t4, 680470
                  srli         s0, a5, 8
                  ori          s1, s7, 1598
                  div          a5, a0, s2
                  andi         t4, s2, -1115
                  xor          s7, zero, s10
                  sltu         a5, a0, a1
                  slti         a2, t0, 913
                  mul          t6, t6, s2
                  add          t6, gp, t1
                  sltiu        t1, s7, -302
                  xori         a2, s3, 1379
                  xor          s3, a7, a5
                  or           s10, a2, a5
                  divu         s11, a0, s10
                  mul          t5, s10, s5
                  xori         t0, zero, 1923
                  srli         s2, s0, 21
                  sltu         a0, sp, s11
                  srai         a6, s3, 1
                  srl          a3, s5, a5
                  slti         s1, t2, 788
                  sltiu        sp, s9, 806
                  and          t2, a0, s4
                  andi         s7, s10, 710
                  sltu         tp, s0, s5
                  xori         s8, t3, -1868
                  sra          a7, s4, a2
                  auipc        a7, 899570
                  slti         t0, s1, 1778
                  remu         s8, s10, a5
                  nop
                  div          s1, a2, s2
                  remu         s1, s3, s0
                  lui          a3, 848302
                  mulhsu       s1, s4, a6
                  sll          sp, sp, sp
                  srl          sp, t5, t2
                  nop
                  xor          a7, s0, a0
                  rem          t0, s1, a1
                  divu         t1, t4, ra
                  andi         t6, t6, 807
                  or           s6, ra, a5
                  add          a5, a6, s9
                  sltiu        sp, s11, -884
                  sra          a6, a2, a5
                  auipc        s8, 33754
                  srli         tp, a2, 20
                  slti         t6, t6, 569
                  srli         s2, t1, 0
                  lui          t6, 1030512
                  mulhsu       a2, s7, s7
                  mulhu        s1, s8, s2
                  slli         t0, s6, 16
                  srli         s1, sp, 4
                  add          t6, ra, ra
                  addi         s8, s9, 992
                  mulhu        s4, sp, a3
                  srli         a2, t4, 18
                  mulhsu       a5, t2, t1
                  ori          a2, t6, -434
                  remu         a1, a5, s6
                  add          s5, s0, t0
                  add          s8, t1, t4
                  mulhu        s10, s6, a0
                  lui          s7, 639188
                  remu         s5, a0, s1
                  remu         ra, s4, a1
                  and          t5, gp, gp
                  mulhu        s4, s7, s3
                  mulhu        sp, s0, t4
                  andi         t6, t1, 774
                  add          s3, gp, s10
                  sll          a2, s6, a1
                  sub          s6, sp, s1
                  sra          t4, tp, s8
                  slt          s4, a7, s9
                  xor          s0, s9, t6
                  sll          a1, s5, t6
                  xori         t4, sp, 303
                  ori          s0, s6, 1815
                  xori         ra, zero, 411
                  sra          s8, t2, a3
                  mulhu        a2, s5, a6
                  xor          s8, t3, s10
                  xor          ra, t4, gp
                  slt          a5, a0, s2
                  sltu         s1, t6, t0
                  xor          s4, tp, a3
                  mul          s8, t3, s11
                  mulhu        ra, s0, t4
                  mulhsu       s6, a4, a2
                  slt          s0, zero, s2
                  sub          t2, s4, t0
                  xori         ra, s7, -1816
                  mulh         a3, a3, a6
                  and          s7, s8, a5
                  xor          s10, s8, sp
                  xor          a7, a4, sp
                  xor          s10, s4, a5
                  divu         sp, a5, t3
                  andi         t4, s5, 1888
                  lui          t4, 29131
                  remu         s10, t3, gp
                  add          s0, t3, s11
                  srl          a2, s5, s0
                  sltiu        s8, a0, 995
                  remu         t6, a4, t0
                  mulhu        a0, s2, t1
                  sub          a5, s9, s0
                  and          s1, s0, s1
                  add          s11, tp, t0
                  mul          s4, t6, gp
                  sll          t6, a4, t5
                  srli         a3, a6, 19
                  remu         s3, sp, tp
                  or           a1, t1, a0
                  xor          s4, t2, s4
                  rem          t2, ra, s8
                  rem          a1, s0, gp
                  sll          gp, t4, a4
                  slti         a5, t2, 1113
                  or           tp, t1, a4
                  xori         a7, s5, 1113
                  andi         a2, t5, 1577
                  sll          t0, ra, a7
                  mulhsu       t5, a0, s0
                  sltu         tp, s10, t3
                  xor          s7, s9, t0
                  andi         a2, zero, 1178
                  xor          s5, s5, a3
                  add          tp, s7, s2
                  addi         zero, s2, -568
                  nop
                  add          zero, zero, t2
                  divu         s2, s11, a2
                  xori         s2, s8, 804
                  sll          s11, s8, s3
                  andi         a3, gp, 656
                  sltiu        s6, s9, -330
                  slti         t0, a2, 1246
                  sra          a1, s6, zero
                  slli         t5, gp, 25
                  xori         a0, a2, 283
                  sltiu        s6, a4, 689
                  auipc        a1, 937280
                  srli         tp, s8, 3
                  div          a5, a5, t5
                  and          a2, s11, t1
                  mulhu        a6, t0, t3
                  mulhsu       a5, s4, s11
                  mulhu        a5, s7, s4
                  mulhu        s6, t3, t4
                  mulh         ra, s11, t1
                  ori          t5, a3, -762
                  mulh         a5, ra, ra
                  srai         a2, s7, 26
                  xori         sp, s6, 1789
                  mulhu        a0, s11, s8
                  slti         s8, zero, 434
                  sub          a7, s1, a7
                  rem          s7, t3, t0
                  remu         s10, s2, t6
                  addi         t0, gp, 501
                  sra          zero, s2, tp
                  divu         s7, sp, s1
                  xori         s6, t2, -257
                  nop
                  sll          a1, t3, s9
                  mulhu        t6, sp, t3
                  remu         s4, s3, s8
                  sltiu        t4, a2, 1772
                  srl          s6, t6, s5
                  srli         t5, a2, 14
                  srl          s7, a7, tp
                  rem          s0, ra, a7
                  sltu         t6, a7, a5
                  rem          a3, s1, a5
                  mulh         sp, ra, ra
                  sll          t2, sp, s8
                  mulhu        s11, s4, a7
                  mul          a1, a5, a0
                  addi         a0, tp, 876
                  divu         t4, s7, t5
                  rem          s8, a5, a5
                  slli         s11, sp, 29
                  rem          s0, t0, t2
                  and          sp, tp, s5
                  divu         zero, a6, s6
                  add          gp, a1, a3
                  mulh         a2, a7, a1
                  auipc        s8, 530411
                  ori          a3, t5, 1646
                  mulhu        a6, a4, s5
                  mulhu        s10, ra, t3
                  slli         s1, t2, 21
                  remu         s4, s6, a3
                  mulhsu       a6, a0, s4
                  div          t2, s11, tp
                  mulhu        s10, t6, s1
                  andi         a2, t3, 450
                  sltiu        a2, s7, -332
                  sll          a0, t4, a6
                  nop
                  sll          s2, a2, s10
                  srli         a5, s9, 25
                  rem          s1, s8, s11
                  slt          s0, tp, a4
                  mulhsu       a2, t3, s2
                  mulh         gp, s10, s11
                  xori         t4, s8, 1262
                  remu         a3, a1, s11
                  div          a6, s4, s6
                  or           s1, a4, zero
                  sra          s4, ra, a6
                  auipc        a0, 128462
                  divu         a7, s5, a0
                  mulh         s1, s2, t2
                  mulhu        s11, s1, a4
                  andi         s6, s10, 1030
                  ori          t6, t4, 1162
                  divu         t4, sp, zero
                  or           t0, s2, t2
                  auipc        s6, 575706
                  sltiu        tp, s0, 1570
                  addi         t1, sp, -1156
                  divu         s1, s3, s2
                  lui          ra, 879110
                  sub          t5, s8, s9
                  srl          s4, s8, a7
                  mulh         s6, s6, s7
                  sltiu        t5, a0, -1293
                  auipc        sp, 896760
                  sra          zero, t1, s3
                  sra          t1, sp, s7
                  and          a0, t3, a0
                  addi         t5, s9, -2029
                  and          gp, s2, a5
                  divu         t0, t1, s3
                  rem          s10, s5, a7
                  auipc        a0, 380180
                  ori          a2, a2, 1592
                  auipc        sp, 262125
                  ori          s8, t1, 1250
                  sltu         a5, s6, t5
                  slt          s3, s10, gp
                  remu         a2, a3, a2
                  mulh         ra, s9, s8
                  sltu         s5, s6, s9
                  sltu         s1, s10, a3
                  slli         s5, t1, 20
                  or           ra, a0, s9
                  div          a6, t4, t6
                  rem          t4, t6, a3
                  slli         s1, s11, 23
                  slli         sp, zero, 22
                  srli         s11, t2, 4
                  nop
                  lui          a0, 523712
                  xor          t0, ra, t0
                  sra          a2, zero, a2
                  mulhu        t6, s9, a7
                  add          s3, a4, a4
                  srli         s1, sp, 28
                  andi         t6, s2, 848
                  auipc        s4, 683947
                  div          t0, s11, s10
                  remu         s7, s7, s6
                  slti         s6, t2, -716
                  mulh         s2, a0, t3
                  sra          s11, a4, a6
                  div          a0, zero, s9
                  srai         a6, a6, 13
                  sltiu        a1, s1, -857
                  and          tp, s3, t2
                  srai         s4, a1, 23
                  srai         tp, s6, 6
                  slli         a2, s4, 20
                  div          ra, s0, t2
                  andi         t1, s2, -1021
                  slli         s6, tp, 23
                  and          t1, a4, a7
                  sub          s5, s3, s9
                  rem          t5, zero, s3
                  srli         t1, a7, 12
                  or           a3, a7, s2
                  add          ra, t3, t6
                  or           a3, a1, a6
                  sll          a3, a2, s0
                  slli         s3, ra, 30
                  xor          a2, s4, gp
                  slt          s3, t1, a0
                  auipc        a0, 511090
                  mulhu        a0, s9, s8
                  nop
                  sltu         a3, t6, gp
                  xor          t5, t5, a7
                  addi         ra, a6, 1065
                  mulh         ra, t5, s2
                  slt          zero, ra, a4
                  sltu         a2, t6, s4
                  auipc        sp, 882213
                  add          t6, t5, s5
                  ori          s5, ra, -164
                  andi         s10, t5, 1064
                  nop
                  sra          a2, s6, tp
                  slt          sp, a3, tp
                  add          a3, s11, s8
                  sll          t5, s1, s11
                  srai         s5, s3, 4
                  lui          a5, 423852
                  lui          a0, 34035
                  rem          t1, t0, a1
                  nop
                  sub          a2, s11, s1
                  andi         a6, a1, -76
                  srl          a0, t1, a5
                  or           s4, s8, s10
                  slti         a6, s3, -1021
                  sra          s8, s4, a2
                  sltu         s11, a7, tp
                  sltiu        t5, zero, 641
                  sub          s10, s0, s6
                  sltiu        s11, a6, -860
                  slt          s1, a4, s10
                  nop
                  sub          s8, s6, gp
                  mulhsu       tp, s7, s4
                  rem          t6, s4, a3
                  xor          s3, t1, s1
                  rem          t0, t3, s0
                  lui          a2, 315548
                  sll          tp, s7, s11
                  xor          s3, t6, s10
                  lui          tp, 706972
                  srli         s10, t4, 1
                  sltu         a2, a1, a5
                  srai         t2, sp, 23
                  andi         s10, s1, 1487
                  mulh         s7, a1, s5
                  addi         t1, s8, 1742
                  or           a5, t5, t2
                  mulh         s1, t0, s1
                  remu         s5, a2, s10
                  and          tp, t0, tp
                  mulhu        s3, s9, s0
                  sll          s5, a4, s1
                  slli         t1, s11, 18
                  and          s5, s0, a3
                  mulhu        s10, s0, a0
                  mulhu        a2, a2, zero
                  auipc        s7, 105603
                  and          a6, s11, s7
                  lui          t1, 153892
                  ori          s1, s7, -1119
                  or           sp, ra, t2
                  div          tp, t3, s10
                  lui          s3, 165378
                  lui          ra, 330206
                  mul          s4, s3, t2
                  xori         t6, a5, -687
                  srai         s8, t2, 0
                  mul          sp, s5, a2
                  srl          s8, t6, a0
                  sub          s1, a4, a2
                  lui          s2, 619540
                  srai         zero, s3, 27
                  ori          t1, zero, -1891
                  sub          s0, a3, s5
                  div          a1, gp, a7
                  lui          a0, 442362
                  nop
                  mulh         a0, a0, sp
                  ori          s7, a3, 1597
                  rem          s10, s0, s6
                  slt          t4, s2, s9
                  mul          s8, s0, t6
                  and          tp, t0, s2
                  or           sp, ra, s9
                  slt          s11, sp, s3
                  andi         s4, a0, -776
                  sra          s3, ra, tp
                  srl          a0, t0, sp
                  add          s2, a5, t2
                  andi         s6, zero, 232
                  mulh         a2, a5, gp
                  auipc        s1, 204909
                  xori         s5, t3, 370
                  sltu         s2, zero, s1
                  add          s5, t1, a6
                  sub          t2, t2, t5
                  remu         a1, t4, s10
                  lui          t4, 160629
                  mul          gp, s0, t0
                  slti         t0, gp, 621
                  slti         a2, t3, -1519
                  rem          tp, s4, tp
                  srl          a1, t3, a2
                  mulhu        a6, s0, t5
                  mulhu        t6, gp, a0
                  andi         zero, tp, 1628
                  rem          s3, s7, t1
                  nop
                  sub          s1, s8, s11
                  mulhu        a7, ra, a6
                  srli         s7, a1, 25
                  mulh         a3, t6, t4
                  sll          gp, s9, s0
                  sub          s8, t5, a2
                  sltu         s5, t1, t3
                  srai         t5, tp, 27
                  add          s5, s6, s7
                  sltiu        s0, gp, -1886
                  div          s6, a6, s1
                  sll          a5, a3, s0
                  sub          a0, s8, s0
                  divu         s7, s0, a6
                  mulhu        a1, ra, a4
                  sub          s5, s10, t3
                  xori         s2, a7, -1595
                  or           s2, t5, t6
                  sub          a6, gp, s1
                  sltiu        s2, t4, -1005
                  andi         a0, s3, -1039
                  srli         sp, zero, 1
                  mulhu        t4, s8, t2
                  addi         s8, s0, 623
                  nop
                  srai         t6, s5, 22
                  slt          t4, t4, a3
                  rem          t1, s7, ra
                  srl          sp, a1, sp
                  srai         s1, a6, 29
                  mulhu        a6, zero, a0
                  div          t4, t3, s0
                  andi         s5, a2, -841
                  lui          t2, 1026882
                  mul          t1, s8, a5
                  sra          s4, s2, a6
                  xori         a5, t1, 473
                  andi         s11, sp, -853
                  lui          s6, 369712
                  nop
                  ori          zero, s10, -319
                  slli         ra, t4, 20
                  sra          t0, s5, a7
                  sltiu        a7, s7, -1328
                  add          s6, s4, t6
                  or           a1, sp, t4
                  nop
                  andi         tp, s11, 1871
                  slli         s4, a4, 14
                  div          s2, ra, s3
                  mulh         gp, a3, a0
                  ori          t2, t4, 122
                  remu         zero, s4, t5
                  sll          a7, s5, s1
                  ori          s11, t3, 1250
                  xor          a6, s10, gp
                  sub          s5, a5, s2
                  auipc        s0, 612680
                  and          a3, a2, t3
                  ori          s1, zero, 620
                  add          tp, t5, t2
                  slli         sp, a1, 7
                  mulhu        a1, s4, tp
                  mul          s5, zero, t4
                  auipc        tp, 815891
                  addi         a7, s6, 1644
                  sltiu        zero, s10, 941
                  rem          t1, t1, s3
                  xori         t2, gp, 935
                  slli         t5, a6, 8
                  mulh         a3, s8, a1
                  slli         t0, s7, 17
                  mul          t4, s7, s5
                  sltu         tp, s7, t6
                  mulh         t1, a3, sp
                  srli         s10, a6, 30
                  lui          t4, 632465
                  xori         s6, a7, -1426
                  sra          gp, t0, t5
                  mulhsu       tp, a4, s3
                  auipc        a7, 426585
                  rem          a5, s1, t6
                  sltu         a1, a4, s4
                  sll          s10, tp, a3
                  sltu         s11, s5, ra
                  remu         tp, a6, s10
                  slt          t1, a6, t6
                  addi         t5, s8, -2012
                  sll          t4, t3, s10
                  sll          t2, sp, s6
                  sltiu        s8, t5, -1465
                  sltu         a6, zero, t3
                  andi         a5, t0, 195
                  xor          a0, s2, t0
                  sltu         s0, sp, s11
                  or           s6, t3, t3
                  andi         a7, s4, 1435
                  nop
                  and          a0, t3, s5
                  srl          s1, s7, a6
                  remu         zero, a6, t3
                  remu         gp, a6, a0
                  srl          s8, s9, s1
                  slli         a5, ra, 21
                  mul          a7, s8, zero
                  add          t2, a4, s5
                  xori         ra, s11, 797
                  srli         s8, zero, 11
                  slt          s10, a4, t3
                  srai         zero, s0, 26
                  srai         t4, t4, 24
                  and          a6, sp, s9
                  srl          s4, s2, s3
                  sub          a3, t3, t1
                  or           s6, a7, ra
                  slt          a5, s0, a1
                  remu         a7, a0, t3
                  slli         s1, t5, 21
                  andi         t0, t6, 1292
                  mulhsu       tp, s2, s4
                  and          a0, t3, gp
                  srli         s1, t4, 28
                  sll          s1, gp, a6
                  and          s10, t1, t1
                  srai         t0, t5, 1
                  nop
                  mulhsu       t2, gp, tp
                  srli         a2, a2, 0
                  mul          gp, s2, s8
                  srli         s10, gp, 17
                  slt          s3, s0, a6
                  rem          s8, a2, a3
                  mulhsu       s0, a5, zero
                  add          a7, s4, s5
                  mul          ra, a4, s4
                  auipc        s8, 987192
                  mulhsu       s11, s7, a7
                  xor          t1, a1, sp
                  slt          s8, s10, s0
                  div          t4, s0, s5
                  mulh         a6, s0, s9
                  mulhu        zero, s6, t0
                  mul          s7, t1, t2
                  mulhu        sp, a5, s0
                  ori          s6, a0, -608
                  slli         s3, s5, 21
                  srai         a0, a2, 16
                  remu         tp, s11, a6
                  srl          t1, ra, a6
                  xori         a5, sp, -1512
                  auipc        zero, 914758
                  slti         s5, s1, 756
                  mulh         t1, s9, s11
                  slti         s3, s1, 152
                  addi         a5, s3, 726
                  rem          t5, a7, a6
                  srli         s2, gp, 8
                  mul          t1, t2, s8
                  divu         s4, gp, a3
                  divu         t2, a3, a4
                  div          t4, t1, t0
                  andi         a7, t6, 1571
                  add          s7, s6, a2
                  mulhu        s11, t3, s11
                  andi         s5, a6, -126
                  sltiu        t1, a4, -16
                  slt          s10, t0, t2
                  nop
                  srai         t6, s6, 10
                  ori          t1, s4, 1513
                  auipc        a7, 208976
                  srl          a7, s9, t1
                  divu         s2, t3, tp
                  sra          s1, s5, t5
                  divu         a1, t5, s10
                  sub          a6, t1, t5
                  sra          zero, a5, a4
                  xor          s7, a5, t6
                  auipc        a5, 682428
                  sra          s2, a2, s2
                  mulh         t5, t0, s3
                  mul          a3, t4, s2
                  auipc        t0, 99996
                  xor          s5, tp, t1
                  mulhsu       s10, tp, s2
                  or           a7, a5, tp
                  srli         s4, t1, 3
                  xori         s7, t5, 1866
                  lui          a5, 576623
                  sra          t5, gp, tp
                  srli         s1, s8, 20
                  auipc        t4, 390703
                  xor          ra, s9, s7
                  slti         t0, s2, 1550
                  nop
                  xor          a2, t3, t1
                  sub          a3, s2, t2
                  mul          a0, t3, a2
                  sll          a3, tp, a0
                  or           a1, sp, a1
                  mulh         t2, t4, s1
                  xor          zero, tp, a2
                  mulh         s7, s9, t2
                  divu         s8, ra, t5
                  addi         t0, a5, -638
                  slli         s11, t1, 13
                  srl          s10, ra, sp
                  rem          s2, s10, s10
                  sltu         t5, s5, s8
                  and          t4, t4, s3
                  auipc        s8, 824799
                  srai         s1, t6, 24
                  srli         a0, ra, 14
                  slli         s3, t1, 2
                  sll          t6, s8, a4
                  add          tp, a7, s2
                  auipc        s10, 753046
                  mulhu        t1, a5, a4
                  slt          a2, s5, s9
                  divu         t1, a2, s6
                  auipc        a3, 332000
                  xori         s5, s4, 192
                  ori          t4, s2, 197
                  sra          s7, t3, s5
                  sltiu        s2, s7, 1353
                  xor          t5, s7, s9
                  slt          zero, s8, t3
                  slli         a2, a1, 23
                  ori          a3, s9, 763
                  srai         a3, a5, 23
                  xor          t4, t2, s1
                  and          a2, s0, gp
                  mulhu        s1, s11, s8
                  sll          a2, s1, s1
                  lui          t6, 341624
                  div          s7, a7, s5
                  mul          gp, s8, s2
                  div          s8, tp, s3
                  andi         s11, s4, 929
                  andi         t2, s2, 1611
                  and          s1, s1, t5
                  srl          t2, a5, s10
                  add          s0, a3, s7
                  nop
                  or           s2, t4, s5
                  div          t6, t0, s8
                  and          t2, s4, ra
                  add          t4, t0, t4
                  slti         s7, a5, 1928
                  srai         a2, t1, 3
                  sub          s3, t3, a7
                  or           s2, tp, t2
                  xor          t5, t0, a2
                  mulhu        a1, t3, a2
                  mulhu        t5, s0, s7
                  andi         t4, a3, 317
                  srai         s10, s7, 3
                  xori         s2, s6, -473
                  lui          a5, 288098
                  addi         s3, s9, 1675
                  or           tp, gp, a2
                  auipc        s4, 508405
                  mulhu        zero, s11, a2
                  mulhu        s0, s2, a6
                  slli         s6, t0, 14
                  auipc        zero, 961671
                  sra          a2, t5, t1
                  and          a0, t6, a0
                  or           s7, a4, t0
                  slli         zero, s11, 20
                  srai         t6, s0, 4
                  remu         t5, a5, t5
                  ori          s8, s11, 1102
                  xori         s8, t2, -1951
                  sltu         t5, s4, t3
                  ori          s1, s8, 1470
                  sra          s5, s8, s10
                  lui          s10, 1034388
                  sltu         a0, a0, tp
                  div          a5, s3, ra
                  sra          t4, s1, a7
                  sltu         s7, a3, s6
                  div          s8, t3, gp
                  slti         s1, a6, 237
                  nop
                  srli         a1, s3, 0
                  mulhu        a2, sp, a4
                  xori         a5, a6, -666
                  mulhu        s8, gp, s9
                  xor          a1, t2, a4
                  xori         s0, t3, 1413
                  sra          t2, s11, s9
                  slli         s2, zero, 18
                  mulhsu       t4, s1, a2
                  mulhsu       a0, a2, t4
                  remu         s10, sp, gp
                  add          s1, sp, a6
                  sll          s4, s11, s3
                  ori          a5, t0, 1826
                  sub          a7, t0, ra
                  sub          a0, tp, s3
                  add          s3, t0, gp
                  srai         s1, s3, 15
                  sub          s11, t6, a4
                  ori          t6, t0, -1619
                  addi         s2, s9, -1998
                  addi         a6, s9, -1024
                  lui          a0, 855342
                  srli         s0, tp, 2
                  mul          t2, zero, a3
                  andi         s2, a3, -850
                  mulhsu       s8, a0, a3
                  xori         s0, s0, 1314
                  sll          a3, sp, s1
                  rem          a1, a1, a2
                  mulh         t4, a0, s8
                  remu         s3, ra, a3
                  auipc        a5, 183788
                  and          t4, s10, sp
                  slt          s7, s3, t3
                  xor          a7, t6, t4
                  sll          s8, s5, s3
                  lui          t5, 382460
                  slt          gp, t5, t5
                  auipc        t2, 211671
                  mulhu        s5, ra, s1
                  nop
                  slti         s10, s9, -1728
                  rem          a1, s2, s11
                  sll          a5, a7, s4
                  srl          s3, t5, t1
                  slti         s4, tp, 1426
                  and          s5, s5, ra
                  slli         ra, t4, 25
                  xori         a1, s2, -1411
                  auipc        s3, 12898
                  addi         t5, s5, 728
                  or           s7, a3, s4
                  mulhsu       a6, s8, a5
                  rem          t6, s6, a1
                  or           a5, s9, s7
                  xori         t4, s11, -1008
                  sltu         a2, s9, a5
                  sub          s8, s9, a7
                  rem          t0, t1, gp
                  slti         t2, a2, 912
                  mulhu        s0, t1, s2
                  srl          a2, t5, s5
                  srl          t0, a0, s2
                  andi         ra, zero, 1804
                  or           s10, gp, a7
                  slti         a6, a5, -1313
                  remu         a2, s3, a0
                  ori          tp, a1, 238
                  srli         s7, s3, 8
                  auipc        a5, 98434
                  slti         a1, t5, -325
                  sra          gp, tp, t5
                  rem          gp, s7, a4
                  remu         ra, ra, s7
                  or           a2, gp, s4
                  slli         t1, sp, 13
                  divu         t4, s5, t1
                  nop
                  srai         gp, s4, 7
                  nop
                  sltu         s1, s10, s11
                  srai         s8, a1, 21
                  srli         zero, a0, 2
                  sltu         a6, a0, a3
                  auipc        t0, 55316
                  srl          a2, tp, t6
                  sub          ra, t2, s0
                  andi         s0, t6, -156
                  srai         a7, a0, 27
                  add          a0, t6, a2
                  slli         gp, tp, 28
                  sltu         a5, s3, a1
                  srai         s4, t2, 26
                  xori         sp, s11, 1664
                  mul          tp, t5, a6
                  slti         gp, t5, -1191
                  or           ra, t1, tp
                  srai         gp, s3, 10
                  srl          zero, s1, gp
                  div          s4, zero, t0
                  and          sp, a2, s0
                  mul          t6, s8, t0
                  andi         tp, s11, -1923
                  rem          a6, a7, s4
                  srl          s8, gp, a5
                  lui          a0, 237987
                  mulhsu       gp, t2, t6
                  sll          s4, s1, s0
                  slli         s6, a5, 17
                  or           gp, s0, s3
                  sltiu        t2, gp, -899
                  addi         s4, s10, -857
                  srl          s1, t0, s3
                  and          t5, s7, a2
                  sltiu        s10, t5, 1816
                  nop
                  rem          s11, s3, t0
                  rem          s1, sp, tp
                  sltu         t5, a3, s0
                  mulhu        s4, a5, s4
                  srli         a1, t0, 7
                  lui          s7, 487177
                  remu         t6, a4, sp
                  remu         s10, a4, a3
                  sltu         a1, s8, t3
                  andi         s0, zero, 955
                  srli         a6, t1, 20
                  ori          s10, s7, -1060
                  add          ra, s7, s4
                  mulh         a7, s8, s4
                  mulh         s10, t0, s7
                  mul          s2, s1, a2
                  mulhu        s4, tp, t6
                  lui          t6, 455823
                  lui          t2, 82919
                  sltu         s11, a0, a2
                  divu         a1, a4, t5
                  rem          s2, t6, s11
                  slli         s8, s6, 6
                  sltu         s8, t3, a6
                  sub          a3, tp, s6
                  lui          a7, 500402
                  srli         tp, s3, 20
                  nop
                  mulhu        a6, a0, tp
                  xor          s7, s7, s3
                  sltiu        s10, t3, 125
                  rem          t6, a3, a0
                  sltu         a2, a2, s4
                  sub          a7, t2, t0
                  divu         t6, sp, s10
                  srai         t2, a2, 27
                  divu         s6, t5, s11
                  andi         s10, t2, -1726
                  sltu         s6, s1, zero
                  mulhsu       t0, t3, t6
                  xor          t1, s8, s1
                  lui          a0, 58296
                  mulhu        tp, s1, s2
                  and          a5, a3, a3
                  slt          s0, zero, a7
                  sll          a7, t1, s2
                  sll          s7, t3, a3
                  srai         a3, s7, 17
                  nop
                  srai         s8, s0, 17
                  sll          s1, sp, t5
                  ori          t5, s6, 392
                  sll          s2, t1, s10
                  rem          s7, s8, t3
                  mulhu        t2, a4, t2
                  ori          zero, s8, -1161
                  add          a3, t4, s0
                  xori         a3, s0, -1358
                  add          a7, a0, s5
                  slti         a7, s7, -458
                  mul          tp, s0, a0
                  div          a3, s3, s9
                  mulh         a6, s10, s8
                  srl          s5, a6, s4
                  sll          s0, t1, t4
                  auipc        s0, 648191
                  mulh         a3, t3, s7
                  rem          a5, s5, s10
                  slti         s8, a2, 1400
                  sub          s10, a1, t2
                  sra          t1, t6, s10
                  mulhsu       s5, a6, s3
                  and          s11, s8, s1
                  sltiu        t6, t4, -1095
                  sub          a5, a4, gp
                  remu         tp, t0, t1
                  mul          s11, s7, t1
                  rem          a3, a7, s1
                  xor          s8, s11, s11
                  addi         a0, zero, -700
                  srl          s10, sp, t4
                  and          s4, a0, s10
                  andi         a7, s7, -445
                  mul          s0, s9, t3
                  mulhsu       a1, t4, tp
                  and          s5, sp, s9
                  or           s4, t5, s5
                  or           t1, t2, t6
                  mul          s7, a6, s10
                  addi         s4, s8, -649
                  mul          t2, t5, a6
                  ori          s5, a2, 144
                  mulh         s0, a2, gp
                  slt          t2, s5, s7
                  srai         a6, a7, 13
                  nop
                  sll          t5, s2, s2
                  andi         a6, a3, 1982
                  mul          t2, s8, s7
                  rem          t1, s11, a3
                  or           t4, a0, s1
                  add          gp, a6, s0
                  addi         t6, sp, 212
                  sll          a5, s2, t1
                  mulhsu       t6, s10, a3
                  xori         s3, zero, -107
                  slli         s6, s2, 31
                  srl          t4, a7, a5
                  mulhu        ra, t1, t3
                  ori          t4, t5, 1549
                  nop
                  remu         zero, t5, tp
                  or           s4, s10, t2
                  srli         t6, s9, 31
                  slt          sp, s5, s10
                  xor          a0, sp, a0
                  sra          sp, a5, t5
                  or           tp, a1, tp
                  mulh         a7, t3, a3
                  sra          s7, zero, sp
                  sra          ra, tp, a1
                  sra          t5, s0, a0
                  sll          s4, t2, s8
                  div          t0, gp, s10
                  lui          a0, 119865
                  auipc        s11, 526842
                  divu         s1, ra, a2
                  xori         s5, t6, -902
                  mul          s8, t4, a4
                  and          zero, s10, t3
                  andi         s3, t5, 2028
                  divu         zero, a3, t2
                  and          t5, a5, a3
                  andi         a7, s0, 26
                  slti         s7, s7, 647
                  addi         t2, t4, -498
                  xor          t4, s4, t2
                  mulhsu       s0, a0, t2
                  sltu         sp, s6, s2
                  srli         ra, a1, 14
                  sra          s10, s8, s9
                  mulhu        t1, a2, a0
                  sra          a6, gp, a0
                  xori         s10, s1, -1624
                  or           t4, s3, s7
                  remu         a1, tp, t2
                  slt          a6, s3, t5
                  xor          a2, s0, s8
                  sra          s1, a0, ra
                  rem          s5, t6, t0
                  ori          s1, zero, -1447
                  srl          ra, s11, tp
                  slti         zero, s5, -609
                  divu         s3, gp, a0
                  srai         s11, s0, 16
                  divu         gp, t5, s8
                  mul          s0, a3, t4
                  slti         s6, s8, -655
                  srli         t4, a4, 13
                  addi         s2, s10, -1823
                  slti         s8, s6, 1734
                  srli         t6, s10, 30
                  lui          s10, 199919
                  sub          a2, s1, t3
                  srli         t0, s9, 23
                  mulh         s7, s9, s4
                  mul          t5, gp, a0
                  lui          t4, 924186
                  andi         ra, a3, -1177
                  addi         sp, a5, -59
                  andi         tp, t3, 2026
                  xori         a5, a7, 1974
                  mulhsu       tp, t4, t6
                  nop
                  mulhsu       a6, t4, s3
                  and          a5, a7, s10
                  slti         zero, s6, -1049
                  lui          a3, 551476
                  div          s11, a5, gp
                  mulhu        gp, a0, a0
                  sll          a2, s9, s6
                  nop
                  xori         a0, ra, -88
                  mulhsu       a6, tp, t6
                  remu         t1, s10, t1
                  andi         s1, a1, 660
                  srai         a6, a7, 21
                  xor          a3, tp, s3
                  slt          s3, gp, s2
                  rem          t4, sp, a5
                  andi         t4, s10, -1078
                  sub          a1, s8, s5
                  xori         s11, t6, -1197
                  mulhsu       a2, a1, t1
                  sll          s11, a1, s11
                  xor          s4, t3, gp
                  srl          a5, a0, a6
                  srl          s0, a4, s1
                  srai         s4, s4, 11
                  xori         t0, a7, -911
                  sra          s10, gp, a7
                  sll          gp, s0, gp
                  andi         sp, sp, -1093
                  sll          a5, tp, a0
                  divu         t4, zero, t2
                  sltu         t1, s1, ra
                  slli         a7, s8, 0
                  div          s7, t3, a3
                  srl          s4, gp, t5
                  and          a5, s9, t6
                  slli         gp, s6, 11
                  sra          t0, a7, t0
                  auipc        tp, 377102
                  or           a2, t1, s7
                  srli         a3, a4, 3
                  sub          gp, t2, gp
                  div          t0, a2, t4
                  slli         s3, gp, 13
                  xor          s5, s5, s4
                  or           s1, ra, a4
                  ori          s1, s0, -94
                  mulhu        a2, ra, s8
                  sra          t5, s9, s5
                  sltu         ra, t3, t1
                  nop
                  ori          a5, s7, -735
                  sra          ra, a3, a6
                  srli         a0, ra, 17
                  nop
                  auipc        s10, 899979
                  xori         a5, t2, -165
                  xor          s10, a2, s7
                  or           s2, s2, s9
                  srai         a1, s11, 29
                  nop
                  slli         zero, s5, 2
                  xori         gp, t0, 1552
                  addi         gp, s3, -667
                  rem          t1, a3, zero
                  srai         s1, s3, 20
                  srai         t2, sp, 25
                  lui          s4, 537243
                  srli         s7, gp, 9
                  addi         s11, s9, 822
                  mul          s2, a6, t1
                  rem          t1, s5, s1
                  mul          s8, a1, t6
                  add          t2, s7, t5
                  mul          t4, sp, a5
                  xori         t1, s11, -1396
                  or           sp, s2, ra
                  slt          s4, a5, a7
                  and          s6, a5, t6
                  sltu         a3, a1, gp
                  srai         t1, zero, 31
                  lui          s1, 823083
                  slti         a3, a5, 1800
                  slt          t4, s11, a4
                  rem          a3, t3, s1
                  sub          t4, s2, a3
                  xori         tp, s0, 222
                  slli         t1, zero, 27
                  sltiu        a5, s10, 137
                  sll          zero, s6, t5
                  lui          s6, 450114
                  addi         zero, s5, -1880
                  sll          a7, ra, a6
                  or           sp, s8, s0
                  sra          s1, t1, t0
                  divu         a2, s5, s2
                  mul          s5, t5, s6
                  xori         a6, tp, 262
                  mulhu        gp, a2, s0
                  mulhsu       s0, s4, a3
                  sltiu        sp, ra, -374
                  nop
                  srai         s4, t4, 31
                  sll          s11, t5, a4
                  sltiu        s11, a4, -228
                  mulh         a7, a4, tp
                  slli         a5, a6, 17
                  srl          a0, a5, s9
                  slti         ra, s10, 846
                  sll          s11, t1, s10
                  mulh         zero, ra, s7
                  xori         t4, s5, -1301
                  mulh         t1, s11, sp
                  slt          gp, s9, s9
                  mul          s8, a1, s8
                  slti         s7, s10, -1955
                  srl          t5, s4, s5
                  sra          a3, s11, s1
                  div          t6, t6, a4
                  mulhu        t4, t1, a3
                  srai         t1, s5, 1
                  remu         s4, t2, s0
                  andi         a0, a3, 824
                  slti         tp, a2, 697
                  addi         s0, t6, 297
                  mulhu        s4, s5, t4
                  div          ra, a6, s9
                  nop
                  andi         s10, t1, -252
                  mulhsu       s6, s3, a5
                  xori         a3, s1, 1007
                  nop
                  addi         a0, t0, 270
                  add          gp, a3, t6
                  addi         s5, a4, -110
                  div          a1, s0, s4
                  divu         a3, t6, t3
                  sra          s4, zero, s9
                  sltiu        s8, s2, 1125
                  slti         s1, t1, -1869
                  rem          s8, t5, s10
                  sltu         s8, s2, a5
                  and          s7, a0, s3
                  divu         s8, s9, a1
                  mulhsu       sp, s2, s0
                  srli         tp, a2, 25
                  remu         a5, s11, t5
                  or           ra, s3, a6
                  sltu         a3, t5, t0
                  srl          t0, s7, a4
                  sll          t4, t1, a4
                  rem          t2, t6, s9
                  auipc        t0, 930994
                  xor          s5, tp, s5
                  andi         s1, tp, -1663
                  srai         s1, s9, 21
                  addi         a1, s7, -104
                  and          t4, tp, s11
                  mul          s11, t6, t5
                  rem          s0, s2, s0
                  lui          s1, 548833
                  divu         s8, s4, s4
                  srai         a1, a7, 20
                  auipc        s0, 743722
                  sub          zero, tp, t0
                  slt          s8, s1, a6
                  andi         s4, a7, 1219
                  sltiu        a6, gp, 989
                  sll          a1, gp, t1
                  nop
                  rem          a6, tp, gp
                  sub          s6, gp, s10
                  rem          s0, zero, s5
                  and          s5, sp, zero
                  mul          ra, s6, s2
                  slti         a3, a6, -985
                  remu         ra, a1, s1
                  add          t2, t4, t3
                  div          s3, t2, s7
                  mulhu        s11, ra, s5
                  xor          s10, s6, s10
                  slli         t5, gp, 20
                  srl          zero, s2, t5
                  slt          a2, t5, t6
                  add          t0, a0, t5
                  add          t6, s9, t3
                  add          s7, ra, t1
                  srl          s1, s7, s6
                  mulhu        s0, tp, a1
                  lui          t4, 429192
                  mul          a5, a3, s8
                  nop
                  rem          t1, s4, s2
                  slt          s11, a2, t0
                  remu         s8, ra, a4
                  slti         a5, s0, -1737
                  xor          s0, gp, s2
                  mulhu        t6, s0, t3
                  andi         a0, a3, 1301
                  slli         t1, gp, 2
                  sltiu        t0, s5, -862
                  add          s2, s2, gp
                  nop
                  srai         a2, t4, 11
                  mulhu        t1, zero, ra
                  xori         t0, s0, -609
                  remu         s2, gp, s3
                  lui          s4, 629015
                  remu         t2, s2, s10
                  mulhsu       s7, s3, a1
                  mulh         a2, s10, gp
                  nop
                  andi         a3, a0, -1885
                  andi         zero, a4, -555
                  sltiu        s8, a2, -899
                  sltiu        t5, s3, 459
                  xor          s2, s8, zero
                  div          t5, s10, s10
                  mulh         s0, s7, a2
                  mul          s5, s2, t2
                  add          t5, zero, t5
                  remu         s8, s4, s3
                  nop
                  sra          s11, t5, s4
                  sltu         a2, t5, s8
                  mulhsu       s7, a4, s8
                  remu         a3, ra, s4
                  xori         a7, s10, -685
                  xor          s1, a0, zero
                  lui          a2, 843055
                  srl          a1, a3, tp
                  mul          a1, s3, s10
                  lui          a0, 738990
                  ori          gp, a6, 4
                  mulh         s11, a4, t3
                  ori          s4, tp, 515
                  slti         gp, a7, 1013
                  srl          a2, a1, t2
                  sra          t4, s0, s9
                  nop
                  sub          s2, a0, zero
                  sll          a1, s11, t4
                  srli         s10, s2, 2
                  add          s0, a6, a6
                  mulhsu       t2, a3, s9
                  mulhu        t2, a3, s11
                  mul          s11, s8, t3
                  or           s8, tp, t6
                  sltiu        a3, a4, 217
                  sll          t6, s6, s9
                  slli         a0, s1, 31
                  auipc        ra, 754746
                  sltu         t4, tp, s7
                  slt          tp, sp, s6
                  auipc        s4, 4312
                  andi         a2, t2, -355
                  xori         zero, ra, 1173
                  srli         zero, a6, 23
                  andi         sp, ra, 1721
                  div          s11, t2, a7
                  sltiu        a5, ra, -592
                  div          a6, t3, tp
                  mulhsu       a2, tp, s6
                  div          s11, a3, t3
                  and          t6, ra, tp
                  xori         a0, s1, -1215
                  or           s4, t3, s9
                  xor          s5, tp, s9
                  addi         a2, s4, -1732
                  divu         sp, s8, t3
                  andi         t4, a3, 324
                  divu         ra, a7, a0
                  slt          a3, a4, gp
                  xor          a5, tp, zero
                  mulh         a5, s1, s11
                  andi         s5, ra, 372
                  sra          t4, a7, a4
                  divu         s3, t1, t4
                  lui          t5, 13989
                  xori         a5, t2, 1960
                  or           t5, tp, a7
                  sll          t1, s9, t4
                  andi         s3, a6, -753
                  slli         s7, s1, 8
                  slti         gp, s7, -1788
                  mulhsu       t2, s10, s10
                  srli         ra, t6, 1
                  srl          t0, t3, s1
                  sll          tp, a3, t3
                  mul          s7, t5, s9
                  slti         s5, sp, -1669
                  slli         sp, t6, 23
                  nop
                  sra          a0, a3, t6
                  and          t5, a5, s11
                  div          s7, t2, s0
                  mulhsu       s1, s9, a7
                  xor          t4, a3, t5
                  nop
                  srli         a3, s9, 18
                  add          t4, ra, s5
                  sltu         s8, s1, a3
                  sll          a2, s0, sp
                  lui          t0, 1028762
                  or           a3, s1, ra
                  sltu         t2, t0, s5
                  srli         s8, zero, 31
                  ori          s7, s4, -500
                  mul          zero, s11, a4
                  mulh         s0, t6, gp
                  mulh         a3, s10, s2
                  add          a0, s4, s5
                  sra          s4, tp, a1
                  srli         a6, t0, 19
                  sra          a3, s4, tp
                  srl          t0, s2, t1
                  add          s3, a4, a0
                  sub          gp, a6, t4
                  and          t2, t5, a2
                  xori         s4, s11, 801
                  srl          sp, s3, ra
                  auipc        t6, 607495
                  mulhsu       a7, a1, sp
                  srli         sp, t5, 0
                  xor          t0, s5, a7
                  sltiu        a2, gp, -4
                  sltu         s4, t5, t5
                  mulh         t2, gp, a7
                  div          s2, s4, s3
                  slli         s5, a3, 11
                  slti         a1, s10, -430
                  sra          s5, zero, s3
                  mulhu        a1, a7, tp
                  sltu         s7, a4, s8
                  addi         t2, t4, -1009
                  srli         a0, a4, 16
                  divu         tp, s11, a3
                  srli         tp, s5, 16
                  rem          a2, t5, s6
                  ori          s1, sp, -172
                  add          t4, a5, s3
                  andi         s7, s0, 620
                  sltiu        s8, a2, 1469
                  sub          s4, a6, s6
                  mulhu        t6, tp, s10
                  and          s4, gp, a4
                  xor          a2, a5, s7
                  sra          s3, t6, s8
                  mulhu        s6, tp, s9
                  add          tp, a6, a4
                  slt          t6, t6, a6
                  srli         s4, ra, 18
                  ori          t2, gp, 1380
                  srl          a1, t4, t5
                  sra          s11, a6, sp
                  addi         a1, t4, -1994
                  sra          gp, a4, t2
                  ori          t0, t1, 473
                  auipc        ra, 169733
                  slt          s1, sp, s8
                  srai         s2, a6, 14
                  andi         s1, a4, -935
                  sltu         a2, t1, s9
                  sltu         s8, s1, zero
                  mul          s5, gp, s8
                  slt          s4, s6, s7
                  auipc        tp, 469107
                  sll          a7, s0, s8
                  srai         t2, s7, 29
                  sub          t4, t5, gp
                  add          t1, s2, t3
                  slti         ra, a0, -149
                  mulh         t6, t3, t5
                  addi         gp, s0, 1629
                  sltu         a3, t4, a7
                  auipc        t2, 352293
                  srli         a5, t1, 3
                  sltiu        s3, s9, -1942
                  or           a0, s6, s5
                  xori         t5, t0, -1601
                  or           zero, t4, t2
                  andi         s7, a2, -1595
                  xori         s6, a3, 2012
                  sll          t5, gp, sp
                  slli         tp, t4, 2
                  remu         t4, s8, s1
                  srli         s2, s2, 25
                  andi         s10, a2, -1488
                  srl          a7, t2, a2
                  ori          a3, s1, 149
                  mulhu        a6, s10, t6
                  ori          s7, gp, 704
                  slt          t4, s8, gp
                  xor          s6, t3, zero
                  srai         t5, a4, 31
                  auipc        a5, 277665
                  mulhu        ra, gp, s4
                  slti         a5, s5, -570
                  lui          zero, 6437
                  xor          a1, t6, s2
                  mul          a1, a1, a3
                  sll          t0, s3, s9
                  rem          sp, s11, a5
                  or           s2, a2, zero
                  sltiu        a2, a4, 1513
                  srai         tp, s5, 13
                  ori          a0, s2, 1322
                  sra          a5, a2, a6
                  andi         a0, s3, 310
                  sltu         s0, a7, a4
                  mul          s8, a3, s1
                  sra          s2, ra, s5
                  mulh         a7, t1, a5
                  xor          t0, tp, s2
                  div          a0, a6, s10
                  lui          a0, 1026481
                  divu         sp, s7, t6
                  sra          s7, s8, s0
                  divu         t5, a7, a5
                  sra          s6, t3, t1
                  or           sp, t2, t1
                  add          s3, a6, gp
                  nop
                  srai         a7, s2, 1
                  andi         t0, a6, 1838
                  nop
                  divu         a2, s11, t3
                  and          a2, t6, s10
                  sub          s4, a6, s6
                  mulh         a2, s0, s5
                  mulh         sp, sp, a1
                  rem          a0, a1, a1
                  slt          s6, t6, s10
                  mulhsu       ra, zero, a0
                  nop
                  andi         s0, s11, -462
                  auipc        a7, 703210
                  addi         t1, s7, -1929
                  remu         s2, t5, s6
                  lui          zero, 875143
                  add          a2, t3, s9
                  auipc        s11, 269160
                  xori         t6, s11, -502
                  add          s4, a1, a5
                  remu         a5, s11, s10
                  lui          s6, 320305
                  srli         t0, tp, 11
                  xor          a0, s10, s4
                  slli         a2, t4, 24
                  sll          tp, t4, t5
                  mulhu        ra, t4, a0
                  xor          s1, tp, s7
                  xori         a6, t4, 1317
                  slt          a5, a2, s9
                  slli         a7, t3, 26
                  lui          s6, 85837
                  xor          s4, sp, s0
                  lui          a1, 955989
                  rem          s1, ra, a1
                  ori          s4, s9, 1116
                  add          a5, t0, gp
                  slli         t4, sp, 0
                  addi         a7, s9, -48
                  rem          t0, a4, s4
                  sra          s4, t5, a4
                  div          s4, sp, t1
                  slti         s2, s3, -1454
                  mul          s5, s0, t2
                  mulhu        a2, s2, s3
                  auipc        s10, 595369
                  slli         a7, s6, 0
                  sra          s8, a6, s0
                  sra          a2, s8, t6
                  nop
                  nop
                  or           s11, t6, t4
                  remu         t1, t1, s8
                  mulh         s0, t4, s2
                  slt          s4, ra, a6
                  ori          s1, a0, -1120
                  add          s10, a3, a7
                  andi         s11, a0, -922
                  srli         s11, s0, 31
                  addi         a6, ra, 123
                  xor          a2, s5, a3
                  add          zero, a2, sp
                  sra          a6, t1, s6
                  sll          zero, s2, zero
                  srai         s3, sp, 8
                  sub          tp, zero, a4
                  addi         tp, t6, 541
                  andi         a1, a3, -469
                  sltu         s7, t0, a5
                  remu         s1, t3, s0
                  lui          s6, 725444
                  sltu         zero, s10, s11
                  sltiu        a2, t5, -101
                  addi         a3, gp, 165
                  rem          a5, s4, ra
                  srli         t1, ra, 30
                  sra          t4, a0, s11
                  mulh         s5, a1, t3
                  remu         a6, s7, a1
                  remu         s5, a1, s11
                  mulhsu       a7, zero, a7
                  sub          t1, s5, s1
                  addi         t1, t3, -989
                  mul          a2, a1, s0
                  remu         gp, ra, a1
                  divu         gp, a0, tp
                  slt          a1, s9, tp
                  srl          s5, t1, t6
                  rem          tp, s11, s10
                  add          tp, t4, s3
                  rem          zero, t5, t6
                  sltu         a1, t5, s5
                  remu         ra, a4, gp
                  auipc        zero, 633882
                  auipc        a6, 667088
                  mulhsu       a2, sp, s3
                  mulhsu       s1, t0, a4
                  addi         t4, t3, 145
                  mulh         s7, sp, s5
                  slli         a3, t0, 25
                  andi         t0, zero, -869
                  sltu         a6, s7, a5
                  slti         a5, t3, 1885
                  auipc        sp, 996854
                  lui          s1, 586093
                  remu         t4, t3, a7
                  divu         a0, zero, s4
                  mulhu        s1, a2, zero
                  sub          a3, a4, a6
                  divu         a6, a3, s11
                  sltu         s7, s4, t1
                  srli         ra, a6, 25
                  srl          t1, a7, s0
                  ori          s4, t6, 1053
                  slli         s8, t4, 4
                  and          a2, a7, zero
                  slti         s5, s4, 886
                  mul          a6, a2, a7
                  srli         t4, ra, 2
                  mulh         a6, s7, s10
                  add          s7, t2, sp
                  slti         ra, tp, 6
                  sll          a7, t5, a5
                  xor          s5, t0, a1
                  add          s10, zero, s3
                  xor          s4, t6, gp
                  auipc        a0, 462847
                  sltiu        sp, a1, -1560
                  mul          a0, t3, a5
                  sltu         a7, a6, a0
                  sltiu        a3, gp, -1617
                  div          a0, a4, ra
                  srli         s8, s0, 19
                  mul          s4, a1, s0
                  sltu         s4, t5, a6
                  auipc        s5, 616215
                  add          a7, a2, a7
                  mulh         tp, tp, t0
                  srli         t4, t1, 26
                  sra          ra, s8, s3
                  mul          s7, s9, a4
                  mulhu        a6, s7, s5
                  srai         sp, zero, 2
                  divu         gp, a7, a6
                  xor          s10, t6, s10
                  addi         tp, t1, -1892
                  sltu         s8, a2, s7
                  slt          a1, a0, s5
                  mulhsu       ra, s2, t0
                  mulh         s0, a6, tp
                  srl          a0, a3, tp
                  sub          sp, ra, s4
                  srli         t6, t3, 7
                  divu         s7, t5, ra
                  or           s4, a4, t0
                  srli         a7, a0, 11
                  sra          s11, a6, t3
                  srli         s6, t3, 27
                  ori          ra, t5, -97
                  xor          s3, s4, t1
                  lui          s3, 907779
                  andi         s5, t4, -1631
                  addi         t0, t6, -202
                  mul          s7, t3, s4
                  add          t5, t0, s5
                  slli         a0, sp, 2
                  addi         sp, a6, 1485
                  srai         sp, s3, 14
                  ori          a6, t3, -1173
                  mulhsu       t5, s10, s9
                  xori         s1, a7, -1873
                  sltu         sp, t2, s4
                  mulh         s10, a3, tp
                  auipc        t5, 565495
                  divu         t4, s10, a4
                  addi         ra, s2, -829
                  xor          a2, a5, a1
                  mul          ra, s0, s3
                  mulhsu       s7, s8, a2
                  divu         a2, s11, s9
                  rem          a3, a7, t1
                  andi         s6, s10, 1258
                  mulh         t0, t0, s1
                  sltiu        s10, s2, -859
                  remu         a2, gp, a4
                  sub          ra, t4, t5
                  auipc        t6, 283300
                  ori          t0, a7, 945
                  addi         s4, s10, -944
                  mulhsu       a3, s7, s2
                  slti         a5, a1, -474
                  lui          t6, 627658
                  xor          a5, s0, s10
                  sub          t4, t2, s10
                  srai         s8, a2, 15
                  xor          zero, s5, t2
                  slt          t5, t6, zero
                  mulh         a2, s5, zero
                  ori          a1, t1, 13
                  srl          gp, a2, sp
                  srl          a7, s7, s11
                  mulh         s11, s8, a0
                  mulhsu       tp, t0, s6
                  nop
                  and          t4, s4, t2
                  slt          a0, zero, s0
                  ori          s10, s2, -2034
                  sltiu        s5, t4, 432
                  auipc        s3, 768125
                  or           a7, a1, s4
                  andi         s7, s10, 1920
                  ori          a5, t5, 1424
                  mulh         tp, tp, t0
                  srl          a5, s0, s3
                  sra          tp, a3, t6
                  mul          a5, t5, t1
                  auipc        tp, 105036
                  sll          s2, s0, a1
                  sub          a2, s9, s4
                  addi         a2, a3, -1047
                  srai         zero, a1, 8
                  divu         gp, s3, s9
                  divu         ra, t3, t6
                  sra          a2, sp, a1
                  sltiu        s2, a1, -1741
                  srli         tp, t5, 24
                  rem          s3, a2, a0
                  and          s11, a1, s3
                  sub          a2, zero, a7
                  sll          a6, t1, s8
                  sub          s5, t3, a5
                  sra          s10, a0, t4
                  divu         s7, s9, s10
                  sltiu        a7, t5, 1336
                  and          tp, s8, t4
                  sub          tp, sp, s7
                  rem          t1, a2, s0
                  srli         t2, a1, 13
                  mul          s10, a4, s2
                  sll          ra, a7, s10
                  slli         t5, a7, 22
                  rem          a2, s9, t6
                  ori          t6, s1, 736
                  auipc        s0, 336856
                  srai         s11, a7, 20
                  srai         tp, t2, 7
                  rem          t4, s0, s4
                  mulh         s1, s5, a7
                  srl          a7, s3, ra
                  remu         a5, s9, t0
                  mulhsu       s3, tp, a0
                  xor          a5, a5, t3
                  mulhsu       s8, s2, s5
                  slli         t4, s4, 0
                  lui          s10, 612200
                  mul          a5, t3, t1
                  srli         a1, a6, 19
                  nop
                  sll          s10, s1, a3
                  and          s3, s3, s6
                  slti         ra, a2, 725
                  sll          a6, s2, s8
                  add          t5, s11, s2
                  lui          t4, 742489
                  lui          s0, 851198
                  mulh         sp, s10, t4
                  mulhu        a5, s2, s5
                  mulhu        t1, a2, a5
                  sll          t1, s0, s2
                  srli         s8, gp, 24
                  sll          s6, a1, t1
                  auipc        t0, 394791
                  rem          a0, s9, a2
                  mulh         zero, s4, s4
                  sub          t0, a1, zero
                  auipc        s3, 311103
                  xori         zero, gp, 1544
                  andi         t5, s1, 1776
                  auipc        a1, 980532
                  sltu         s7, s3, t6
                  slt          a7, t1, a4
                  andi         sp, t2, 762
                  addi         zero, a5, 1427
                  and          zero, zero, s5
                  slt          t2, t2, s9
                  xori         s6, s4, -792
                  and          a5, ra, s5
                  mulhsu       s8, a4, s8
                  add          a3, s11, a5
                  mul          s3, s4, s0
                  remu         s4, t2, a2
                  srai         sp, a2, 6
                  sltiu        t0, gp, -1862
                  sll          sp, s8, s5
                  and          t1, a4, t2
                  mulhu        a7, s1, s9
                  mulhsu       tp, s6, s5
                  mulhsu       a7, t1, s8
                  div          a0, a6, zero
                  slt          zero, a4, s10
                  add          t6, s7, s5
                  remu         t5, ra, t6
                  slt          t0, a6, s3
                  mulhu        s8, s5, t1
                  mul          t0, gp, a4
                  addi         t6, a2, -1460
                  sub          a7, s8, zero
                  ori          t5, sp, -1185
                  add          s1, t3, zero
                  slt          s2, zero, t0
                  rem          zero, s7, s5
                  sra          a7, s4, s11
                  mulh         s7, a7, s11
                  srli         s2, a7, 31
                  andi         s2, s6, -174
                  div          a0, t2, a3
                  sub          s3, s0, a4
                  remu         a2, tp, a3
                  sll          s4, a2, t1
                  ori          a5, s10, -1097
                  ori          s6, a0, -1165
                  rem          t6, a0, t1
                  srl          s3, t3, t6
                  and          gp, a4, a6
                  andi         ra, s6, 1113
                  div          sp, t4, s9
                  sub          sp, t3, a3
                  ori          a2, s7, -731
                  srli         s5, ra, 0
                  mul          s8, s7, t4
                  nop
                  add          s6, s2, a1
                  rem          t1, a0, zero
                  andi         s4, a7, 1012
                  divu         s1, t4, sp
                  slt          t5, s2, s5
                  mul          ra, s3, a7
                  div          s8, s4, tp
                  sub          sp, a4, sp
                  or           a5, t5, s9
                  srli         s4, a7, 6
                  sll          s3, s5, sp
                  mul          s8, a1, t6
                  divu         sp, ra, s7
                  xori         s11, s1, -947
                  srl          a6, s11, s1
                  addi         sp, t0, 64
                  rem          a1, s2, a6
                  srai         tp, a0, 23
                  sll          s10, s11, s0
                  addi         s7, ra, -572
                  auipc        a2, 902701
                  and          a7, a7, t5
                  and          t5, s5, t1
                  sub          a3, a0, s8
                  mulhu        a5, t0, zero
                  xor          t5, t6, a1
                  mulhu        s7, s4, gp
                  lui          a2, 912525
                  xori         s7, t4, -1527
                  or           a7, s8, t0
                  mulhu        t4, s11, t2
                  sltiu        t5, a2, -289
                  and          s8, t4, s8
                  slti         t1, s5, -515
                  nop
                  sub          a0, s6, s11
                  addi         s6, a1, 1672
                  nop
                  srli         ra, a2, 14
                  xor          a1, s8, s5
                  xori         a7, sp, -991
                  slli         s0, a3, 14
                  mulhsu       s3, s11, s8
                  nop
                  sltiu        t4, s4, 1699
                  slti         tp, s10, -104
                  div          s4, a0, zero
                  remu         a5, a6, sp
                  lui          a5, 810694
                  srli         s5, tp, 22
                  mulhsu       s1, s9, s3
                  lui          s11, 911430
                  sltu         t1, a5, gp
                  srl          s5, s2, a4
                  mul          ra, a7, t5
                  slt          ra, t2, a6
                  div          a3, sp, tp
                  auipc        zero, 502643
                  ori          a3, t0, 528
                  srai         s3, zero, 29
                  remu         s6, t3, s5
                  slt          s10, a0, t2
                  slli         s11, a7, 5
                  lui          s3, 365464
                  auipc        t0, 446841
                  mulhsu       ra, zero, s11
                  or           t1, a3, a3
                  sll          a0, a7, s11
                  sll          a2, s4, t2
                  and          a1, s5, t5
                  srai         a2, tp, 2
                  slli         s1, s6, 27
                  mulhsu       gp, s2, s7
                  sra          a0, a6, a1
                  and          a7, t2, t2
                  mul          a7, a6, s2
                  sub          s2, sp, s11
                  divu         a2, s4, a7
                  remu         t2, a7, a7
                  sltiu        a0, s7, 1216
                  sra          s4, zero, t5
                  rem          a2, t1, s0
                  addi         a3, s3, -2006
                  sub          s1, s6, t6
                  ori          zero, a7, 455
                  ori          zero, a7, 1924
                  srai         s1, a3, 6
                  mul          s2, s4, gp
                  mul          s10, t0, t1
                  mulhu        t6, s3, s11
                  divu         zero, s7, gp
                  remu         a0, s4, s2
                  sll          a5, a3, s5
                  xor          s1, s8, a1
                  srai         s11, s9, 30
                  slti         t0, a6, -957
                  or           s11, a2, a5
                  addi         s1, t1, 1288
                  mul          t4, s8, s10
                  mulhsu       s8, zero, zero
                  and          s11, t6, s6
                  srli         a7, s10, 10
                  sub          gp, a6, a4
                  sra          s0, s3, s8
                  mulhu        a0, s6, a6
                  xori         t0, a2, 1592
                  xori         a7, s9, -953
                  mulhu        a3, s3, s5
                  auipc        zero, 673096
                  div          s1, ra, s2
                  slti         a0, t0, -243
                  div          zero, a7, s2
                  or           sp, t1, s1
                  rem          t0, s1, a1
                  addi         s3, s7, -1210
                  or           a3, t6, t0
                  slt          a2, gp, a2
                  nop
                  sltiu        ra, zero, 623
                  srl          a1, sp, a4
                  remu         s8, t5, t2
                  or           s10, t6, s0
                  sra          s5, a3, sp
                  xori         s11, a4, -907
                  or           t1, t1, a7
                  sltiu        a0, s6, 1751
                  andi         zero, t6, -1265
                  xor          s8, t1, a7
                  mulh         a0, s11, tp
                  remu         t5, s10, a5
                  andi         t2, t5, -900
                  div          a3, t3, t2
                  rem          s0, t2, ra
                  sltu         s4, a2, s1
                  slti         gp, a2, -962
                  nop
                  slli         tp, s11, 18
                  mulh         t6, a5, t5
                  lui          sp, 895547
                  xor          a7, a1, t0
                  addi         a7, s6, 547
                  ori          s0, a5, -1545
                  mulh         zero, t6, t3
                  nop
                  sltu         t1, t0, sp
                  sub          a2, s4, a3
                  nop
                  addi         s7, a2, 979
                  sltu         t4, t3, a3
                  or           a7, t0, s0
                  div          a2, t1, sp
                  sub          t2, t6, s7
                  andi         s11, a1, 210
                  mul          a2, zero, s0
                  add          a7, t5, s10
                  srai         a5, s2, 11
                  sltiu        gp, s8, -1774
                  auipc        s5, 836967
                  slli         s1, a3, 23
                  sra          a3, gp, s4
                  mulhsu       t5, s3, zero
                  sub          gp, s1, t2
                  divu         a3, t5, a2
                  srai         ra, ra, 16
                  mulh         zero, t4, a4
                  add          s7, a3, zero
                  add          s2, s1, a4
                  mulh         s6, t2, gp
                  nop
                  div          t2, a5, tp
                  addi         s7, t2, -2023
                  mulh         a3, s10, s10
                  mulh         s11, t6, s8
                  addi         s11, tp, -1660
                  divu         s8, ra, t2
                  divu         zero, t0, t0
                  srai         a5, t1, 11
                  xori         s5, a4, 937
                  rem          sp, a4, t3
                  srli         a6, s1, 15
                  sltu         s5, a5, t3
                  addi         a7, tp, 566
                  slt          a7, t3, gp
                  sll          t2, a0, s10
                  mul          s0, s1, a6
                  divu         a5, gp, s11
                  nop
                  slti         t1, s3, -1841
                  ori          sp, a5, 1727
                  xor          zero, s11, t5
                  andi         s7, a6, 1454
                  xori         a6, t5, -2038
                  and          t2, s8, s9
                  ori          t1, t6, -1355
                  xor          t4, t1, a1
                  mul          gp, s7, gp
                  srli         s5, s11, 1
                  mulhu        a1, s3, t1
                  mulhu        s8, sp, sp
                  sra          a2, t3, a3
                  slt          a7, s7, s11
                  sltiu        s4, s9, 1085
                  nop
                  xor          s4, ra, t5
                  srli         s4, s8, 6
                  ori          tp, t5, -493
                  mul          zero, s6, a6
                  xori         a7, s4, -996
                  sll          s3, s2, ra
                  slti         a1, t6, -672
                  add          t4, a5, a5
                  srli         s7, t0, 12
                  and          zero, a7, a5
                  and          a3, sp, gp
                  mulhu        s3, s1, s1
                  sub          s8, s1, t1
                  auipc        s10, 859505
                  mulhu        zero, t2, t5
                  div          s3, t5, tp
                  lui          t0, 447597
                  sltu         t5, s4, s6
                  slti         sp, s8, -1270
                  and          a0, a5, t3
                  auipc        a1, 753465
                  srai         tp, s8, 14
                  mulhu        t6, s5, t6
                  mulhsu       t0, s8, s6
                  div          zero, gp, a2
                  srai         a6, s6, 6
                  xor          a1, ra, s8
                  slti         t1, s11, -1547
                  lui          s5, 779458
                  sra          ra, a6, s2
                  rem          a0, t6, t3
                  ori          t2, t4, -1838
                  addi         s4, s4, 4
                  remu         a1, t1, t4
                  ori          zero, a1, 48
                  sltiu        a3, sp, -808
                  rem          t4, s3, t3
                  div          s2, gp, t5
                  ori          a0, s4, -1720
                  or           s3, sp, s2
                  xor          a2, sp, s3
                  add          s4, sp, sp
                  nop
                  srai         s11, gp, 27
                  slti         t1, s6, 1738
                  sltu         a0, t2, s1
                  mulhu        sp, t5, zero
                  mulhu        s3, zero, s4
                  add          a6, a6, s10
                  rem          a6, tp, s1
                  srai         s11, t1, 6
                  slli         s4, t1, 3
                  sra          ra, s0, t4
                  lui          t1, 1005193
                  srai         ra, t2, 26
                  sltiu        s10, a2, -1132
                  slli         a2, a1, 18
                  or           s8, s11, sp
                  slli         s3, tp, 24
                  lui          t5, 991307
                  slli         s8, sp, 24
                  divu         a0, a7, s0
                  mulhu        t6, ra, a7
                  srl          s6, t5, s4
                  mul          s11, t3, s0
                  srl          t2, s6, ra
                  sll          s11, s1, t6
                  srl          s4, s4, ra
                  rem          s8, a7, a4
                  mulh         t0, a7, s5
                  mulhu        sp, s9, zero
                  andi         s11, zero, 397
                  nop
                  slti         a7, a7, -417
                  add          a1, s6, s9
                  sltiu        s5, s3, 1327
                  sub          s1, t0, s1
                  sub          t2, s11, s9
                  xori         a0, s8, -91
                  andi         s3, s7, -901
                  div          s4, s5, t6
                  slt          a1, s2, a1
                  sll          s10, gp, s9
                  slt          a5, zero, t5
                  lui          zero, 625525
                  andi         a1, ra, 1570
                  sll          s2, zero, a2
                  div          s5, s1, t1
                  slli         s11, tp, 11
                  mulh         s4, t6, s4
                  and          t6, ra, s0
                  ori          a2, t6, -1283
                  sltiu        t6, a7, -1451
                  rem          s0, s3, s0
                  rem          zero, s2, s7
                  lui          t4, 246574
                  slti         s0, s4, -1019
                  xori         t2, s1, -1990
                  srl          t0, s1, t6
                  sltiu        sp, s3, -1204
                  addi         zero, a5, -765
                  mul          s6, s1, t4
                  sltu         t4, t0, s6
                  slti         a7, tp, 1837
                  divu         a7, ra, a6
                  or           s7, tp, a2
                  sltu         a5, tp, t6
                  ori          sp, s2, -1324
                  add          s4, a2, s0
                  sra          t1, s3, zero
                  auipc        t0, 97814
                  nop
                  add          s1, t3, s10
                  mulhu        t2, a1, t5
                  srli         s8, s0, 10
                  lui          t6, 3884
                  sub          t5, s3, a3
                  sltiu        t4, sp, -285
                  sltiu        s5, tp, -715
                  sltiu        s5, s0, -892
                  nop
                  sltu         a2, s10, a2
                  xori         s2, t2, -980
                  slli         a1, t5, 6
                  sll          t6, a0, tp
                  slti         tp, a1, -359
                  or           s4, zero, a3
                  sll          s6, s9, a3
                  mulh         s6, tp, t1
                  andi         tp, s4, 1410
                  srl          a7, a0, a3
                  srli         t4, a0, 7
                  divu         tp, s3, t4
                  rem          ra, zero, s6
                  nop
                  sra          s10, s10, s9
                  andi         sp, a0, -502
                  add          s7, t6, s8
                  sub          s10, a2, t3
                  div          a3, s6, zero
                  sll          s11, t5, a0
                  addi         a1, t6, -1133
                  mul          a3, t1, s9
                  lui          s4, 277056
                  lui          s7, 471516
                  lui          t2, 616560
                  srai         s11, a6, 28
                  nop
                  srli         s8, gp, 25
                  addi         a7, tp, 1119
                  sra          a1, t2, s7
                  or           ra, a0, t6
                  mulh         t0, s5, t0
                  sll          s8, a6, a2
                  rem          t6, s8, s11
                  lui          s3, 954037
                  xori         tp, a7, 424
                  srli         tp, t4, 13
                  slli         a7, t2, 5
                  ori          zero, s0, -1669
                  slt          s3, s7, s7
                  sll          s3, s11, t0
                  ori          t0, s7, 1177
                  addi         ra, a5, 1182
                  sltiu        a7, s1, -1104
                  ori          t6, gp, -960
                  nop
                  xori         s1, a7, 524
                  and          a2, s9, s6
                  lui          s8, 778060
                  sra          t1, gp, t2
                  slt          gp, a4, s9
                  slli         gp, a3, 12
                  divu         t4, s5, t4
                  addi         a0, a4, -1205
                  ori          s1, s3, -219
                  sltiu        s7, s6, 1172
                  lui          tp, 695335
                  andi         s6, s6, -153
                  or           a5, t1, s3
                  slli         a0, s1, 27
                  srl          t4, t2, t2
                  sll          t1, s9, s9
                  lui          s5, 190995
                  addi         a7, s10, -620
                  mul          t2, t6, a6
                  div          a0, t3, gp
                  andi         tp, a0, -790
                  mulhu        s5, s9, t2
                  ori          s10, t4, 1423
                  sra          zero, a5, s11
                  divu         a5, a4, t5
                  nop
                  or           a0, a2, t6
                  andi         t1, a2, 183
                  auipc        gp, 365519
                  sltiu        t5, s0, 17
                  sltu         s10, gp, t2
                  auipc        a2, 1005114
                  ori          s2, a3, -624
                  mulh         s5, t6, a4
                  lui          t1, 484789
                  sltiu        a2, a6, -900
                  and          s2, a7, s4
                  srai         s1, s0, 5
                  slli         t1, a1, 17
                  slli         a5, gp, 24
                  sltu         s5, s6, s2
                  sra          gp, a3, ra
                  slt          s11, s1, s0
                  andi         a6, zero, 1505
                  slt          s10, s1, s4
                  mul          s0, t4, a4
                  lui          a7, 87577
                  mul          s1, gp, zero
                  auipc        t4, 641058
                  mulhu        t4, sp, a7
                  auipc        a1, 724446
                  slli         a1, t1, 10
                  divu         s6, a2, a1
                  mul          s2, a7, s8
                  rem          t4, a5, s9
                  sll          t2, s6, sp
                  slt          ra, s7, s1
                  and          s4, sp, a1
                  auipc        s10, 617112
                  auipc        s2, 939144
                  div          t2, sp, tp
                  xori         t2, s3, 847
                  sra          s7, a6, t3
                  remu         s0, s3, a0
                  ori          a3, ra, 1713
                  xori         s8, s9, -1381
                  and          a0, ra, s10
                  xor          a7, s11, s10
                  rem          s10, a0, s11
                  addi         sp, s10, 1969
                  divu         s3, t0, t2
                  ori          t0, a6, -1334
                  slti         s0, t0, -506
                  slt          s6, s6, t1
                  lui          t2, 1041177
                  sltu         zero, a1, s6
                  sltu         sp, s10, a5
                  ori          a2, sp, 636
                  and          t0, s5, t4
                  add          a0, a6, s8
                  sll          t0, s7, a7
                  add          tp, a1, t5
                  andi         s10, a6, -1977
                  sub          ra, t5, a4
                  slt          t6, a5, a4
                  sltu         gp, a0, s8
                  div          s10, a2, sp
                  ori          s5, t5, 337
                  xori         a0, s1, -1467
                  mulhu        ra, a4, a4
                  srli         s11, t1, 2
                  rem          sp, sp, s2
                  remu         t5, a6, s9
                  divu         t6, a4, sp
                  xori         t5, a3, -791
                  xor          t2, s8, s3
                  sub          s6, a2, zero
                  nop
                  mul          s7, s11, a7
                  ori          t4, s3, 24
                  slli         a5, a3, 30
                  mulhsu       a5, a6, sp
                  addi         t5, tp, 2043
                  mulhu        sp, a4, s4
                  or           s0, s1, ra
                  sra          s11, gp, zero
                  srli         a1, sp, 2
                  ori          s4, s0, 1760
                  lui          t4, 916465
                  xor          ra, s8, s11
                  slti         a5, zero, -2011
                  mul          a5, s11, s3
                  nop
                  divu         a0, s0, t4
                  and          t0, gp, s6
                  rem          t5, t3, s9
                  xori         s3, zero, 1950
                  andi         s7, s0, -792
                  addi         s11, a2, -1575
                  and          ra, a1, s7
                  sub          s7, t0, gp
                  xori         s7, t6, -1022
                  sra          sp, a2, s6
                  nop
                  slt          s2, zero, s11
                  mulh         gp, s7, s10
                  add          a6, t2, sp
                  auipc        s5, 731623
                  sub          a0, a2, a1
                  sltiu        gp, s2, -1846
                  sltu         a7, t6, t1
                  sub          a2, gp, a7
                  add          s8, t5, s1
                  addi         a6, a0, -1314
                  auipc        a3, 554425
                  mulhu        s8, a3, s4
                  slli         s2, s0, 19
                  slli         s6, a5, 25
                  xor          s5, zero, s0
                  addi         s3, s9, 1583
                  ori          s3, a5, -1715
                  xor          a7, t2, a3
                  andi         s5, s5, 1796
                  slti         s11, t0, 1929
                  divu         t4, s3, t2
                  andi         s2, s1, 1885
                  add          s8, zero, tp
                  rem          a1, s8, ra
                  sltiu        t5, a7, 751
                  srai         t2, a5, 14
                  xori         t4, a5, 1132
                  add          a2, s6, t2
                  lui          a6, 619397
                  or           s5, a1, a6
                  sltiu        a1, t3, -539
                  add          a1, s11, s10
                  and          a0, t3, s1
                  sub          zero, a1, a1
                  divu         sp, s2, a5
                  auipc        a0, 15047
                  ori          t1, s3, 559
                  add          t5, gp, t4
                  mulh         s1, t3, t4
                  srl          tp, zero, tp
                  srai         t4, a4, 15
                  auipc        s2, 3468
                  div          s3, gp, s9
                  xor          t1, a0, a2
                  auipc        s4, 92409
                  remu         s0, s10, a7
                  srai         t0, s11, 7
                  mul          s7, a0, t5
                  mulhu        s7, s3, s4
                  add          a3, a6, tp
                  sub          s0, s4, s6
                  nop
                  rem          tp, a5, tp
                  slti         a0, tp, -187
                  remu         s6, s0, gp
                  and          s1, t1, t1
                  lui          t4, 727987
                  srl          a2, ra, s3
                  xori         s11, a1, -1535
                  sltu         s8, a7, tp
                  sra          t5, t4, s2
                  nop
                  andi         a5, s10, 1492
                  mul          a5, s1, s0
                  div          s4, s7, a5
                  or           s5, sp, t2
                  nop
                  nop
                  divu         s1, t1, s6
                  sra          zero, s7, gp
                  mulhsu       s8, a2, s8
                  auipc        s4, 303674
                  mul          t6, tp, s1
                  xor          s6, zero, a0
                  mul          a5, a3, a2
                  nop
                  srli         t0, a7, 4
                  mul          a7, s7, t5
                  sltiu        a0, a0, 418
                  sltiu        s3, sp, -722
                  remu         zero, a6, s2
                  auipc        a1, 853745
                  auipc        t0, 31349
                  slli         a2, s5, 8
                  nop
                  remu         s6, s1, a0
                  auipc        t1, 204784
                  divu         a0, a2, a0
                  remu         s6, a1, a1
                  srli         t1, zero, 7
                  sra          a2, t1, s7
                  rem          a6, gp, s1
                  or           s2, s2, a0
                  srli         a3, s4, 23
                  divu         s11, s3, sp
                  sltu         gp, sp, sp
                  addi         s4, s1, 92
                  xori         ra, a3, -1520
                  add          t6, a7, s8
                  andi         s4, a7, 756
                  auipc        a5, 416079
                  andi         s6, t3, -2034
                  divu         t1, t4, s2
                  mulhsu       s4, gp, s5
                  andi         t5, a5, -1970
                  srl          a3, a3, t2
                  srli         s8, t3, 23
                  add          ra, s2, t0
                  div          tp, a2, a6
                  xor          a1, s0, t3
                  mulhu        s1, a7, zero
                  sltu         s2, a5, s0
                  slt          a5, s5, s4
                  slt          s1, a6, a7
                  mulh         t5, s3, t3
                  mul          a7, a1, s11
                  srli         s6, zero, 12
                  add          s11, t1, a1
                  srl          s7, a0, t2
                  xor          s8, t6, t3
                  rem          gp, a0, zero
                  andi         s1, tp, 1094
                  lui          s1, 329178
                  sltu         s1, a1, t3
                  nop
                  div          a5, s6, a4
                  div          t4, s0, s5
                  mulhsu       a3, t4, s2
                  srai         t5, a5, 28
                  srl          s3, a7, sp
                  mul          s10, a7, ra
                  sltu         a6, a1, s7
                  lui          a0, 393596
                  or           sp, s11, s4
                  srli         t6, s10, 30
                  mulhsu       s7, s2, s6
                  slli         ra, s6, 30
                  mul          s4, a7, a6
                  ori          s7, s0, -1280
                  xori         t5, t4, -1320
                  rem          a2, sp, gp
                  auipc        s2, 729580
                  mul          s11, a4, s10
                  slt          s8, a1, a6
                  auipc        t0, 705140
                  sltu         gp, a3, s2
                  div          t4, t3, sp
                  rem          t5, t6, a7
                  slt          sp, s2, ra
                  andi         tp, s9, 502
                  nop
                  auipc        s0, 102674
                  slt          a5, s1, t4
                  slt          s3, zero, s11
                  or           s2, s4, s8
                  sltiu        s5, s5, 1919
                  xor          t4, s0, a7
                  andi         s8, a0, 799
                  srai         gp, s11, 23
                  remu         tp, s2, a5
                  slli         s4, t1, 0
                  or           a7, tp, zero
                  addi         s5, s10, 2002
                  srl          s5, a7, s7
                  srl          s2, s9, s7
                  slti         s6, a1, 259
                  sltiu        t1, a0, -1363
                  divu         t5, s11, t5
                  mulhu        s3, t5, ra
                  rem          s6, gp, sp
                  ori          t5, t6, 439
                  mulh         a6, t3, s0
                  ori          s11, t2, -1415
                  mulhu        a1, a4, zero
                  mulh         ra, s3, s6
                  nop
                  addi         s8, t0, -1004
                  sub          s5, a3, s2
                  xori         a2, s10, 171
                  sra          a0, s6, a3
                  divu         s2, t3, a2
                  mulhu        a5, a1, s11
                  divu         t6, s9, s4
                  nop
                  sltu         ra, s7, s8
                  mul          s0, s4, t2
                  srli         s0, t2, 10
                  sll          t4, t0, s10
                  rem          a5, sp, s0
                  rem          t2, t5, s8
                  slti         s11, t2, -1492
                  mul          s7, t1, ra
                  srli         sp, s11, 19
                  rem          a1, s6, s2
                  srai         a7, s11, 8
                  xor          sp, s3, a5
                  slti         t6, s7, 299
                  slt          ra, t2, s6
                  srai         s8, s11, 1
                  slti         s11, s10, -2003
                  sltu         s2, a7, a5
                  mulhu        gp, s5, ra
                  mul          a2, t5, s8
                  rem          s3, s9, t5
                  srai         zero, a7, 19
                  add          t2, sp, s3
                  andi         zero, t3, -1799
                  srl          s6, t2, a4
                  ori          a7, s4, -355
                  mulh         sp, a2, a6
                  div          s11, zero, sp
                  auipc        s3, 936641
                  divu         s11, tp, s7
                  remu         t4, s8, s7
                  sub          s7, a2, t6
                  nop
                  nop
                  div          s1, s1, s5
                  srai         s8, a4, 3
                  sub          ra, s1, s5
                  sra          s6, t2, s6
                  sra          t4, s8, a4
                  slli         t0, s6, 6
                  sltu         s11, s7, a5
                  slli         sp, gp, 24
                  or           a3, s10, a5
                  div          s8, zero, t3
                  sltu         t2, t6, s5
                  sub          a3, s10, s7
                  xori         t6, s6, 879
                  lui          s8, 779549
                  sra          s7, tp, zero
                  div          s3, s6, zero
                  and          t0, ra, ra
                  addi         s0, ra, -643
                  lui          t6, 13434
                  div          t5, t5, tp
                  div          gp, zero, t5
                  xor          s3, s9, gp
                  auipc        t1, 999471
                  sll          s10, s5, a7
                  sltu         sp, s5, s0
                  mul          a5, t3, t2
                  add          s4, t3, t1
                  or           t0, s11, t4
                  sltiu        gp, sp, -244
                  slt          a3, s4, tp
                  lui          s1, 511454
                  addi         t0, a4, 1507
                  or           a6, a0, a4
                  srai         t5, ra, 11
                  sub          zero, t2, zero
                  mul          s10, gp, t6
                  xori         t4, s4, -527
                  or           s5, a7, s0
                  or           s0, ra, t5
                  ori          sp, s0, 1374
                  srli         s1, t0, 31
                  slt          t0, a6, t6
                  auipc        t5, 996234
                  or           s10, a5, a2
                  mul          s11, ra, zero
                  xor          s3, s4, s2
                  slli         t4, s4, 14
                  slti         a3, a4, 1829
                  sra          t6, s4, t4
                  ori          t6, a2, 1231
                  srl          a6, a3, s11
                  xori         t5, a2, -523
                  lui          s11, 685037
                  auipc        s6, 58217
                  slli         a5, a1, 10
                  slli         a7, t2, 30
                  srli         a1, s11, 27
                  slli         a7, t1, 13
                  nop
                  addi         s11, s8, -511
                  remu         s4, s5, s6
                  mulhsu       t4, a0, a7
                  mulhu        s4, ra, tp
                  lui          a6, 517034
                  nop
                  addi         s1, s4, 1539
                  or           s2, gp, s5
                  sltiu        s8, a7, -1147
                  nop
                  sltiu        a6, t1, -1870
                  mulhu        a7, t3, s8
                  and          gp, s8, a5
                  sub          t4, ra, s5
                  srli         s8, s4, 30
                  rem          t1, a4, s5
                  mulhu        s6, t2, t1
                  slt          a6, s5, t5
                  slli         s3, a7, 25
                  ori          a7, s1, 602
                  sltiu        zero, s4, 28
                  slti         s6, s7, -148
                  lui          zero, 362319
                  nop
                  divu         a5, a7, a1
                  nop
                  sra          zero, s6, s2
                  sltu         a3, a5, s9
                  xor          s0, s2, t1
                  slli         s3, a1, 6
                  xori         t5, a5, 317
                  sltu         sp, s0, a5
                  srl          s8, s0, t0
                  ori          a3, a7, -1297
                  sltiu        s11, a2, -138
                  xori         s10, s2, -1483
                  sra          a3, a0, zero
                  sub          t6, s3, t5
                  slt          t6, s7, t1
                  mulh         t6, s8, s6
                  sltu         t4, a3, t6
                  remu         t5, a1, t0
                  lui          gp, 735781
                  slli         s2, a2, 12
                  srai         a6, s5, 12
                  srai         s2, t4, 28
                  auipc        a6, 218344
                  divu         s2, s8, t3
                  srai         t1, ra, 30
                  or           a6, a2, t1
                  srli         a1, s10, 30
                  auipc        s0, 316360
                  srai         s8, sp, 3
                  lui          s6, 566018
                  nop
                  sltiu        t5, s7, -988
                  lui          s6, 547290
                  auipc        gp, 134591
                  slti         a0, t2, 1728
                  sltiu        s1, s5, -1148
                  or           t0, t4, a6
                  xor          t6, s5, s8
                  add          a6, s10, s10
                  srl          s7, sp, t6
                  andi         ra, tp, 1540
                  andi         t6, t1, -1512
                  slt          t5, s1, gp
                  and          ra, s4, s7
                  mulhu        sp, s7, s9
                  ori          s10, t2, -1957
                  mulh         s11, a3, a2
                  sltiu        s8, t4, -961
                  mulhu        a1, s9, s9
                  srli         t4, sp, 8
                  slt          a2, s6, a7
                  mulh         t1, a1, a7
                  sltiu        t1, t4, 1940
                  slt          tp, s4, sp
                  mul          a7, s7, s3
                  sll          gp, a1, s3
                  sll          t2, s5, t3
                  srai         s7, a0, 31
                  remu         t1, s0, s8
                  sub          a5, a6, s1
                  auipc        s1, 35142
                  sub          s3, t4, ra
                  xor          gp, s7, a5
                  divu         t5, a4, a1
                  srai         a6, a6, 14
                  srl          s6, s1, t1
                  sltu         zero, t5, s8
                  andi         s0, a1, -1278
                  sub          s7, s4, ra
                  mul          s11, s4, tp
                  sub          a2, t4, t2
                  addi         t4, zero, 1455
                  remu         s4, t5, tp
                  or           t6, t4, s10
                  srli         gp, a6, 5
                  slti         gp, t1, -951
                  srli         a2, s7, 30
                  lui          t4, 480921
                  sll          t1, a2, t2
                  slti         s10, a1, 1985
                  lui          a1, 172841
                  srl          t4, s4, t6
                  remu         gp, a5, a2
                  srl          t5, a1, s9
                  sltiu        t1, t1, 1319
                  srai         a0, a3, 17
                  sltu         s5, s10, s6
                  ori          a5, t3, 1198
                  mulhsu       s7, s0, s8
                  mulhu        t5, s8, s6
                  div          t4, a1, t5
                  divu         t1, sp, t4
                  xori         s4, zero, -1300
                  auipc        a2, 880182
                  srli         a3, s5, 29
                  sub          t4, tp, tp
                  mul          s6, s11, s8
                  mulhu        t1, a3, zero
                  mul          s2, s8, a1
                  or           ra, s0, gp
                  div          a7, s1, s2
                  mulh         s2, a2, a4
                  xori         t4, a4, -2046
                  mul          s10, s6, gp
                  mulhu        s8, gp, s11
                  andi         a5, sp, 1033
                  div          s2, s8, t0
                  mul          s4, s3, t0
                  srli         zero, s9, 17
                  div          t4, tp, a1
                  nop
                  sltu         s11, s5, t2
                  sub          t0, t0, s8
                  ori          a2, s1, 118
                  sll          t1, s1, s9
                  andi         a2, s9, 1393
                  nop
                  slti         s6, t5, 900
                  slt          a6, a2, t3
                  add          s4, s11, ra
                  auipc        s4, 462860
                  nop
                  srl          t4, s9, zero
                  srai         s7, s1, 26
                  srai         t5, zero, 18
                  andi         t2, zero, 1410
                  slti         a1, a6, 0
                  srli         sp, a6, 13
                  srai         s10, zero, 29
                  and          a6, t1, zero
                  nop
                  mulhsu       a2, a5, s9
                  rem          a6, gp, a7
                  or           s10, tp, a3
                  sltiu        t6, zero, -618
                  slt          a7, s7, t6
                  sra          s6, s4, t4
                  slti         s6, t5, -533
                  div          s1, a5, a0
                  andi         a0, sp, -632
                  sll          s1, s10, s2
                  auipc        s6, 653164
                  xori         t6, s7, 23
                  slti         a2, tp, -463
                  slti         s6, t1, 1724
                  divu         s2, sp, s9
                  mulh         t1, zero, t4
                  srli         s1, s5, 3
                  ori          t6, a2, -1134
                  sra          a3, s7, a3
                  slti         t4, s11, 2028
                  sub          t1, a2, t2
                  rem          ra, a6, a2
                  remu         t4, t3, a0
                  ori          s8, a5, 359
                  and          sp, a2, t5
                  divu         s8, s2, a2
                  divu         a1, s7, a4
                  slli         t6, tp, 17
                  rem          ra, tp, s2
                  rem          ra, s7, s6
                  or           s7, a2, a7
                  mul          t2, s11, a3
                  mulhu        ra, a7, t6
                  mulhsu       ra, s8, a4
                  xori         a1, a5, -942
                  srli         t1, a6, 11
                  and          s10, s9, s8
                  xor          a2, a7, a0
                  lui          a0, 886405
                  slt          t4, s6, tp
                  sltu         a1, t0, a3
                  sub          a7, t5, s0
                  ori          gp, t1, -333
                  divu         s5, t5, s3
                  srl          s8, a7, a7
                  mulhsu       s1, t5, a5
                  xori         s7, s0, -750
                  srli         s1, t1, 18
                  sll          a1, a3, s0
                  srai         a2, a2, 8
                  sll          ra, gp, t2
                  and          s7, a7, s10
                  xor          s1, a4, a5
                  sltiu        s11, a4, 42
                  xor          s0, zero, ra
                  add          a7, a3, a7
                  divu         s1, t1, a1
                  remu         a2, s4, a7
                  add          a7, sp, t0
                  auipc        t1, 509624
                  slti         a3, s5, 1841
                  add          a0, s0, s6
                  srl          s8, t4, s9
                  addi         s8, a5, -1025
                  or           a1, tp, ra
                  srl          s3, ra, t2
                  xori         a2, t0, -1049
                  ori          a5, s7, 853
                  mulhu        a0, a3, gp
                  mulh         sp, a2, s0
                  sub          t2, s5, t2
                  mul          s3, t2, s7
                  slti         gp, a5, 1502
                  auipc        ra, 680090
                  sra          t0, s1, s4
                  rem          a6, t6, s11
                  mulh         a6, s4, s1
                  mulh         gp, tp, a2
                  srai         t5, t6, 10
                  remu         a7, a5, s3
                  addi         t4, tp, -1689
                  ori          a7, s0, -155
                  auipc        s11, 400526
                  mulhsu       s6, t1, s1
                  slli         gp, a5, 17
                  andi         a7, s11, -838
                  slli         s11, s5, 30
                  andi         s1, s9, -1810
                  remu         s2, t0, gp
                  add          t2, tp, s1
                  nop
                  mul          a2, s3, t5
                  xori         s11, a3, 1777
                  slli         a7, a0, 21
                  ori          s4, t2, 1261
                  srai         t5, s4, 12
                  divu         a3, s4, t5
                  mulhsu       s4, s5, s3
                  ori          s11, s10, -256
                  srai         s4, s6, 26
                  and          ra, s8, t1
                  div          t4, a2, t0
                  mulh         a2, a6, s6
                  mulh         a2, zero, s6
                  slli         s6, t4, 29
                  ori          s5, a4, -583
                  ori          t4, a2, -229
                  sub          a1, zero, t5
                  add          t4, s11, ra
                  xor          s6, a5, s11
                  slt          s11, a6, a6
                  auipc        a5, 948143
                  srai         s6, s8, 25
                  xori         t5, t2, 589
                  mul          a1, s11, a3
                  sltu         s5, t3, t0
                  sltiu        s6, s7, 515
                  xor          t5, zero, s4
                  srli         s4, s1, 6
                  xori         a0, t3, -445
                  auipc        a1, 688719
                  sltiu        a3, s1, -1467
                  slli         sp, s7, 8
                  mul          t2, t5, a2
                  and          ra, s8, t0
                  add          s11, zero, ra
                  mulhu        a3, s3, s1
                  auipc        a7, 988206
                  sra          t1, s8, t2
                  add          t0, sp, s8
                  sra          a7, a4, a2
                  or           t6, a5, s1
                  auipc        t5, 235357
                  ori          s8, a0, 1186
                  sub          t1, a7, gp
                  sub          t2, s8, t2
                  remu         s7, s6, t3
                  sll          t1, t2, a7
                  add          s5, zero, ra
                  mulhu        s10, a3, a4
                  add          a0, t3, sp
                  sll          a2, a4, s9
                  mulhu        zero, s8, t1
                  srl          a2, s2, sp
                  auipc        s8, 511914
                  slli         a7, a1, 28
                  slti         a6, a7, 1019
                  slli         s6, t3, 8
                  and          s2, t3, s9
                  slt          sp, s6, s0
                  addi         a5, sp, -65
                  div          t1, a2, s4
                  addi         s1, a1, 867
                  addi         a7, s5, -2045
                  nop
                  sll          t1, s2, t3
                  sra          zero, a6, s2
                  mulhsu       gp, t0, t2
                  divu         t1, t4, t5
                  mulhsu       a2, a2, t6
                  addi         t4, t2, 1691
                  add          t0, s0, s3
                  xori         a0, sp, 784
                  lui          s2, 520015
                  div          t4, sp, t4
                  rem          a2, s9, s7
                  mulhsu       ra, t0, t5
                  sra          a2, s7, a5
                  or           s11, s4, ra
                  sra          s3, t1, s1
                  and          s6, s6, a4
                  andi         t5, t0, -1467
                  slli         a2, a5, 0
                  xor          s7, s2, s1
                  lui          s11, 457280
                  sltiu        t1, a2, 476
                  or           t1, t1, tp
                  divu         tp, t4, s11
                  auipc        gp, 955821
                  sltiu        a1, a7, 1389
                  ori          s0, a5, -896
                  addi         s8, t5, -1481
                  remu         a2, t4, s2
                  div          t5, t5, a7
                  sub          s5, t4, s8
                  divu         t2, t3, s5
                  mulhu        a3, a0, t0
                  mulhu        tp, s10, gp
                  mulhsu       s7, s3, t1
                  mul          t2, s1, t4
                  srl          a1, s3, a6
                  andi         gp, tp, 117
                  ori          s2, t1, 1327
                  sll          a7, a3, gp
                  auipc        s3, 526382
                  srli         t4, ra, 30
                  srl          s0, a4, sp
                  srl          a2, t2, gp
                  and          a0, s9, a2
                  and          t2, s6, s2
                  lui          a3, 998657
                  srl          s3, t6, s2
                  sltiu        t6, s5, -848
                  or           s1, s6, ra
                  sltu         zero, t0, t3
                  or           s5, sp, s0
                  div          tp, a3, t6
                  mulhsu       t1, s3, s4
                  slli         a3, zero, 15
                  addi         s8, sp, -1774
                  mulhsu       t2, s9, zero
                  mulhsu       a0, s9, t6
                  and          s8, a1, s1
                  slli         sp, t3, 0
                  andi         s0, s1, -555
                  andi         tp, s1, 840
                  or           s1, s1, t4
                  div          s0, s1, a0
                  addi         t2, s6, 1620
                  remu         a7, a1, t1
                  div          t6, tp, s2
                  xori         s2, s7, 1016
                  mulhsu       s2, a5, s2
                  sub          tp, gp, s8
                  remu         sp, a0, a3
                  sub          s10, sp, a4
                  add          t1, gp, ra
                  xori         ra, s4, 1634
                  and          t2, t2, t2
                  mul          a7, s4, t4
                  srai         s3, t1, 5
                  slli         a6, tp, 21
                  sub          s8, s4, t5
                  divu         s11, zero, t2
                  srai         s8, s8, 8
                  mulhsu       t4, a5, t5
                  xori         ra, tp, -642
                  slti         s8, zero, 1079
                  srai         s10, a7, 5
                  sltu         s6, zero, t1
                  add          a5, s5, s0
                  and          gp, ra, s11
                  sltiu        t5, t0, 708
                  sll          a5, s4, tp
                  srli         s1, t5, 19
                  divu         s3, s5, a6
                  or           s1, a3, t2
                  sltu         s3, s6, s4
                  xor          a7, s3, t4
                  sra          s3, s6, s5
                  sub          s6, a5, a2
                  divu         gp, ra, a5
                  srl          a2, a1, a3
                  divu         zero, t4, t0
                  sltu         t1, ra, a1
                  slti         a1, gp, -403
                  nop
                  mulh         s7, ra, sp
                  rem          t5, a0, t0
                  slt          sp, s7, t1
                  slli         ra, s9, 25
                  rem          s1, a6, s2
                  mulhsu       a2, t0, a1
                  sra          s4, a3, s10
                  mulh         a2, a5, s5
                  mulhu        a3, a7, gp
                  xor          s3, ra, t4
                  remu         s5, s4, sp
                  xori         s11, a6, 382
                  add          s5, s8, a2
                  div          a0, s3, gp
                  sltu         a1, s4, a7
                  mulh         t5, ra, t2
                  srli         ra, t6, 22
                  sra          s2, a4, t6
                  remu         a6, sp, a3
                  xori         ra, s3, -768
                  mulhu        sp, s5, a2
                  divu         s0, t1, t0
                  and          s2, ra, t3
                  srli         s5, tp, 30
                  sltu         ra, gp, a6
                  add          t0, a3, s0
                  mul          s6, s5, sp
                  sltu         gp, s7, s0
                  slli         s1, ra, 21
                  lui          a2, 637111
                  lui          s7, 610085
                  mulhsu       s0, a6, s5
                  and          t5, s6, a2
                  lui          s8, 558643
                  sub          s0, s9, sp
                  mul          t2, sp, s0
                  lui          a3, 344340
                  and          s10, t5, s1
                  divu         zero, a3, s11
                  mul          t0, s10, s4
                  nop
                  addi         s6, a4, 1113
                  srl          t2, s6, a6
                  mul          s10, zero, t0
                  srl          t5, s0, s4
                  xor          a7, s9, t1
                  sra          a1, ra, s5
                  add          s1, a4, tp
                  mulh         a5, a2, t5
                  sub          a5, s3, s2
                  rem          s1, s2, a2
                  mulhu        t2, s1, s7
                  rem          s3, s4, zero
                  mulhu        a0, tp, a4
                  xor          a2, s11, a2
                  lui          s2, 487025
                  slti         s6, t3, -1007
                  xori         zero, ra, 1475
                  add          s10, s10, a3
                  and          a2, t5, tp
                  rem          a3, a4, s10
                  andi         gp, t2, -231
                  div          s11, s9, s3
                  andi         a1, a1, -1688
                  and          s1, s3, zero
                  remu         sp, t6, t2
                  and          t6, sp, s9
                  sub          a2, a0, a1
                  andi         ra, s7, 1414
                  remu         t2, a4, t2
                  addi         tp, t4, -1986
                  slt          tp, s8, s11
                  sll          sp, s6, t4
                  remu         t1, s5, t6
                  slt          s2, ra, tp
                  mul          t4, s8, ra
                  srli         ra, t1, 28
                  xori         s8, a4, -627
                  ori          zero, s10, 623
                  srl          s11, a1, zero
                  divu         a6, a7, t6
                  or           a1, s11, tp
                  slli         s3, t0, 29
                  and          a3, a0, s10
                  andi         a1, zero, 17
                  divu         zero, a0, s11
                  sltu         s11, s4, s7
                  divu         a7, t0, s9
                  lui          s11, 41585
                  xori         s4, sp, -1414
                  mulhsu       t4, gp, a2
                  mul          s8, gp, s6
                  remu         s10, tp, gp
                  nop
                  sub          t4, s6, zero
                  addi         tp, s8, 604
                  ori          s5, t2, 1086
                  xori         s11, s0, 1186
                  sltu         t4, s0, sp
                  rem          a7, s7, s3
                  slli         t2, a4, 17
                  slli         s8, t3, 20
                  sra          s1, s7, zero
                  mulh         t6, a5, s6
                  slt          a3, s7, t5
                  sltiu        sp, s7, -1532
                  slli         s11, s3, 12
                  srai         a0, t4, 14
                  nop
                  add          a0, s8, a2
                  slt          a0, a2, a6
                  addi         a0, s0, -1470
                  slt          s8, t2, s2
                  sub          t6, tp, t5
                  sub          s8, gp, s2
                  mulh         s3, s11, t2
                  srai         sp, s3, 6
                  mulhsu       a0, sp, a5
                  mulh         a6, gp, s4
                  srl          t5, s11, sp
                  ori          a7, t4, 2036
                  mulhsu       t4, a1, t3
                  srl          zero, s8, t3
                  mul          s4, s3, ra
                  slli         t6, a0, 3
                  slti         gp, s4, -998
                  mul          sp, a0, sp
                  add          sp, s8, s11
                  remu         a2, gp, sp
                  div          tp, gp, a7
                  or           a6, t1, ra
                  mul          s11, s6, a1
                  slti         s6, t3, 1342
                  divu         s8, a5, a5
                  slt          s4, s11, s4
                  sll          a5, t0, a3
                  rem          t0, a4, s6
                  slti         ra, a0, 123
                  nop
                  slti         a1, t6, 1092
                  sra          s8, a7, a0
                  or           t4, a3, a7
                  divu         s4, a3, s2
                  mul          a0, zero, t5
                  sltiu        a3, a7, -1858
                  srli         s8, s4, 30
                  xor          t4, t5, gp
                  div          s1, s0, s9
                  xor          s10, t4, s6
                  mul          s1, t5, t1
                  srli         gp, s1, 23
                  xori         t5, a3, 799
                  div          s8, s8, s1
                  srl          t4, s8, t2
                  xori         a6, a6, -1162
                  mulhsu       s4, s1, t0
                  mul          s0, t1, s5
                  addi         a3, s5, -849
                  xor          s6, s8, s5
                  nop
                  xori         t0, s7, 840
                  xor          zero, s3, a4
                  sltu         s8, s6, s2
                  divu         s4, s7, s0
                  mulhu        t2, s4, zero
                  xori         t6, t1, 1909
                  sltu         ra, s3, s0
                  xor          s1, a3, s0
                  auipc        s3, 134842
                  addi         s8, s9, -1193
                  sll          s6, s10, a5
                  addi         t2, t3, 1326
                  sra          t5, sp, t0
                  mulh         s1, s6, t2
                  mulhu        s3, t1, a3
                  mul          s10, a4, sp
                  xor          t4, tp, s2
                  nop
                  slt          s1, s9, sp
                  sltiu        a0, s11, -640
                  sub          gp, a4, tp
                  lui          a2, 407902
                  sub          a2, t4, a0
                  ori          s4, s11, -467
                  sub          t2, a7, a1
                  mulhu        s3, s1, a4
                  nop
                  sub          a0, a2, s3
                  srai         a2, a1, 5
                  divu         s11, s6, t2
                  and          s8, tp, t5
                  lui          a1, 239835
                  slti         s1, s5, 1391
                  add          a1, a1, s4
                  remu         s7, s2, s0
                  addi         zero, s3, 667
                  srl          tp, t5, a6
                  sra          a5, a2, a1
                  rem          t6, t1, s3
                  srai         t4, tp, 22
                  mul          a5, sp, t6
                  rem          s7, t3, a3
                  sub          gp, t6, s6
                  remu         s8, s2, t4
                  andi         s3, a1, -1519
                  div          tp, a4, s5
                  srli         a0, t4, 11
                  mul          s0, tp, tp
                  andi         t2, a1, -1311
                  lui          s6, 290574
                  slli         t5, s2, 22
                  ori          s8, s1, 1539
                  mul          t5, s6, ra
                  sub          s6, s9, s5
                  andi         s8, s6, -1978
                  mulhsu       tp, a2, s1
                  sll          tp, s7, s10
                  add          a6, a3, a5
                  rem          t2, ra, a3
                  remu         gp, s0, a5
                  slli         a2, t2, 12
                  slli         a6, a1, 29
                  auipc        t5, 939301
                  xor          a2, t3, s7
                  sra          a0, t4, zero
                  sub          a0, s8, s0
                  mulhu        gp, a7, a4
                  auipc        s0, 64627
                  addi         a0, s5, -959
                  divu         s11, t5, t6
                  or           ra, a0, s4
                  nop
                  sll          t1, s10, s0
                  nop
                  lui          s4, 584886
                  nop
                  slt          s7, a5, s0
                  xori         tp, t5, 1162
                  xor          tp, s10, s5
                  andi         a2, s0, 869
                  slli         s10, t0, 23
                  ori          s8, a7, -90
                  andi         t0, t0, -65
                  ori          t1, s11, -1058
                  xori         s5, gp, 965
                  sltiu        t4, a6, 525
                  mulhsu       s1, s6, t6
                  sltiu        s2, s0, -1866
                  add          a0, t2, a7
                  sra          s3, a3, a5
                  sltiu        a5, s1, -629
                  slli         s7, s4, 4
                  and          s10, t0, t1
                  or           s10, s4, s2
                  sltu         s5, a3, a1
                  add          a7, t2, a3
                  mul          a3, s9, s5
                  div          t6, a7, ra
                  sltiu        t5, s11, -857
                  xori         s2, ra, -1106
                  mulh         tp, a1, s10
                  srli         s0, a6, 10
                  mulhu        s1, s3, a7
                  andi         s8, s6, -1606
                  andi         a3, s7, -812
                  or           t4, gp, s6
                  sltu         s7, gp, sp
                  slti         t4, s2, -1308
                  mulh         a5, t2, a1
                  sub          t0, t5, s0
                  div          s4, t2, sp
                  sltu         s2, zero, t4
                  remu         s8, a6, s0
                  mulh         s2, tp, ra
                  mulh         s7, a1, s8
                  srai         a7, s9, 27
                  sra          s2, a7, a0
                  divu         s8, sp, s10
                  mulhu        sp, t5, s10
                  andi         sp, s5, -1206
                  xor          a2, tp, a0
                  div          s11, s6, t5
                  xori         t5, t3, -1547
                  srai         a0, s6, 17
                  and          a6, a4, s10
                  nop
                  addi         s6, s3, 1853
                  addi         t5, t4, 1986
                  nop
                  slti         s6, a0, 1708
                  divu         a3, a5, s11
                  auipc        zero, 451769
                  mulhsu       s0, s2, s4
                  add          a7, a7, s8
                  add          a0, s1, t0
                  slli         t2, a3, 16
                  srai         a0, t4, 15
                  srli         t6, t3, 16
                  and          s0, s7, a1
                  mulhsu       s8, t1, s10
                  xori         a0, sp, 1531
                  addi         s6, sp, 747
                  mulhu        t5, s5, a3
                  sltiu        sp, s3, 368
                  rem          a6, tp, t6
                  add          a1, s8, s10
                  sltiu        a1, s4, 1610
                  mulhsu       s4, s4, t3
                  sltu         s11, a7, s3
                  rem          s2, a3, sp
                  remu         a2, a6, tp
                  mul          t0, s11, s4
                  or           t5, s11, t6
                  ori          s3, t1, -1469
                  mulhsu       s6, s9, tp
                  mulh         gp, sp, t3
                  srli         s1, a6, 17
                  lui          s8, 311648
                  ori          a5, t4, 286
                  sub          s11, s8, s3
                  xor          t0, zero, zero
                  ori          t2, s0, -1019
                  sltiu        s5, s4, 1919
                  sll          s7, s2, a5
                  sub          s5, a3, zero
                  ori          gp, a0, -1962
                  xori         a6, t6, -1685
                  ori          s2, a7, 1256
                  mulh         a0, t2, t6
                  srai         s10, t5, 1
                  sra          zero, s3, a2
                  divu         s2, a5, a7
                  ori          t2, a3, -1438
                  add          t4, a0, t4
                  sll          a5, s4, sp
                  remu         s0, a0, zero
                  and          s0, s5, t5
                  rem          a6, tp, s7
                  div          a3, t6, ra
                  sll          a6, t0, a3
                  nop
                  sltiu        s5, s9, -1544
                  mulhu        a6, t3, tp
                  srai         t5, a0, 15
                  sll          s4, t3, s2
                  sltiu        a5, s1, -566
                  slti         t6, t0, -1303
                  xori         a2, a3, -659
                  srai         t2, t2, 4
                  sltu         ra, tp, a2
                  srl          s11, a0, a5
                  mul          s11, t1, s6
                  addi         t6, a2, -1586
                  ori          gp, s4, 676
                  or           zero, a7, s9
                  slt          s2, s4, a0
                  srl          t1, t2, s11
                  srl          sp, s1, a2
                  or           a1, t5, ra
                  srl          a7, gp, a5
                  mulh         a2, s1, t4
                  andi         t6, s0, -1182
                  add          tp, s6, s5
                  mulhsu       s7, s0, s5
                  addi         ra, a2, 740
                  add          a3, t5, t4
                  sll          a6, s0, s10
                  mulhsu       a6, a3, gp
                  sra          a3, s6, t1
                  sltu         s7, t6, a1
                  addi         s5, s7, -80
                  div          t6, t0, t2
                  sltiu        s6, a6, 1226
                  slli         t6, t3, 24
                  mul          t0, ra, a3
                  remu         s11, zero, t1
                  or           s2, a1, ra
                  sll          a0, s9, gp
                  div          a2, a2, a3
                  mul          s4, t4, a4
                  auipc        tp, 479941
                  add          tp, a7, t5
                  ori          t0, a5, -554
                  xori         a5, s10, -1653
                  sub          s11, s11, a0
                  slli         s2, t5, 17
                  ori          t1, s5, 882
                  slti         s11, a5, -1264
                  lui          s1, 727330
                  auipc        s3, 333208
                  or           s5, t0, s10
                  sub          s3, t2, s9
                  lui          tp, 300965
                  or           s2, s9, t0
                  remu         s7, s5, zero
                  mulhu        s10, s4, a3
                  xor          a7, s0, a0
                  add          a5, t4, a7
                  divu         gp, t4, t0
                  and          t5, tp, t4
                  sub          s8, t4, t0
                  nop
                  rem          a3, t2, s0
                  sltu         t2, sp, a0
                  sll          a3, t0, a3
                  sltu         s0, s2, s3
                  remu         s3, gp, a0
                  xor          ra, sp, s0
                  mulhsu       s6, s1, s9
                  auipc        s1, 412222
                  srl          tp, s5, t3
                  sra          s6, s9, gp
                  div          s10, s9, s3
                  sll          ra, a3, s8
                  and          ra, a5, s7
                  mulhsu       sp, t6, s11
                  mulhu        tp, s9, a4
                  slt          s10, s9, sp
                  xori         t5, s3, 1541
                  div          s3, t2, s9
                  srli         s7, s8, 19
                  srl          s1, s1, zero
                  mulh         s4, s3, gp
                  srai         ra, t6, 14
                  auipc        s3, 1009293
                  or           a1, s1, a5
                  remu         s5, s3, a1
                  sltu         s4, tp, t4
                  addi         s10, sp, -966
                  mulh         s8, a3, t6
                  or           t4, t2, s0
                  divu         s3, s8, s1
                  srai         a7, s6, 28
                  srl          a7, ra, s5
                  mulhu        a1, ra, t4
                  sltu         s7, s11, a1
                  slti         a0, s4, -1710
                  divu         a2, tp, s11
                  srai         s11, t6, 2
                  or           s6, t5, a3
                  srai         s3, s7, 26
                  srai         s2, s1, 10
                  nop
                  mulhu        ra, t4, t5
                  xori         t5, t3, 896
                  addi         t4, a6, 42
                  add          a3, zero, s1
                  mulhsu       a3, s3, s3
                  srl          s3, sp, t3
                  sub          a0, zero, a4
                  sra          s0, a2, zero
                  slli         a3, zero, 25
                  lui          s11, 324249
                  rem          t6, t5, t5
                  nop
                  or           t2, a2, t6
                  mulhsu       t4, zero, s11
                  sra          s8, t6, a0
                  xor          a3, s7, s5
                  srl          t6, a2, tp
                  divu         ra, t1, t1
                  slli         a2, a1, 17
                  mulhu        zero, a3, a4
                  remu         a7, t6, a7
                  sltiu        s10, s8, -1461
                  srli         t5, sp, 4
                  rem          s1, s1, a5
                  remu         s1, s11, a5
                  sra          a1, a7, t5
                  srl          a6, a3, t5
                  divu         s10, a3, a2
                  sltiu        a6, s3, 1078
                  sltu         t5, a4, a2
                  sra          tp, s11, t5
                  slli         gp, t1, 28
                  slt          t1, a1, s3
                  slt          zero, s10, a1
                  slti         s0, a5, -200
                  sra          a0, s9, t6
                  mulhu        sp, tp, zero
                  divu         zero, t4, s11
                  sub          gp, a0, ra
                  sub          zero, a2, a0
                  sltiu        a3, a6, 1718
                  rem          a6, s7, sp
                  srli         t5, s3, 28
                  srli         s7, a4, 28
                  or           tp, s2, s9
                  auipc        s3, 760969
                  auipc        t5, 374859
                  rem          zero, s4, s3
                  add          a1, s6, t1
                  srai         tp, t0, 17
                  addi         a3, s3, -1916
                  div          sp, a0, a0
                  addi         a3, s9, 146
                  mulh         t5, t1, a7
                  sll          s5, s6, a0
                  sltu         s8, a4, s11
                  rem          a2, s6, a6
                  srl          a6, gp, zero
                  divu         s1, s6, t5
                  xori         t4, a7, -670
                  slti         a2, a1, 609
                  srli         gp, s0, 1
                  srli         t5, s2, 21
                  slti         a7, a7, -563
                  sltu         ra, a0, a4
                  mul          tp, tp, s6
                  srli         a2, s0, 8
                  andi         t0, a5, 588
                  xori         s0, s5, -277
                  srli         s3, s8, 25
                  mulh         a6, a6, s10
                  or           a2, t5, a4
                  auipc        s2, 490954
                  lui          a5, 269049
                  mulhsu       s4, a5, t2
                  remu         t4, tp, gp
                  sltu         s3, s6, gp
                  nop
                  sll          a5, s0, sp
                  ori          gp, t3, -206
                  andi         s2, s5, -1493
                  and          s4, t5, a6
                  xor          a3, t0, t2
                  auipc        s8, 264608
                  sltiu        t6, a7, -18
                  srai         a3, s7, 7
                  xor          a1, sp, t0
                  add          a2, t3, sp
                  slti         s1, a0, 1632
                  sll          sp, t1, a1
                  mulhsu       s8, a3, s0
                  xor          t4, s10, t0
                  addi         a2, s1, -531
                  mulhsu       s6, s8, s0
                  srli         s5, s0, 5
                  and          t1, a4, t4
                  sra          t2, s7, s2
                  xori         a2, a2, -673
                  srai         a5, zero, 13
                  remu         a0, a1, t5
                  addi         s3, t0, -1460
                  remu         t1, t3, t4
                  mulhsu       s11, s5, s5
                  andi         s3, t2, -106
                  remu         s11, s2, t0
                  srl          a3, s3, s4
                  mulhsu       a0, s6, a1
                  auipc        a7, 746269
                  srai         a7, t6, 25
                  slli         a1, t2, 27
                  or           t4, t5, a7
                  ori          s0, t3, -667
                  remu         s2, s8, s9
                  ori          s8, s11, -1220
                  srli         sp, a3, 19
                  srli         t6, s10, 30
                  lui          t5, 850926
                  sra          sp, s3, t0
                  and          s8, s4, s11
                  xor          s1, t5, t1
                  slli         t5, s1, 3
                  divu         gp, t6, sp
                  slt          t6, t2, t1
                  srli         a5, tp, 31
                  mulhsu       s6, t5, t5
                  sltu         a1, s1, s8
                  addi         s4, s4, -135
                  or           gp, ra, t1
                  slt          s8, t0, ra
                  sra          s10, a2, s4
                  sub          s11, s2, s9
                  or           s8, s8, a0
                  sltiu        a2, s7, -1609
                  div          s8, ra, t1
                  xori         ra, sp, -1793
                  slt          zero, s10, s11
                  srl          a7, s5, gp
                  xor          a6, s7, zero
                  auipc        s8, 139707
                  rem          s8, s7, s9
                  mulhsu       a7, s11, zero
                  or           s0, s1, a3
                  auipc        tp, 507766
                  sub          a7, a0, a0
                  auipc        s8, 165468
                  srli         t1, a7, 20
                  andi         s11, t3, -975
                  and          t4, s8, t6
                  sra          t1, ra, a4
                  srai         t4, s2, 22
                  mulh         t2, t4, s1
                  sra          s3, a5, a7
                  srli         s5, a3, 24
                  lui          s4, 553164
                  and          gp, s8, t0
                  mul          s1, t0, s5
                  mulhu        s0, s9, zero
                  divu         s6, gp, s11
                  slti         s2, s7, -1699
                  andi         s6, s5, 371
                  or           t2, a3, ra
                  sltiu        s5, a3, 1924
                  add          a3, ra, zero
                  mulhsu       a0, s0, s2
                  sub          s0, a7, s11
                  xori         s6, s4, 898
                  remu         s8, t1, t3
                  rem          a1, s8, t6
                  auipc        t0, 19957
                  divu         t2, a2, t6
                  remu         s10, s10, a1
                  nop
                  nop
                  and          s0, s5, s5
                  srai         s11, a0, 2
                  add          a5, s6, gp
                  or           t4, t0, t6
                  slli         t5, a3, 14
                  ori          t2, t5, -431
                  xor          a7, t3, tp
                  slt          t5, t0, a1
                  slt          tp, tp, s3
                  sll          a7, tp, s10
                  or           s1, a0, s8
                  mulhu        sp, s1, s0
                  and          gp, s9, a5
                  mulhsu       ra, t0, zero
                  remu         t4, t2, gp
                  sll          a1, gp, t5
                  or           zero, s7, a0
                  ori          a0, t2, 1784
                  remu         s8, a3, a6
                  sra          t2, s0, a0
                  div          s6, s3, s4
                  rem          s11, s0, s11
                  sra          t2, tp, a2
                  rem          t1, a7, a7
                  slli         t5, s0, 20
                  add          gp, t1, t2
                  rem          s2, s11, s0
                  slt          s7, s11, a3
                  addi         t5, a7, -300
                  sll          s8, s9, s11
                  sltu         s11, t3, a4
                  xori         gp, s8, -112
                  mulhu        a2, s7, t5
                  slt          s8, s6, a5
                  nop
                  mulh         t1, a5, a4
                  nop
                  and          s10, a4, a4
                  lui          a2, 623048
                  slti         t4, s0, -1523
                  sltiu        s6, gp, 328
                  xori         a6, s2, 1622
                  div          s5, t2, a4
                  mulh         s11, t3, s5
                  div          t6, a5, s10
                  and          s4, s0, tp
                  sub          ra, s8, a4
                  and          t1, a4, s5
                  rem          a0, ra, t1
                  divu         a0, a1, t2
                  divu         a3, s3, s1
                  mulhu        s10, t1, t3
                  mulhsu       s0, s2, s3
                  sltiu        a0, s4, 1295
                  andi         t0, t2, -2021
                  slt          s2, a1, t2
                  nop
                  slt          s3, a6, s10
                  sub          a7, s6, a4
                  andi         s8, s3, 1997
                  ori          s2, s9, 814
                  xori         s5, t2, -1750
                  rem          a3, t1, tp
                  slli         t4, t5, 8
                  andi         a2, t6, -391
                  add          s11, gp, t1
                  nop
                  mul          s10, tp, s10
                  rem          a0, zero, s8
                  sll          s6, a7, gp
                  slti         s7, s0, 707
                  rem          a1, t5, t0
                  srli         s4, s1, 20
                  nop
                  ori          a6, a4, -1288
                  auipc        t1, 890735
                  mulh         t6, s1, s4
                  rem          s2, t5, s5
                  slti         t2, s6, 301
                  slt          ra, gp, t5
                  sub          a0, s11, a2
                  srai         t6, t4, 7
                  divu         s7, a2, a5
                  lui          a3, 485079
                  andi         t0, t1, 958
                  srli         a2, s5, 27
                  addi         tp, s5, -1368
                  sltiu        s3, t2, -1832
                  mulhu        a2, s10, a1
                  lui          zero, 871868
                  ori          s10, t6, -1779
                  remu         a5, s0, t6
                  sltiu        gp, s0, -805
                  sltu         s11, a0, s7
                  auipc        zero, 544146
                  ori          s5, zero, -2035
                  and          a3, ra, s11
                  mul          t5, t4, s4
                  sra          gp, t3, a6
                  or           t6, t5, s7
                  and          ra, s11, t2
                  xori         s5, t5, 905
                  and          sp, t6, s2
                  srli         a1, sp, 24
                  sub          sp, a1, t5
                  or           s10, sp, s1
                  add          s7, t5, s7
                  slt          tp, s3, s1
                  sltiu        s8, s4, 23
                  slti         gp, s7, 246
                  add          a5, s9, a0
                  mul          a3, a4, s10
                  ori          s2, a4, 482
                  ori          t2, s7, 1805
                  slti         s11, tp, 1383
                  ori          a7, zero, 784
                  srai         s1, ra, 19
                  sltiu        a7, a0, -1869
                  lui          ra, 777432
                  sra          a2, gp, s1
                  srl          t4, gp, a0
                  srl          tp, s1, s8
                  srl          a0, a2, s4
                  sll          s2, s5, a3
                  slli         t2, t5, 31
                  add          a5, s9, s1
                  andi         s11, a0, -1429
                  slt          s5, zero, gp
                  mulhu        s1, a7, s9
                  mulhsu       a0, t4, t2
                  ori          s10, t4, -1932
                  and          a6, s0, a6
                  and          s2, s9, s4
                  andi         s2, t1, 1280
                  nop
                  auipc        s7, 904746
                  xori         s11, t5, 1134
                  slt          a5, a2, a6
                  and          s5, t3, sp
                  slli         s4, a2, 4
                  mulhu        t1, gp, s10
                  div          s10, a3, t6
                  ori          t5, a1, 584
                  sltiu        zero, t6, -828
                  sltu         a7, zero, s10
                  or           t5, tp, t2
                  rem          s2, t4, t0
                  nop
                  and          sp, gp, t0
                  divu         t4, gp, sp
                  lui          t0, 799973
                  andi         a6, s9, 269
                  slti         t0, s11, -1994
                  sll          a2, t6, sp
                  ori          a1, t0, -40
                  srai         sp, s1, 2
                  mulh         gp, a3, gp
                  mulhu        s11, gp, s1
                  remu         a0, sp, t4
                  mulhsu       a5, a0, s6
                  sltu         ra, s2, s0
                  div          t4, s10, tp
                  slt          s2, s6, sp
                  rem          s0, tp, tp
                  srai         s4, a1, 3
                  remu         s2, t6, a6
                  srai         s4, tp, 20
                  div          s8, s7, s0
                  slti         s7, t3, -1368
                  slli         t4, a6, 27
                  add          a1, a3, s9
                  sub          s7, s2, a4
                  slti         s8, a4, 1538
                  srli         s7, s10, 1
                  andi         t0, s6, -530
                  sltu         s1, s3, t6
                  ori          gp, sp, 378
                  rem          s3, gp, s9
                  srli         s4, ra, 19
                  rem          s2, t5, s10
                  srai         ra, s2, 24
                  sra          ra, t5, t5
                  sub          t2, a2, s0
                  xor          a7, t1, s8
                  lui          a2, 752664
                  or           t0, a1, t5
                  slt          t6, s1, s2
                  sltu         zero, s2, s0
                  andi         t1, a5, 473
                  sll          s4, a5, a7
                  mul          gp, s3, zero
                  sltiu        a7, s1, 971
                  ori          tp, s10, 1880
                  mulh         s2, t3, a7
                  and          s5, a0, ra
                  lui          gp, 222771
                  andi         a0, s3, -804
                  or           gp, a6, a0
                  sltiu        s7, s10, -928
                  div          a3, a5, t5
                  ori          t6, s7, 408
                  andi         s1, a5, -1253
                  add          s11, s7, a7
                  nop
                  sltu         a3, a6, t2
                  sub          t0, t6, t5
                  sltu         t1, a4, s6
                  andi         a7, s10, 1614
                  sltu         ra, a2, sp
                  sra          a7, s4, s9
                  mulh         t4, s7, t2
                  ori          a6, a6, -547
                  divu         a0, a1, t0
                  slt          s0, s11, gp
                  slti         s8, t3, -990
                  xor          t0, s7, s0
                  remu         t2, a2, s9
                  nop
                  sltu         s3, a6, ra
                  andi         s2, sp, -107
                  divu         s0, s2, a0
                  srl          t6, a3, s5
                  sra          a6, s11, zero
                  divu         gp, a6, t6
                  or           zero, a1, tp
                  sltu         s1, a6, s11
                  mulhu        t1, s8, sp
                  xor          s3, s3, gp
                  rem          s0, a6, t4
                  and          gp, s1, ra
                  srli         tp, t1, 26
                  slli         t4, s9, 13
                  or           a7, a0, a3
                  sll          a1, gp, s8
                  slli         t0, s0, 8
                  slli         s2, t5, 25
                  xor          s10, ra, s5
                  srl          s5, zero, s9
                  andi         a6, ra, 1484
                  srl          t1, t6, t4
                  lui          s1, 931963
                  mul          s10, t1, s10
                  srl          ra, t2, s1
                  srai         s7, s9, 4
                  xori         gp, a1, 130
                  auipc        t6, 1010605
                  mulh         t1, t4, s1
                  add          a3, sp, zero
                  div          zero, t2, a1
                  addi         s2, s1, 1963
                  mulh         s4, a2, a6
                  andi         t4, s11, -1274
                  slti         a2, sp, 543
                  nop
                  slt          zero, s2, a6
                  mulhsu       t1, a1, a0
                  remu         a1, a3, tp
                  ori          t0, s5, 1272
                  srai         t0, s8, 3
                  sub          s6, s8, t5
                  lui          t4, 212975
                  mul          s0, s3, s5
                  sltu         t6, s7, t3
                  sltu         t0, s1, gp
                  xor          s3, a5, gp
                  div          a0, s4, s11
                  srli         a0, s6, 7
                  xori         zero, a5, 220
                  mulhu        t4, a5, a3
                  xori         s1, a6, -1513
                  lui          s1, 422894
                  and          sp, s10, t2
                  addi         t6, t1, -2028
                  srai         gp, sp, 13
                  mulhu        s1, tp, a0
                  slli         s4, zero, 13
                  mulhsu       t6, ra, t5
                  divu         ra, a7, a3
                  slt          gp, sp, a5
                  nop
                  sra          t0, a2, a6
                  addi         a6, a1, 485
                  divu         t4, zero, a7
                  slti         t4, s7, 1771
                  remu         a5, t0, gp
                  srli         a1, t6, 26
                  div          s4, tp, t1
                  mul          a3, s10, t4
                  srli         a1, s9, 11
                  sll          tp, zero, a7
                  rem          s8, zero, s11
                  srai         a7, s11, 1
                  remu         s8, s11, a1
                  auipc        s2, 828433
                  div          t2, s4, s2
                  andi         a7, s9, -664
                  sll          t6, t6, s3
                  xor          a6, s0, a1
                  remu         s8, s10, t1
                  auipc        s6, 520103
                  rem          s3, s7, gp
                  or           ra, sp, t5
                  addi         s5, a3, 871
                  lui          a6, 900749
                  div          s2, a1, a3
                  slti         s4, a1, 509
                  slli         a7, tp, 1
                  and          a3, a0, t3
                  andi         ra, s11, -844
                  mulhsu       a5, s10, t1
                  div          a6, ra, s8
                  srai         s10, ra, 15
                  or           t5, t2, a2
                  divu         s6, a2, t3
                  srai         a5, a1, 15
                  mulhu        s6, zero, s9
                  srl          a2, t0, a4
                  sll          s3, a6, a2
                  mulhu        s5, a0, a3
                  slti         ra, s3, 1824
                  add          a7, zero, a3
                  mulhu        ra, s9, zero
                  nop
                  sltiu        s0, s1, -1455
                  xor          s2, a3, gp
                  auipc        sp, 886215
                  xor          s3, s4, a3
                  or           a5, sp, t5
                  addi         zero, s3, -1158
                  slti         sp, t6, -857
                  rem          zero, s6, t6
                  srli         s3, s7, 2
                  divu         t4, s7, s9
                  srli         sp, tp, 6
                  ori          a7, s2, -1876
                  mul          t1, s1, s11
                  xori         a1, s11, 1018
                  add          s11, tp, a7
                  srai         a1, ra, 19
                  and          ra, s1, a4
                  and          s1, tp, s7
                  remu         zero, a5, a6
                  andi         t5, a3, 1104
                  xor          t5, a1, t6
                  mulhu        s7, s8, tp
                  ori          t0, a5, 313
                  addi         s6, s10, 206
                  mulhu        s6, a4, t2
                  andi         s11, ra, 321
                  sll          a7, s2, t6
                  addi         t5, s6, -1983
                  sll          s8, gp, ra
                  srai         t5, a3, 3
                  sll          s6, s10, sp
                  remu         a5, s4, s2
                  sltu         t4, s5, sp
                  sll          gp, s5, a7
                  mul          zero, a6, s2
                  srl          a5, a6, t3
                  slti         a6, s11, 708
                  divu         s11, a3, ra
                  sub          s3, t0, a0
                  auipc        s11, 499974
                  slt          a3, ra, s4
                  sra          t4, a4, s7
                  mulh         a3, gp, t3
                  srli         t1, s4, 23
                  addi         s8, t2, 1603
                  and          a1, zero, ra
                  xori         s3, s3, 374
                  addi         t4, tp, -65
                  add          sp, a1, a0
                  sltiu        s11, s11, 1036
                  sltiu        a2, s3, 1306
                  nop
                  srai         s4, t3, 22
                  mulh         s4, t4, t0
                  div          sp, a2, t6
                  srli         a0, s7, 12
                  auipc        s0, 622125
                  srai         s8, a5, 26
                  sra          s0, t4, s1
                  slt          a5, a1, tp
                  srai         s3, t2, 12
                  mulhu        s7, s3, tp
                  slt          s11, a5, s7
                  rem          s11, a0, t4
                  addi         t4, a7, -106
                  or           sp, gp, gp
                  and          a1, ra, a6
                  addi         gp, a2, -115
                  sltu         t5, tp, ra
                  add          s3, s0, s8
                  sltu         s2, s6, tp
                  mul          s4, a4, t4
                  auipc        a1, 132253
                  sub          sp, s9, t3
                  xori         s6, gp, 1590
                  div          tp, s0, a7
                  mul          a5, a4, t5
                  rem          s2, a1, t1
                  addi         sp, a3, 1196
                  srl          a1, t5, s5
                  mulhu        t4, s4, s1
                  xori         a5, s0, -1097
                  sra          t0, s1, a5
                  mulhsu       s3, t4, s1
                  or           s0, s8, t2
                  mulhu        s5, t6, t0
                  sub          sp, ra, s6
                  ori          t2, s4, -1866
                  mulhsu       t0, t4, s10
                  xor          t1, s1, s3
                  slli         t2, a2, 18
                  div          a2, s4, s0
                  div          a7, a6, t0
                  srai         tp, t2, 31
                  slti         s1, s8, -1865
                  ori          sp, s10, 1835
                  xor          ra, s7, s8
                  andi         s8, t5, 1724
                  andi         s3, t6, -1815
                  sra          a2, s11, t3
                  auipc        t4, 40718
                  remu         s0, s1, s9
                  slt          zero, t0, s5
                  div          a2, a5, a1
                  or           t1, t1, sp
                  sll          zero, t6, s8
                  sll          tp, t6, tp
                  mul          s11, a6, a2
                  sll          a7, tp, t2
                  sltu         s5, a2, s4
                  sll          t4, a5, ra
                  addi         s8, t5, 273
                  xori         tp, s2, 1834
                  rem          gp, sp, t2
                  mul          a1, s10, s4
                  mulhsu       a5, tp, s6
                  sll          a7, s9, ra
                  remu         s5, s11, t2
                  ori          t4, a7, -653
                  auipc        a1, 993055
                  mulhu        t4, a2, s11
                  slti         a7, a3, -1852
                  srli         t2, t3, 9
                  and          gp, t3, a1
                  slti         zero, t0, 1551
                  xor          zero, s0, t0
                  ori          gp, s1, -834
                  addi         t4, t0, -887
                  mulhsu       t4, s3, t3
                  mul          s5, t2, t4
                  mulhsu       t0, s10, t2
                  srl          sp, gp, t0
                  lui          t5, 886732
                  xor          s7, t2, t5
                  or           zero, a2, a4
                  divu         s8, ra, sp
                  sltiu        s2, s10, 670
                  ori          a6, tp, 847
                  divu         sp, s7, s3
                  mulhu        a5, tp, s9
                  mulhu        s7, zero, t0
                  sub          t5, t2, a6
                  sra          s0, tp, s5
                  sub          sp, s10, a6
                  srli         s1, a1, 18
                  xor          s3, s2, t5
                  or           s10, a1, s10
                  slli         t6, ra, 3
                  lui          s8, 273195
                  ori          a5, sp, -779
                  remu         s7, s9, a1
                  srl          a0, s9, t3
                  lui          a0, 515384
                  nop
                  lui          t1, 422744
                  mul          t5, a3, s10
                  sub          tp, a4, s1
                  slt          t4, s9, s9
                  srai         s5, zero, 16
                  andi         a5, a0, -900
                  mul          s5, ra, t4
                  sltu         sp, ra, ra
                  mul          a6, s9, a2
                  ori          s1, a6, 1717
                  mulh         s6, s10, s8
                  remu         a5, zero, s10
                  mulh         s4, s11, ra
                  srli         s1, a2, 15
                  sub          s2, t6, s6
                  remu         s8, s10, a0
                  remu         gp, tp, s9
                  divu         a3, tp, a4
                  add          t6, a0, s9
                  mulhu        a2, t0, a0
                  addi         a6, s10, -1938
                  srai         a0, sp, 20
                  and          s8, zero, a5
                  sltu         s4, s9, s6
                  div          a5, s7, s8
                  sll          t5, gp, a5
                  ori          zero, t3, 991
                  mul          t4, s9, a5
                  mul          s6, t0, t4
                  mul          sp, gp, t2
                  xor          a5, a7, ra
                  div          t0, s3, tp
                  srai         s2, s4, 15
                  divu         ra, s1, t2
                  xor          a1, a6, s8
                  mul          s2, a4, a2
                  mul          s8, a7, s4
                  remu         zero, s5, a3
                  mulhsu       s7, t2, zero
                  nop
                  srl          a7, s0, t0
                  and          t5, tp, t1
                  sltu         s3, s2, t3
                  add          s0, sp, sp
                  sll          a0, t5, a0
                  sltu         t6, s2, s11
                  sub          t4, a4, a1
                  mul          s3, t3, s7
                  mulh         a5, a0, s11
                  srl          gp, s7, t6
                  srl          s2, s7, s0
                  xor          s7, s6, s1
                  srli         gp, gp, 20
                  lui          s0, 645548
                  auipc        t5, 1011499
                  remu         a2, s4, ra
                  slli         t4, s6, 8
                  slli         t0, a6, 21
                  sub          sp, a7, s2
                  mul          a3, a0, a4
                  andi         a1, s10, -594
                  rem          gp, s6, s8
                  slli         s1, s0, 3
                  and          s8, t0, sp
                  or           t1, s5, s4
                  div          t6, zero, s1
                  slti         s8, s9, 1967
                  nop
                  srai         t1, s7, 15
                  mulh         gp, s7, a2
                  remu         s4, sp, gp
                  srai         zero, s6, 22
                  addi         a0, zero, 1311
                  remu         t2, zero, s0
                  and          a6, s1, s2
                  divu         s5, s10, a7
                  mulhsu       a0, s7, s11
                  sltu         s1, t1, ra
                  ori          s1, a3, 1406
                  and          a3, a5, t0
                  xori         s4, sp, -1011
                  mulhsu       a7, t5, ra
                  lui          s6, 675575
                  or           s1, s11, t1
                  slli         a3, a1, 3
                  div          s5, t4, tp
                  mulhsu       s1, s10, ra
                  sltiu        a1, gp, 1065
                  remu         a3, a5, s0
                  addi         s11, s11, 1062
                  srl          zero, a0, t1
                  sub          t0, a7, t6
                  ori          s5, t5, 42
                  slt          gp, s7, tp
                  srl          a3, s7, a7
                  slti         a1, s9, -818
                  auipc        tp, 670706
                  addi         a1, a4, -93
                  slli         s8, a1, 31
                  mulhsu       s8, sp, a7
                  add          a3, s2, s0
                  andi         tp, a1, -1185
                  or           sp, t5, s10
                  add          gp, ra, t6
                  rem          a1, t1, s2
                  divu         a7, gp, s6
                  mulhsu       a2, a7, s6
                  addi         a2, s7, -455
                  mulh         s8, t1, t2
                  auipc        sp, 940872
                  remu         s11, t3, s4
                  and          a0, t0, t1
                  xor          t5, t6, s8
                  ori          t5, a7, 1407
                  div          s2, a0, t6
                  ori          s2, s6, -1848
                  divu         a7, s6, t6
                  slt          t0, tp, s11
                  xori         ra, a4, 1172
                  div          a3, t1, gp
                  sltu         s1, s8, t5
                  or           s8, s6, s8
                  nop
                  andi         s5, tp, -889
                  remu         s3, a5, zero
                  slli         t5, a5, 20
                  sltiu        t1, s4, 1177
                  sub          a5, s9, t0
                  xor          t1, a4, t6
                  mulhsu       s3, s1, sp
                  addi         t5, a2, 1967
                  xor          t4, t4, s1
                  srai         a1, sp, 23
                  sra          s5, s7, t0
                  slt          t1, s4, a0
                  slt          t6, a5, s5
                  sltu         a1, t2, s7
                  mulh         s0, s3, a2
                  mulhu        tp, s11, gp
                  srl          t5, s0, s0
                  mul          s1, s8, gp
                  mul          t2, a0, a4
                  sltiu        a0, s11, -250
                  div          s2, a1, a0
                  rem          t0, s5, s9
                  xor          s11, ra, t1
                  and          a7, a6, a6
                  sltu         t4, s5, t3
                  slt          s1, zero, gp
                  addi         a2, a3, 558
                  srli         t2, s5, 6
                  srli         gp, s10, 1
                  andi         a7, s7, -367
                  xor          a3, t0, a5
                  mulhu        s11, t2, t2
                  slli         s1, s11, 8
                  nop
                  srli         s2, gp, 29
                  div          s4, s7, a4
                  addi         a2, a7, -1813
                  mul          s3, t6, a2
                  xor          a5, s6, a1
                  divu         s10, a1, s11
                  andi         s10, t6, 1316
                  nop
                  nop
                  sltiu        a5, s11, -783
                  div          t0, zero, t3
                  mul          a6, t1, s3
                  add          s10, a1, t4
                  andi         t4, s6, 119
                  and          a6, t3, s6
                  slli         a2, s1, 20
                  andi         s1, t2, -911
                  remu         s3, t1, a7
                  lui          a3, 1032544
                  xor          s1, t6, s11
                  add          zero, s6, t1
                  rem          t6, s5, gp
                  divu         gp, gp, a6
                  lui          gp, 634890
                  mulhu        tp, t3, t4
                  xori         ra, a1, 470
                  mulhu        t1, t1, s9
                  xori         t5, t4, 1793
                  rem          a7, s2, t1
                  auipc        ra, 266775
                  mulhsu       s10, a6, zero
                  slli         tp, s8, 3
                  and          s8, s9, tp
                  ori          t5, a0, 935
                  andi         s10, s11, 1993
                  xor          a6, a1, s2
                  mulh         a7, s5, s8
                  mulhsu       s7, s11, ra
                  addi         s8, s7, -335
                  sltu         a1, zero, s1
                  sll          t5, t5, gp
                  divu         s10, t3, a5
                  sub          t2, t3, t2
                  slt          ra, s3, s8
                  div          s10, sp, s3
                  add          a7, s0, t6
                  slt          a1, zero, s10
                  nop
                  slli         a1, a5, 15
                  rem          a2, s1, t4
                  addi         s2, t5, 2
                  mulhsu       t0, zero, t1
                  slti         s5, t1, -1220
                  srli         a2, s6, 2
                  slti         t2, a2, 1589
                  sub          gp, s8, sp
                  rem          s4, t5, gp
                  xori         s11, zero, -1913
                  or           t0, s11, s2
                  xori         s4, gp, 254
                  srai         zero, t1, 26
                  div          t1, t3, a2
                  mulhu        a5, t3, s3
                  slli         s11, s8, 20
                  xori         s8, s5, 1802
                  divu         s3, ra, s5
                  srai         zero, zero, 17
                  sll          t6, s4, t4
                  xori         t4, s6, -1405
                  addi         ra, s5, -447
                  andi         a3, s1, -1532
                  mulh         a5, ra, a7
                  srai         a7, s9, 12
                  or           t5, gp, s2
                  lui          tp, 770637
                  xor          s3, t4, s4
                  xor          s4, s4, t5
                  mulhsu       tp, s0, t3
                  slti         zero, a6, 1647
                  and          t5, s8, a5
                  rem          a5, s3, ra
                  slt          a5, s0, s8
                  mul          a2, s5, s8
                  mulhsu       s8, s0, a6
                  andi         s5, a0, 1209
                  srli         s6, a5, 1
                  remu         s3, s10, a2
                  sra          s4, s5, a3
                  remu         t0, s0, a3
                  lui          sp, 1044839
                  sub          a7, s11, t1
                  xor          gp, t6, s5
                  addi         a0, s5, 779
                  divu         gp, s5, s6
                  auipc        s4, 446416
                  auipc        gp, 963477
                  mulh         t4, s7, s9
                  and          s10, zero, s11
                  xori         a6, s0, 242
                  lui          a0, 767549
                  nop
                  srli         sp, s3, 24
                  and          gp, a3, s8
                  nop
                  sll          a2, s5, a2
                  mulhu        t1, s11, s11
                  ori          sp, a2, 1894
                  auipc        s2, 77276
                  sltu         tp, s0, a0
                  and          a0, s3, a1
                  srl          s1, s6, a4
                  lui          tp, 900641
                  sub          t6, t2, gp
                  addi         s6, t6, -1114
                  nop
                  sra          t1, sp, t4
                  sltu         a2, s7, s1
                  sub          a1, s9, s1
                  srai         s6, s6, 27
                  sub          a0, s0, a4
                  remu         s10, t6, a5
                  sub          s1, s8, a7
                  sub          gp, ra, t0
                  srli         s6, s10, 26
                  mulhu        a2, s7, s4
                  xor          s0, s8, sp
                  or           s11, a4, t4
                  slti         gp, sp, 923
                  mulhu        a2, s10, s8
                  xori         sp, s7, 871
                  lui          s8, 636307
                  divu         s1, s1, s9
                  sub          a6, a2, s11
                  div          s7, s2, zero
                  andi         t1, t0, -1250
                  srli         a3, s4, 31
                  sll          t5, s8, a0
                  mulh         sp, a7, ra
                  srai         a2, a0, 2
                  andi         s0, a7, -1543
                  nop
                  srl          a0, zero, s9
                  srli         s4, a7, 3
                  remu         s6, t5, tp
                  ori          s11, s2, -50
                  or           s11, t5, s7
                  srl          s7, t1, s5
                  divu         a6, a7, a6
                  mulhu        s6, t2, zero
                  add          a5, a2, a3
                  and          s1, t0, s6
                  mul          s7, tp, s2
                  xor          t4, s7, t3
                  sra          t1, s9, s2
                  div          t6, t4, s8
                  andi         a5, t3, -959
                  mulh         a3, a7, s2
                  or           a2, t5, s3
                  addi         a5, s8, 987
                  div          s5, t2, s5
                  and          tp, a3, s10
                  xori         a0, t5, 1841
                  mulhsu       gp, s9, a6
                  addi         zero, gp, -265
                  srai         t2, s0, 23
                  sub          s2, t3, s4
                  srai         s4, s9, 23
                  ori          gp, t3, -1787
                  sltiu        s7, a2, -552
                  mulhsu       gp, t2, gp
                  auipc        tp, 959586
                  or           a2, s2, ra
                  div          zero, a1, t6
                  mulh         a6, t1, t5
                  or           s8, s8, t6
                  divu         a3, s3, s9
                  remu         tp, s4, a7
                  srl          a1, s9, t6
                  and          t5, a0, t2
                  addi         t6, a5, 1312
                  sltu         s7, a0, t2
                  sll          s2, a7, a0
                  sltu         a0, a0, t5
                  xor          a0, s11, ra
                  lui          a2, 571180
                  ori          a7, s10, -1671
                  mulhu        s3, s2, t2
                  sra          s10, a6, a1
                  srli         ra, a3, 21
                  mulhu        a1, t4, a6
                  remu         sp, a0, a2
                  sll          s2, s4, a7
                  sltu         ra, t2, s8
                  sltu         s5, t6, s2
                  mulh         s11, s8, t2
                  sltiu        tp, t3, 771
                  sltiu        s11, t0, -34
                  ori          s2, t4, 613
                  and          s1, t6, a7
                  mulh         t0, s8, ra
                  mulhu        s5, sp, tp
                  mul          a2, s0, t2
                  xor          t5, t0, t1
                  srai         t6, a4, 13
                  sub          a1, t5, t1
                  sltu         t6, s7, s8
                  remu         ra, t4, tp
                  sltiu        s1, a2, -1913
                  xori         a0, t0, -48
                  mul          s6, s2, a0
                  and          t2, tp, s5
                  div          t6, s5, a2
                  slt          s11, a0, t3
                  rem          a7, t3, s10
                  slt          t2, t0, s8
                  ori          s11, a1, 81
                  sra          s5, a4, s7
                  srli         s8, a2, 24
                  mul          s2, a1, a2
                  or           s3, t6, sp
                  mulhu        gp, a4, s10
                  srai         a0, t5, 13
                  andi         t4, t2, -689
                  and          t1, s6, s4
                  sltiu        a1, sp, 433
                  sra          a1, t5, s4
                  addi         sp, t3, 357
                  and          s7, s1, t2
                  slli         a7, zero, 7
                  divu         a5, a5, t6
                  mulhsu       s11, sp, zero
                  srl          s4, s5, a5
                  slti         a7, zero, 1334
                  slli         t5, t0, 14
                  sltiu        ra, s8, -1286
                  addi         a3, ra, 1422
                  slti         t2, ra, 812
                  lui          ra, 658838
                  xori         sp, t3, 1628
                  and          s5, t6, s3
                  slti         a1, s6, 254
                  sra          a5, s5, a3
                  div          a7, a1, a5
                  sra          t6, t3, a4
                  divu         a6, t3, s5
                  mul          s1, gp, gp
                  remu         s10, s1, s9
                  addi         s4, s7, -1220
                  slt          gp, t3, s0
                  lui          a2, 904004
                  srli         a5, s2, 19
                  srl          zero, t1, a7
                  mulh         s7, a0, t2
                  or           s10, t4, tp
                  mul          a2, a7, a6
                  mulh         a3, s5, s10
                  addi         s2, zero, 1751
                  sub          s5, a7, tp
                  auipc        gp, 149501
                  sltiu        gp, ra, 293
                  auipc        a0, 335493
                  ori          s4, s3, -166
                  or           s3, t1, a7
                  remu         t6, t4, s4
                  srli         a5, a0, 21
                  srli         s3, s3, 3
                  rem          a1, a1, a7
                  auipc        t2, 199794
                  rem          s1, t4, s6
                  sltiu        s10, a6, -1551
                  sltiu        s1, ra, -1131
                  slt          zero, t3, ra
                  slti         zero, s11, 318
                  mulhu        s6, s0, tp
                  xori         t4, a4, -1951
                  remu         s8, s3, gp
                  srli         a3, s2, 4
                  and          tp, s9, t1
                  mul          s8, t2, s1
                  mulh         a6, zero, a5
                  or           t0, s0, t3
                  sra          gp, a3, t0
                  sltiu        a0, t3, 977
                  slti         s8, a0, 1456
                  remu         s8, s3, s9
                  add          tp, a6, t1
                  nop
                  and          t6, s11, s10
                  sra          t1, ra, gp
                  sll          s4, s6, s9
                  sltiu        a3, tp, 1255
                  rem          t1, a4, t2
                  nop
                  divu         s6, s11, s2
                  srl          t4, s5, t0
                  divu         s7, t5, a1
                  srl          s2, s6, s6
                  addi         t2, a4, 1941
                  mulhsu       s11, s5, a1
                  slli         t4, s7, 28
                  addi         t5, t5, -4
                  srli         a2, s10, 4
                  addi         t0, zero, 806
                  sll          s0, t3, s2
                  and          tp, t2, s3
                  srli         a6, s0, 19
                  slli         sp, a1, 2
                  sltu         a7, a7, a4
                  lui          s5, 52588
                  slli         t6, s9, 14
                  slt          s3, gp, s7
                  sll          a6, s8, s5
                  srl          gp, t0, t6
                  sltu         s0, s11, gp
                  auipc        a2, 147415
                  andi         zero, zero, 1412
                  auipc        t5, 161158
                  mul          s1, a7, t6
                  add          s6, s7, a3
                  mulhsu       a3, s9, t5
                  sub          a2, s0, s5
                  mulhsu       s4, s7, t0
                  sltiu        gp, s11, 1249
                  srai         a5, a6, 29
                  sltiu        a2, ra, -976
                  nop
                  srl          s1, s6, sp
                  mulhsu       s2, s8, s11
                  add          t1, a5, t3
                  mulhsu       t4, s2, ra
                  ori          zero, s5, -1602
                  divu         s10, s10, a6
                  sltiu        t0, s2, -229
                  andi         t1, s8, 1698
                  remu         s2, sp, s11
                  xori         t5, a7, 223
                  mulhsu       a6, s3, zero
                  andi         a0, sp, -1082
                  divu         s7, sp, zero
                  and          t2, a0, a6
                  xori         a3, a7, -1034
                  andi         s6, a3, 799
                  mulh         a6, tp, ra
                  sltiu        t1, a6, -1623
                  sub          t4, a1, a0
                  divu         s1, s7, t1
                  slti         a7, s1, 1555
                  remu         s3, a0, t0
                  ori          s3, tp, 118
                  srl          s10, ra, s10
                  or           ra, a5, a7
                  sltu         t4, a5, s10
                  slt          t6, a2, s1
                  slli         a7, t5, 6
                  srai         s5, s6, 13
                  slli         s10, a5, 23
                  sra          a5, gp, s2
                  sltu         s4, t2, s7
                  slli         a2, t2, 22
                  xori         s5, ra, -165
                  xori         a6, a2, -1694
                  sub          gp, s0, s0
                  sub          t1, a1, s0
                  srl          a7, a2, t1
                  or           t1, s3, s10
                  mulhsu       a2, t1, s9
                  and          tp, t0, s4
                  addi         s0, a6, 516
                  slli         s6, gp, 8
                  lui          a6, 814680
                  div          gp, tp, s1
                  mulhu        gp, s6, t3
                  slli         s0, sp, 30
                  div          s8, tp, s0
                  mulhsu       s4, tp, s7
                  mul          sp, a0, a3
                  sltiu        t1, a5, 42
                  sltu         s4, t4, zero
                  sub          s1, gp, a1
                  divu         t1, t0, a6
                  ori          t5, s1, -1632
                  slti         t2, gp, -912
                  sub          s0, a5, a6
                  mulhsu       s7, t2, s9
                  and          s0, a1, t3
                  andi         s4, t6, -1104
                  nop
                  andi         s3, s9, 414
                  add          t2, t1, s5
                  srl          s7, s10, ra
                  lui          s1, 829429
                  mul          s3, gp, s5
                  mulhu        s4, a2, a5
                  rem          gp, s1, s1
                  sltiu        s8, a5, -802
                  srli         s4, s9, 8
                  xori         s1, zero, 1676
                  slti         s11, s1, -682
                  div          s5, s7, s6
                  sltiu        a5, s0, 455
                  addi         ra, tp, 1981
                  mul          s7, s4, s11
                  auipc        a1, 1038239
                  slti         a3, sp, 473
                  nop
                  ori          a2, s4, -326
                  srai         t0, s3, 30
                  slli         zero, a6, 19
                  add          zero, t1, sp
                  sll          s0, a2, tp
                  or           tp, a0, t3
                  rem          a7, s8, s1
                  sub          t5, s1, a6
                  srli         s0, t0, 4
                  sub          zero, t4, t4
                  mul          t6, a4, s6
                  add          s1, a2, t0
                  sra          s8, a5, s9
                  srai         t4, gp, 30
                  sra          a3, s9, s1
                  sra          s8, a4, t1
                  sra          gp, s7, s9
                  andi         gp, sp, 534
                  or           sp, s8, a3
                  srai         s0, t2, 9
                  sltiu        tp, a6, 1079
                  ori          a7, s11, 468
                  rem          tp, s6, a7
                  sub          a1, a0, t5
                  slti         s2, s9, 2025
                  mul          a2, a2, t3
                  slt          s10, a5, t5
                  remu         s5, s9, s7
                  sltiu        a3, a3, 1029
                  lui          s2, 759529
                  mul          a7, t2, s10
                  sltiu        tp, sp, -139
                  addi         s1, s4, -455
                  rem          ra, a2, a0
                  slli         a0, t6, 3
                  sll          s4, tp, t6
                  slti         s11, s7, -1645
                  sra          a0, t3, zero
                  slt          gp, sp, t4
                  slti         t0, zero, 229
                  mulhsu       t6, s2, t6
                  srl          ra, ra, a7
                  divu         a5, s9, s2
                  auipc        s5, 657455
                  addi         gp, a4, 371
                  mulh         s5, gp, s10
                  sltiu        a3, t5, -1779
                  mulhu        ra, t3, s9
                  addi         gp, s3, -1438
                  sltu         s10, s4, t6
                  xor          zero, s3, a2
                  ori          zero, a5, -1334
                  sltu         s11, s1, s1
                  andi         t0, a6, -1338
                  mul          gp, s4, a0
                  sll          s0, a6, sp
                  divu         a2, s10, zero
                  slt          t1, zero, zero
                  sll          s8, s2, s11
                  sltu         s4, s7, s10
                  rem          t0, s9, a7
                  srai         s5, s7, 4
                  lui          s8, 689871
                  mul          a0, zero, s3
                  sltu         s10, s9, t2
                  sltu         s5, s7, a1
                  mulhsu       a5, s9, ra
                  sltiu        s4, s4, -2017
                  auipc        t2, 82583
                  sltu         t6, t0, tp
                  slt          ra, s7, s7
                  slt          tp, sp, a1
                  srl          t2, tp, t2
                  srli         a1, a2, 27
                  sll          t1, s4, a3
                  srai         s2, t0, 28
                  divu         a5, s7, t1
                  srli         a6, a7, 21
                  srai         a1, t3, 29
                  and          s6, s6, zero
                  add          t1, s10, ra
                  andi         a5, s4, 1773
                  srl          s3, sp, s7
                  or           s8, s3, s11
                  mulhsu       t1, sp, s9
                  rem          s1, t0, s9
                  slli         t1, t1, 3
                  mulh         ra, a3, s1
                  sub          t5, s11, s8
                  ori          s5, s6, -1898
                  mulhsu       t5, a5, a4
                  andi         a0, a0, -745
                  srli         t4, tp, 28
                  xor          ra, s1, gp
                  slli         zero, s7, 14
                  divu         s2, ra, s7
                  addi         s4, s10, 374
                  mul          a6, t2, sp
                  mulhsu       a6, a4, a4
                  add          s11, t1, s0
                  sll          s5, a4, s8
                  mulh         a2, a5, t2
                  sltu         a0, s2, sp
                  mulhsu       s4, gp, gp
                  addi         t0, a2, 1977
                  lui          s2, 608436
                  div          s4, zero, a6
                  andi         t2, t6, -92
                  slli         tp, t5, 16
                  div          t4, a1, sp
                  mul          t4, a2, t0
                  mulh         ra, t2, a6
                  or           t5, a7, a1
                  addi         a2, t1, -1894
                  div          a7, a0, a1
                  ori          t4, s3, 1001
                  slli         s6, s11, 19
                  divu         s3, a5, a1
                  sra          zero, a4, t1
                  sra          s4, a2, zero
                  xor          s2, s2, s0
                  slli         s1, t6, 2
                  mulhu        t2, a7, s7
                  sltiu        t1, gp, 1509
                  sra          s10, t6, a7
                  add          s8, s10, s2
                  srai         a5, t5, 11
                  and          s4, t6, s9
                  mulh         s0, s6, s9
                  remu         t5, t4, t4
                  or           s1, a2, s7
                  srai         s3, sp, 11
                  sub          sp, t3, t0
                  mulh         t5, s1, sp
                  divu         s3, a4, a1
                  remu         a7, a6, a6
                  add          s11, s2, a7
                  andi         t1, t6, -1282
                  andi         t2, s5, -858
                  xor          ra, a7, s1
                  slli         s2, s2, 1
                  and          a1, s7, s0
                  sub          a5, sp, t3
                  mul          zero, s5, s5
                  lui          s4, 280199
                  lui          s7, 331548
                  divu         s2, s11, a0
                  slt          t4, s6, t3
                  addi         zero, a3, -371
                  xori         a5, a3, -1315
                  andi         s10, tp, 1721
                  mul          t2, s8, t4
                  andi         s3, sp, 287
                  auipc        t0, 694175
                  slli         a6, a7, 28
                  srli         t4, t3, 29
                  mul          t6, s6, s8
                  and          a0, zero, t5
                  mul          s1, s8, t5
                  mulh         s11, zero, t2
                  mul          zero, s9, s6
                  xor          a0, tp, a3
                  lui          gp, 40
                  sltiu        gp, t2, 440
                  and          sp, s0, sp
                  mulhu        s2, s10, a1
                  mul          a0, t4, a5
                  slli         s1, s2, 30
                  slli         s7, a5, 1
                  ori          s4, s8, 1462
                  sltiu        t2, sp, -1319
                  auipc        s0, 811323
                  div          s1, s0, s8
                  slt          s8, ra, s11
                  xor          s3, s3, a7
                  remu         tp, a0, s9
                  mulhu        s8, s0, s2
                  rem          s0, t3, a1
                  divu         t5, t2, s6
                  srli         a0, s7, 15
                  or           zero, zero, t4
                  div          s4, a5, t3
                  remu         s6, a0, a5
                  divu         t0, s1, s11
                  auipc        s10, 843960
                  remu         a2, sp, s3
                  srl          sp, tp, a6
                  auipc        s7, 273870
                  xori         a0, a3, -909
                  or           a3, zero, a7
                  mulhu        t5, s6, t5
                  mulh         s11, s8, s7
                  and          s2, s4, t1
                  sub          s6, s3, a3
                  lui          a0, 349809
                  divu         s4, t4, t3
                  mulh         a2, zero, ra
                  sltiu        s10, s9, 140
                  auipc        a2, 723307
                  nop
                  addi         s2, a5, -1854
                  slli         a5, s9, 28
                  ori          s6, a0, 1961
                  xor          a5, s9, s9
                  slli         a7, a5, 13
                  sll          s6, ra, s5
                  nop
                  and          s5, a2, s0
                  div          s3, t0, a6
                  slli         gp, s9, 22
                  xor          t4, gp, a6
                  mulhsu       a2, gp, s8
                  addi         s5, a0, -1974
                  mulh         s4, sp, s11
                  sltu         zero, a5, a4
                  nop
                  remu         t1, s4, a5
                  add          t1, s11, zero
                  mul          t5, t6, a6
                  srai         t2, s8, 22
                  mul          t6, zero, s1
                  ori          gp, a7, -937
                  mulhu        s5, s5, t1
                  ori          zero, s7, 1183
                  lui          t5, 757309
                  addi         t6, t2, -375
                  auipc        a7, 591168
                  slt          s11, s5, s6
                  slli         s4, s10, 20
                  div          a3, a0, t2
                  sltiu        tp, t6, -1942
                  or           a0, a5, a5
                  addi         a6, a7, 1557
                  divu         t6, a4, tp
                  srli         s5, t6, 8
                  mulhsu       a7, sp, s7
                  addi         t0, s8, 9
                  xori         sp, t5, -612
                  add          a2, a3, a5
                  mulhu        a2, a6, a0
                  and          s1, gp, s4
                  add          t1, s4, s0
                  add          a0, t5, s5
                  slt          s11, a4, a3
                  auipc        t2, 1012749
                  mul          a3, s1, t1
                  or           s5, s0, s4
                  xor          s10, a2, s9
                  mulh         t1, tp, t3
                  mul          sp, t5, t0
                  andi         a2, s7, 1480
                  xor          ra, s6, s4
                  mulh         a2, a3, s6
                  addi         s2, t2, 697
                  sra          t2, s0, t4
                  or           gp, s1, ra
                  rem          s1, t1, a7
                  sltu         a5, t2, s8
                  rem          s0, a3, s8
                  and          a6, s0, a0
                  sub          t4, a7, a5
                  sltu         tp, a0, s1
                  nop
                  andi         a5, s11, -1202
                  mul          s2, s9, s7
                  sra          a5, a5, s0
                  auipc        a2, 416672
                  srai         zero, s5, 4
                  or           a7, s1, a5
                  lui          t6, 544642
                  mul          a7, a3, s11
                  sltiu        t1, s2, -881
                  xori         s2, zero, 1071
                  and          t4, s9, s4
                  srl          s10, s6, a1
                  srli         s2, zero, 6
                  auipc        t2, 158642
                  srai         s8, s10, 24
                  mulhu        s11, s10, ra
                  sll          t5, a1, s6
                  mul          s0, s0, t6
                  sltiu        t6, s3, -1557
                  add          s0, a0, s9
                  srai         s1, a2, 0
                  auipc        a6, 457595
                  mul          a2, s1, t0
                  and          a5, a2, s11
                  auipc        a5, 934761
                  sltu         t5, tp, s8
                  addi         a5, sp, 114
                  mulh         a6, s11, a1
                  addi         t0, a0, -189
                  addi         s0, tp, -1090
                  mulh         t2, t6, s11
                  andi         s11, a1, 79
                  and          s1, s10, t6
                  sub          s5, s0, s0
                  mulhu        s11, a2, a2
                  sltu         s1, a3, s10
                  and          gp, s7, s9
                  mul          t0, a5, a5
                  mul          s4, a1, sp
                  srli         t5, t0, 27
                  srl          s4, a1, s10
                  srli         t2, a1, 31
                  mul          s7, ra, t3
                  srai         s0, t2, 29
                  mulhsu       ra, a7, t4
                  sltiu        s6, s1, -182
                  xor          a7, t4, t0
                  mulh         a0, ra, t0
                  sltu         gp, s11, s1
                  divu         ra, tp, ra
                  andi         a1, s3, -1736
                  xor          a0, t6, t4
                  lui          sp, 983068
                  divu         a7, s9, a1
                  sra          s1, s0, s10
                  divu         s7, t6, s3
                  lui          s11, 267217
                  sltiu        s8, s10, -986
                  sub          s6, tp, a6
                  xor          a2, sp, gp
                  srl          s1, a2, t6
                  rem          t2, a7, s7
                  and          tp, s1, s2
                  sra          t5, t1, s10
                  srl          t4, sp, t1
                  slti         a3, s3, -417
                  addi         t1, s1, -1566
                  auipc        s1, 200389
                  div          t5, a3, t0
                  mulh         s4, s11, a6
                  auipc        s11, 765977
                  add          s6, t4, a6
                  srai         t0, s5, 21
                  andi         tp, t0, -576
                  srl          ra, gp, s10
                  or           zero, s9, t5
                  slli         gp, s2, 28
                  xori         s11, s10, -2046
                  div          sp, sp, s11
                  srai         a0, s10, 20
                  auipc        ra, 506538
                  srl          s1, t1, s2
                  xor          s11, s0, a5
                  srai         t0, a4, 13
                  srli         s7, sp, 11
                  slti         zero, sp, -1681
                  xor          ra, a5, s0
                  and          t6, s5, a5
                  xor          s6, a4, t5
                  or           a2, t6, s5
                  slti         a3, t0, 2037
                  mul          s5, s9, sp
                  mulhu        s0, s4, s2
                  srai         s7, t5, 4
                  and          t5, t0, a7
                  slli         s8, s2, 8
                  slti         a2, sp, 1455
                  lui          a2, 885983
                  sltu         a0, gp, a6
                  mulhu        sp, s9, s5
                  div          tp, t2, s3
                  xor          a6, a1, sp
                  ori          a0, a3, 1845
                  xor          s1, t6, t5
                  mul          t4, s3, t2
                  lui          t6, 376649
                  xori         t1, tp, -568
                  sltiu        t2, tp, -187
                  mul          a2, s1, s4
                  srl          t0, a6, a3
                  slli         s11, zero, 29
                  srli         gp, t5, 12
                  sll          a6, tp, tp
                  remu         s5, s11, s5
                  xor          a0, a1, t2
                  div          s8, gp, s11
                  sltiu        a7, s4, -1702
                  sltiu        s8, s7, 224
                  remu         s10, a1, s4
                  slt          s2, t0, s4
                  ori          t2, s1, 814
                  ori          sp, s0, -30
                  slti         t6, s3, -1908
                  sll          s8, s2, a6
                  mul          a1, t2, t2
                  mulhu        a5, s10, ra
                  rem          a0, a7, a7
                  rem          a0, a4, s0
                  ori          a0, a4, -33
                  rem          s8, t5, ra
                  srl          t2, a2, s10
                  mulh         s4, zero, t1
                  ori          s6, s8, -107
                  ori          ra, s4, 1851
                  srai         a7, a0, 7
                  andi         ra, t6, -355
                  rem          sp, s8, t5
                  remu         t2, a5, a1
                  srli         ra, s7, 17
                  ori          s8, s0, -292
                  div          a1, t1, sp
                  or           s7, zero, a2
                  div          a7, t2, zero
                  slli         a7, s3, 2
                  srli         s5, t5, 11
                  ori          s5, s5, 228
                  mulh         s4, s9, a2
                  and          s8, s8, s3
                  andi         s8, a3, 1129
                  srli         s4, a0, 14
                  sub          a0, s10, s3
                  rem          ra, zero, sp
                  xori         tp, s9, 1156
                  mulhu        s6, a3, t4
                  sltiu        t6, t1, -2048
                  mulhsu       s10, a7, t2
                  sltu         ra, sp, a2
                  rem          s0, t2, a5
                  srl          s4, t5, a3
                  div          s11, s4, s4
                  mulhsu       s0, a2, a7
                  ori          a0, sp, 411
                  sra          a2, a1, a2
                  lui          s2, 1013332
                  mulhu        ra, a7, s4
                  srli         t5, tp, 2
                  xor          gp, a6, a5
                  srli         t5, s7, 9
                  sltiu        s1, t3, -1833
                  slli         s3, t2, 8
                  xori         a5, ra, -883
                  div          t5, a4, sp
                  add          s1, t6, s4
                  srl          a2, t2, sp
                  sra          t5, a6, s11
                  and          s1, t0, ra
                  slti         t4, a1, -117
                  sub          s1, t6, a1
                  nop
                  slli         t4, zero, 25
                  sltu         a0, s3, s7
                  slli         a5, zero, 28
                  remu         s4, t5, s7
                  auipc        tp, 561679
                  srai         a3, s1, 12
                  ori          t0, s2, 1713
                  and          zero, s5, t1
                  sltiu        s1, a0, 626
                  nop
                  sll          a2, a2, s6
                  slli         t6, gp, 20
                  nop
                  sub          a2, s8, a5
                  auipc        s3, 738766
                  nop
                  auipc        ra, 578669
                  sltiu        zero, s5, -1796
                  sll          ra, s4, a6
                  sub          s7, a1, s10
                  sra          sp, s1, t5
                  mulh         s2, s8, a6
                  sltu         s10, gp, gp
                  mulh         t4, t4, s3
                  mulhu        a5, s2, a5
                  rem          a2, s10, s6
                  rem          s1, s1, zero
                  divu         t4, s11, s4
                  mulhsu       t5, a2, t1
                  remu         t0, s0, t0
                  xori         ra, a3, -1361
                  srl          s7, s7, tp
                  mulhsu       s4, a0, s1
                  remu         s4, t6, s2
                  sra          s10, s5, s1
                  mulh         a6, a6, gp
                  slt          t2, a7, a2
                  srl          s4, s11, s2
                  remu         t4, s10, t0
                  slli         t5, t2, 3
                  ori          zero, s4, 1648
                  xor          t6, a7, sp
                  andi         gp, t5, -662
                  mulhu        t4, s2, s9
                  slti         s4, s2, 1610
                  and          t5, s1, s2
                  sub          s0, t6, s10
                  srli         s10, a4, 3
                  nop
                  mulh         s3, t0, s6
                  remu         s1, t4, s4
                  rem          t5, s9, s7
                  sra          s8, s6, s2
                  slli         a7, sp, 4
                  slt          s5, sp, a3
                  xori         s7, a1, -926
                  divu         a0, t5, s2
                  mulh         a1, t1, s2
                  xori         s1, s3, -661
                  sll          s3, t6, s3
                  sltiu        t4, a4, 1727
                  xor          t4, s4, t5
                  sra          sp, s6, s4
                  sra          s1, s7, ra
                  slt          s11, s2, ra
                  addi         t6, zero, 583
                  auipc        t4, 831592
                  or           s1, s4, s9
                  auipc        s8, 734074
                  sltiu        gp, s2, -991
                  add          s3, t5, s4
                  sra          s11, s6, ra
                  srai         t4, s3, 19
                  mulhsu       a5, s3, s1
                  auipc        s6, 427776
                  divu         ra, a5, t0
                  sltiu        a6, zero, -2017
                  ori          a5, s3, -137
                  lui          t2, 767632
                  add          s10, a6, sp
                  or           s3, s6, a0
                  lui          a7, 220560
                  sltiu        a5, a2, 1294
                  mul          s4, s5, s6
                  ori          s11, s4, -472
                  sub          t6, a5, s3
                  sll          s7, t5, s5
                  srli         a5, s6, 16
                  divu         s5, t5, t1
                  or           gp, a7, t0
                  or           zero, s11, a7
                  and          t4, sp, gp
                  sub          s3, a5, t1
                  slti         t5, t1, -1496
                  mul          s5, t5, t6
                  slti         s11, a1, 210
                  div          a1, zero, a1
                  slli         a7, a3, 29
                  mulhsu       s5, s9, tp
                  srai         s6, a5, 30
                  mulhsu       s2, s4, s1
                  sll          s4, s11, t5
                  div          zero, a0, s10
                  mulhu        s3, s2, a4
                  sltu         a5, s10, s6
                  xor          s10, s2, t3
                  lui          t6, 324489
                  and          t2, s8, s2
                  nop
                  slli         tp, t1, 10
                  mul          t1, a5, t4
                  addi         sp, tp, 561
                  srai         s7, s9, 12
                  xor          t5, a0, s6
                  remu         s7, s3, s7
                  slt          a2, s1, t4
                  srl          a7, t0, s5
                  and          t2, s5, a4
                  sub          s4, a4, s11
                  ori          s8, ra, -1612
                  lui          s4, 934903
                  or           s1, s3, t6
                  mulh         a1, s4, s5
                  mulh         a1, a3, s8
                  slli         a5, t1, 31
                  sltu         a6, gp, s8
                  sub          ra, tp, s8
                  divu         t1, s9, t5
                  or           t5, a2, a5
                  mulhsu       a7, s9, s0
                  remu         s8, t4, t3
                  remu         zero, a5, a3
                  mulh         t5, tp, a5
                  mulh         s4, a2, a0
                  xor          a5, t1, tp
                  remu         a7, s7, t4
                  sub          s10, s1, s8
                  sltu         t2, tp, t1
                  mul          t1, t2, t3
                  divu         s4, a5, s3
                  nop
                  sra          t0, t2, s6
                  remu         s5, sp, t0
                  slt          t0, ra, a6
                  sll          sp, t3, a6
                  nop
                  sll          t6, ra, tp
                  mul          s5, a0, a6
                  sub          sp, a5, zero
                  xor          s0, t2, t1
                  auipc        s6, 406075
                  auipc        s4, 849724
                  srli         tp, s8, 31
                  div          s2, t0, s0
                  slt          s2, s2, s9
                  addi         s8, t6, 1463
                  auipc        a6, 280733
                  addi         s8, s1, -1912
                  slli         s5, a7, 7
                  mulhsu       ra, a7, a1
                  mulhu        t4, gp, sp
                  and          a5, gp, s2
                  slt          ra, a2, zero
                  sll          s11, a6, a7
                  divu         s11, a5, t5
                  auipc        tp, 525342
                  auipc        s3, 242016
                  div          s5, t4, a1
                  slti         t4, t5, 1777
                  mulhu        s1, t6, s2
                  mulh         t0, s6, a0
                  xor          s1, s3, s6
                  sll          zero, sp, s5
                  xor          t2, zero, a4
                  slt          ra, s3, a2
                  addi         s2, a5, 144
                  srl          s8, tp, zero
                  ori          a2, s7, 870
                  slli         t0, a7, 26
                  add          s1, a4, a3
                  or           a5, t0, s7
                  auipc        s10, 405966
                  srl          s5, s11, ra
                  rem          s11, zero, sp
                  mulhu        s1, s1, zero
                  lui          a2, 246474
                  andi         a1, s1, 861
                  mulh         gp, s10, s6
                  divu         t5, a6, t4
                  mul          s7, a0, s3
                  or           s3, s4, a3
                  ori          a7, gp, -2023
                  slti         s6, a7, -1859
                  sltiu        t4, s11, 372
                  srai         t4, t0, 19
                  addi         s8, t1, 480
                  sltu         t5, t1, a6
                  andi         ra, t5, 1727
                  sltu         a7, s2, tp
                  xori         sp, s6, -1889
                  sra          s7, s10, s6
                  and          sp, a3, gp
                  slt          t4, zero, s6
                  srli         a2, a2, 10
                  or           zero, ra, s10
                  and          s1, sp, ra
                  mulhu        s5, gp, a2
                  srl          t4, t4, s0
                  or           s8, s3, s5
                  srli         a3, a3, 20
                  mulhu        t0, s3, a4
                  lui          s0, 599293
                  xori         t2, s4, 1519
                  slli         s5, zero, 17
                  sra          s4, t1, a1
                  lui          s4, 279018
                  slti         s11, zero, -710
                  slli         t5, s7, 16
                  lui          s11, 111607
                  remu         a5, s7, t3
                  rem          s1, s1, s10
                  lui          s1, 27474
                  add          ra, a1, sp
                  nop
                  mulh         a5, t1, s7
                  sltiu        s10, ra, 1313
                  auipc        a2, 1034964
                  srai         a2, s2, 10
                  sub          s7, t0, a3
                  slt          sp, a6, s6
                  rem          sp, a4, t4
                  sltiu        sp, a3, 2026
                  ori          s11, s2, 21
                  mul          t5, s4, s4
                  divu         s0, tp, gp
                  ori          a0, t5, -2032
                  slti         s0, a4, 286
                  remu         sp, t3, s3
                  andi         a1, s2, -839
                  sub          a6, sp, gp
                  srai         a3, s7, 21
                  sra          t4, a6, a5
                  sub          a0, t0, t2
                  sltiu        sp, t2, 505
                  xori         t5, t3, -1228
                  or           a2, gp, t5
                  srl          t6, s3, t1
                  slti         a5, gp, -433
                  auipc        t0, 108044
                  lui          gp, 711440
                  ori          s5, t6, -1373
                  auipc        s2, 499587
                  sltu         s1, a1, t2
                  and          a7, ra, s10
                  add          t4, zero, t1
                  mulh         t1, a0, t2
                  srl          s8, a4, zero
                  andi         s0, s3, 791
                  sll          s6, zero, t3
                  remu         ra, a5, a1
                  slt          s4, t3, gp
                  remu         gp, s11, s11
                  rem          t0, s1, t4
                  div          s4, sp, a4
                  or           t5, s2, a4
                  xor          t6, tp, a7
                  sltiu        s6, t5, 1539
                  andi         s2, t3, -65
                  and          s11, t3, s11
                  ori          t4, t3, -2042
                  nop
                  mulhu        a1, a5, t2
                  sub          s3, s2, s1
                  mulhsu       a5, a5, a7
                  remu         s11, s11, s5
                  nop
                  sra          s1, t0, t5
                  slli         s6, t1, 18
                  rem          s8, t4, s9
                  and          t2, s4, a1
                  xori         t4, s8, -294
                  sll          a0, ra, a6
                  rem          s8, a4, s5
                  sub          s10, sp, s10
                  mulhu        s8, a4, a5
                  andi         a3, a2, 55
                  sltiu        s1, s2, 290
                  and          a6, s7, ra
                  lui          s5, 606194
                  ori          s4, t3, -1979
                  and          a6, t6, s6
                  addi         t4, a4, 87
                  remu         zero, a6, s3
                  mul          a5, zero, ra
                  sra          t1, t4, s6
                  addi         s2, t4, -1263
                  rem          t6, s4, s11
                  mulhu        a0, ra, s7
                  div          s2, t1, a4
                  or           t6, a2, s1
                  addi         t6, a5, -233
                  slti         s8, s2, -666
                  sub          s11, s7, a7
                  add          a0, tp, t3
                  addi         s10, s11, -204
                  and          s5, t3, a3
                  srai         sp, t4, 1
                  andi         s5, s5, 1729
                  srai         a1, a5, 28
                  sltiu        s8, s4, 1946
                  or           t0, a7, sp
                  or           gp, a3, t6
                  sltu         a2, t2, t2
                  srli         a3, s10, 29
                  auipc        s1, 340962
                  remu         t0, t4, s11
                  srl          ra, s4, t4
                  ori          s8, s1, 1264
                  sub          s5, a4, t6
                  mul          s7, s0, s1
                  sub          s4, t3, s6
                  or           a5, a3, a0
                  srai         ra, a0, 2
                  mulh         a6, t1, s4
                  sltu         ra, t6, t4
                  xori         a3, a5, -1194
                  sra          gp, s8, s7
                  lui          a7, 369667
                  sra          s1, a7, s4
                  auipc        sp, 504913
                  srli         a1, ra, 12
                  lui          s0, 775057
                  slt          a5, gp, a0
                  add          zero, s5, a2
                  andi         a2, s0, 1708
                  add          t5, gp, s5
                  sltiu        t4, s11, 1483
                  andi         s1, gp, 1277
                  andi         ra, t4, 1638
                  add          ra, t1, s0
                  sltu         s8, ra, t0
                  mulhu        zero, t3, ra
                  and          s4, s11, s9
                  and          t0, gp, s6
                  slti         a7, a7, -1552
                  mulhsu       s6, s10, s6
                  sltiu        s5, a6, 359
                  rem          sp, s4, s0
                  slti         a3, tp, 1387
                  ori          s4, s8, -1658
                  sra          t1, t2, t1
                  sltiu        t1, t3, -2039
                  mulhsu       s7, a3, s1
                  mulhsu       t6, s4, s2
                  slt          ra, s2, s10
                  xor          s0, t6, s1
                  srli         s7, a4, 13
                  divu         tp, s8, t0
                  addi         zero, t6, -476
                  sltiu        zero, a5, -661
                  nop
                  remu         a7, s8, s9
                  srli         s10, tp, 4
                  slt          s1, s8, s1
                  remu         t1, s3, s8
                  mulhsu       a7, s9, t6
                  slli         a3, t6, 16
                  slt          a5, gp, a3
                  ori          s5, s8, 131
                  sra          s1, ra, sp
                  add          s11, t4, s9
                  divu         s8, s1, a1
                  slli         t1, a0, 31
                  xori         gp, s2, 732
                  mulh         s1, s3, t0
                  mulhsu       sp, s4, s8
                  slt          s0, s7, a3
                  xor          sp, a1, t3
                  sltiu        s3, s6, -1366
                  addi         s4, a1, 1060
                  slti         a1, s8, -1082
                  sra          t4, t6, a0
                  sll          a1, t4, a2
                  slli         s0, s7, 6
                  sltu         s6, s0, a5
                  xor          s3, t2, tp
                  srai         t4, s3, 9
                  srai         s6, s11, 25
                  rem          s10, s2, s3
                  sll          s11, t3, tp
                  or           s6, a5, t1
                  nop
                  slli         a5, t3, 29
                  mulhsu       ra, tp, gp
                  sltu         t2, a3, a7
                  ori          a1, a1, -1208
                  sub          s1, s7, a5
                  srai         s0, ra, 29
                  andi         gp, a3, -350
                  remu         a5, s0, s9
                  mulh         zero, s5, t5
                  xori         t2, t0, 122
                  slti         s3, t1, -660
                  sra          sp, s4, a6
                  slli         s11, tp, 27
                  slli         gp, s0, 16
                  srai         t6, s11, 11
                  rem          a1, s2, s0
                  rem          a5, s2, t4
                  mulhu        a7, s10, s3
                  div          zero, gp, s10
                  mul          s4, sp, s6
                  sub          sp, ra, s10
                  xori         s11, s0, 1187
                  lui          s11, 239895
                  sub          a2, s2, s9
                  div          s1, a5, zero
                  auipc        a3, 642658
                  div          s3, t0, s4
                  sub          a0, t5, t0
                  sltu         a2, a7, tp
                  srai         s4, t5, 28
                  slt          t5, a0, s3
                  slli         s11, a3, 16
                  remu         t2, s5, s8
                  mulhsu       s4, s2, s10
                  mulhsu       a2, s5, t4
                  or           s11, t1, s0
                  srli         s8, s5, 25
                  lui          t2, 387993
                  or           sp, zero, t2
                  xori         s7, t6, -786
                  auipc        tp, 440509
                  sub          tp, tp, s9
                  sltu         t1, t6, zero
                  slti         s0, tp, 925
                  add          s2, a7, a0
                  slt          ra, s7, s1
                  slli         s5, t4, 5
                  rem          gp, sp, t0
                  sra          a0, tp, t5
                  sra          s7, a7, gp
                  srai         s3, s9, 19
                  mulh         a1, t5, s10
                  xori         t6, a5, 578
                  lui          t0, 588410
                  rem          s7, t3, a3
                  nop
                  addi         s3, a3, -1300
                  sltu         zero, t2, a3
                  slt          zero, s6, tp
                  andi         t6, a6, 1494
                  srai         t5, s3, 3
                  slli         a0, sp, 2
                  mulhu        s2, s5, s4
                  divu         s5, s8, a7
                  xor          a2, a6, a6
                  mulh         a5, s5, s5
                  sltu         s2, a3, s6
                  addi         s4, a1, -603
                  slt          s8, tp, sp
                  sra          a6, s0, t3
                  addi         a7, gp, 120
                  sub          gp, a2, tp
                  rem          s6, a4, s7
                  or           t1, a2, s11
                  andi         t1, s6, -1538
                  andi         s11, s9, 151
                  slt          s11, a6, t6
                  andi         s10, t4, 1430
                  sra          a0, s5, s2
                  addi         s7, s3, 1056
                  or           t1, zero, s3
                  mul          a3, s2, a0
                  or           s4, sp, s6
                  mulhsu       s0, s1, s10
                  add          s2, t2, s11
                  slli         s10, a0, 19
                  or           t0, a0, a3
                  rem          s4, a0, s5
                  rem          t1, s2, a3
                  ori          s8, s11, 152
                  add          t1, s11, sp
                  rem          s4, t4, t5
                  mulhsu       t2, t1, s9
                  sub          a3, a5, a5
                  srli         t4, t5, 7
                  sub          zero, t5, a6
                  andi         a1, gp, 1113
                  addi         ra, s7, -695
                  srli         a3, t6, 14
                  xor          s2, a1, s9
                  addi         t4, s1, -301
                  rem          a5, ra, t5
                  mulhsu       a7, s9, gp
                  ori          s6, s10, -866
                  mul          s5, t4, s2
                  addi         s5, s2, -208
                  ori          s4, t5, -1663
                  sltiu        s8, t2, -1772
                  mulhsu       zero, s4, a6
                  sub          s5, s5, t3
                  addi         t5, gp, -789
                  or           t5, s2, ra
                  mulhsu       s2, t0, t4
                  or           s11, sp, a3
                  sltiu        a0, sp, 436
                  addi         t6, tp, 1124
                  or           t2, a4, a2
                  div          sp, gp, s3
                  mulhu        a2, a6, t2
                  mul          ra, s6, zero
                  add          gp, s5, a1
                  divu         t1, s5, ra
                  lui          a3, 121725
                  nop
                  add          t5, a6, t2
                  lui          s3, 978673
                  sltiu        s8, s2, 1345
                  slli         t2, gp, 10
                  ori          s8, a7, -1268
                  slti         t6, s3, 1768
                  sll          s5, s0, s8
                  xori         t4, a6, -1787
                  mulhsu       s1, s2, a1
                  mulhsu       zero, a2, sp
                  slli         s6, s10, 26
                  slt          s2, gp, s7
                  slti         a6, t6, -721
                  mulhu        t5, s3, s2
                  slt          s0, s5, s9
                  andi         a0, t2, 1323
                  sra          ra, t1, s2
                  remu         t0, a5, sp
                  andi         t4, s7, 774
                  or           s5, a5, sp
                  sll          s2, s9, a3
                  srli         a0, ra, 25
                  remu         t2, a7, a7
                  auipc        t5, 686435
                  slti         a6, s7, 1155
                  ori          tp, s3, 279
                  remu         a3, s9, a0
                  slli         s3, a6, 8
                  mulhu        s4, s2, s7
                  mul          a2, sp, t2
                  ori          a3, t2, -2040
                  or           s0, a2, s11
                  mul          t1, t2, tp
                  div          t0, s3, sp
                  srl          s11, s8, t4
                  divu         t6, s9, a3
                  andi         a1, s1, 649
                  sra          s6, s0, s4
                  remu         a1, a4, sp
                  sltu         s5, gp, ra
                  sltu         s1, t6, t5
                  slt          t4, a3, a7
                  rem          zero, s3, t6
                  sltu         s8, t6, t6
                  div          a0, s6, t3
                  ori          t4, s2, -567
                  sltiu        t5, s1, 882
                  xori         t4, a4, -1305
                  and          gp, a3, t6
                  auipc        s5, 760189
                  andi         t5, a7, -468
                  add          sp, t6, s2
                  nop
                  slti         s3, s10, 549
                  lui          t6, 4963
                  div          t5, t4, t4
                  add          a0, ra, s1
                  remu         t0, t4, s2
                  sub          s0, a4, s6
                  ori          a5, s6, 848
                  andi         s8, tp, -1199
                  mulh         s1, t2, t6
                  addi         s3, t6, -518
                  xori         t6, t1, 973
                  sll          s11, sp, s8
                  sra          tp, a6, s4
                  mulhsu       a7, s1, a4
                  rem          t1, zero, ra
                  andi         s5, s2, 1223
                  lui          gp, 801920
                  srl          zero, a5, t6
                  mul          s3, t6, a4
                  nop
                  rem          s1, a2, t2
                  sub          s6, s2, sp
                  xor          a5, s2, zero
                  nop
                  xor          a2, a7, s3
                  xori         t6, s0, -833
                  mulh         s3, t6, t0
                  slt          a7, a7, tp
                  div          s7, ra, a0
                  sra          a2, t5, t6
                  and          s2, a1, a5
                  slti         s4, t2, 587
                  srai         s3, a1, 14
                  or           tp, s10, sp
                  slt          gp, tp, a5
                  sltu         a1, s4, sp
                  ori          t1, s6, -286
                  slli         s4, t5, 25
                  div          a0, sp, t3
                  and          t2, t4, s11
                  divu         a2, t1, t6
                  sltu         s0, s7, a7
                  slli         s1, a6, 18
                  mul          t2, s9, s9
                  remu         t5, t0, s6
                  mulhu        a3, s9, s2
                  srli         s4, s3, 11
                  mulhsu       tp, ra, s3
                  slli         s8, s10, 30
                  slli         a0, t4, 1
                  sub          tp, s1, s4
                  mul          s3, t2, s3
                  auipc        s4, 706459
                  mulh         a1, s6, s9
                  sra          t6, zero, s4
                  xori         s3, t6, 736
                  srli         s4, s5, 16
                  andi         s1, s3, 108
                  slti         s5, s0, 165
                  mulh         t6, sp, s10
                  ori          t1, t2, 1996
                  xori         a0, t5, 1686
                  lui          a6, 1032362
                  sll          s3, s3, s1
                  mulhsu       t6, a5, sp
                  remu         s3, a6, a3
                  slti         s3, a4, -1967
                  slti         t1, a0, -293
                  remu         s6, s5, s6
                  addi         s4, sp, 927
                  remu         s10, s10, sp
                  srai         s0, a2, 25
                  lui          s6, 695736
                  lui          a2, 322052
                  srli         s3, s0, 16
                  sltiu        s7, t2, -1465
                  add          s3, a3, s1
                  mul          s4, s11, t1
                  sra          t6, t0, a3
                  rem          t6, s3, a5
                  xori         s0, s2, 367
                  remu         s2, zero, a7
                  or           a2, a5, ra
                  and          s8, a0, a1
                  sltu         s4, s10, a6
                  mulh         s1, s2, s5
                  slt          s5, t3, a5
                  sll          s5, a4, a7
                  mulh         t4, t0, s11
                  srli         tp, s7, 0
                  slli         zero, tp, 31
                  srai         s6, t6, 30
                  and          s1, t6, s9
                  rem          s7, zero, a1
                  xor          s11, s10, s0
                  sub          a3, s0, s11
                  slt          s3, t6, t5
                  or           t6, s8, s8
                  mulhu        t0, a0, a4
                  sra          ra, s0, zero
                  mulhsu       s7, tp, s8
                  srli         t5, s11, 9
                  sltu         s2, s3, s11
                  srli         gp, s3, 3
                  auipc        gp, 237759
                  slli         ra, ra, 20
                  srai         a7, s3, 20
                  and          t4, tp, s5
                  addi         s1, s6, -1203
                  auipc        ra, 333196
                  or           sp, t6, s4
                  divu         gp, ra, a1
                  nop
                  mulhu        s5, zero, s6
                  mulhu        a0, t6, s10
                  remu         s6, sp, s5
                  auipc        s11, 864916
                  srai         s0, s11, 6
                  andi         t1, s2, 963
                  remu         t0, a4, t3
                  mulhsu       s2, s2, a2
                  srli         gp, s10, 8
                  srli         ra, a6, 0
                  srai         ra, zero, 6
                  remu         s11, s6, s4
                  srai         s4, zero, 18
                  auipc        s11, 685438
                  andi         s8, t5, 1505
                  nop
                  div          t5, a4, ra
                  rem          a2, t0, t6
                  sll          sp, t4, a7
                  div          gp, a4, ra
                  sub          s0, a3, a5
                  mul          a1, a4, s6
                  rem          zero, a0, s1
                  lui          s11, 18272
                  or           s1, s8, t2
                  remu         s0, s1, zero
                  sltu         t5, s2, tp
                  divu         t4, t1, s8
                  remu         s2, s2, t2
                  srl          gp, ra, zero
                  xor          s8, zero, a4
                  addi         t0, a6, 1005
                  slt          s0, s5, s6
                  and          s1, gp, s9
                  and          a0, s5, a1
                  ori          s7, s9, 313
                  auipc        t1, 654262
                  lui          ra, 648402
                  ori          ra, a2, -431
                  sll          tp, s6, t5
                  ori          s7, a6, 1157
                  sub          s2, a0, zero
                  add          a5, s3, t4
                  or           t4, gp, s9
                  sltiu        a6, t0, -957
                  or           a7, a1, s5
                  sub          a7, s1, t2
                  xor          s10, t4, a5
                  slti         a7, s11, 600
                  xori         gp, s11, 1030
                  slt          s4, tp, s3
                  mulh         s8, t1, a7
                  div          s0, t4, a6
                  xor          t6, zero, s6
                  sra          s11, s5, s1
                  sll          s1, t3, s5
                  divu         a7, s9, t2
                  mulhsu       s0, a0, s3
                  xor          t6, t3, zero
                  slti         s5, a1, -853
                  srl          s11, a3, a6
                  xor          s2, a6, gp
                  sub          a6, gp, s8
                  remu         ra, s10, s8
                  sub          t0, t6, a3
                  slti         s3, a5, 1793
                  divu         s4, s9, a4
                  mulh         t0, s5, a7
                  lui          s11, 977842
                  sltiu        s0, s5, 186
                  slli         s4, ra, 5
                  slt          s3, s8, tp
                  mulhu        t5, tp, a5
                  mul          a3, s8, t4
                  addi         s1, s0, 1904
                  remu         a3, t1, s8
                  ori          s2, s1, 314
                  slli         t2, s6, 7
                  srli         s2, s7, 31
                  sll          s7, s7, zero
                  slli         sp, t2, 3
                  or           s5, s11, s0
                  lui          t1, 804515
                  srai         s1, a4, 4
                  lui          tp, 700174
                  or           s8, s7, s2
                  add          t0, a4, s0
                  rem          a0, s1, s6
                  ori          a1, tp, -230
                  mulh         tp, a4, s2
                  addi         a0, s8, 456
                  or           s2, tp, tp
                  slti         zero, a6, 1780
                  xor          tp, sp, a2
                  mulh         a2, a2, zero
                  ori          a2, t2, -1573
                  srai         ra, s8, 27
                  sub          tp, s2, a1
                  srai         a2, t6, 14
                  andi         zero, a1, -1840
                  nop
                  lui          t6, 29189
                  rem          tp, a3, a3
                  srli         a5, s1, 21
                  add          zero, t4, t4
                  sltu         gp, s9, a0
                  srli         a0, a5, 25
                  mul          a2, a7, s7
                  ori          s5, s3, -1273
                  and          s6, s8, a1
                  divu         gp, sp, a6
                  mulhsu       tp, s8, s5
                  slli         t0, a1, 19
                  slti         t2, a1, 902
                  mul          s8, a6, s11
                  rem          t2, t1, t3
                  sra          a6, a2, t3
                  auipc        t0, 243622
                  sll          a7, a0, s5
                  andi         t0, t4, 117
                  sll          a7, t4, s3
                  divu         a2, t5, s1
                  srai         gp, s1, 15
                  remu         s8, ra, s2
                  or           s8, zero, a7
                  div          a6, sp, a4
                  sltiu        s4, a6, -70
                  and          a2, a2, s6
                  mulh         t1, a5, t6
                  rem          tp, a0, s1
                  ori          sp, a6, -588
                  sra          t4, s9, a5
                  mulh         s1, s1, zero
                  divu         sp, s11, a5
                  srli         s2, gp, 28
                  sll          t4, a6, s10
                  mulhu        s0, s8, s4
                  slt          s4, s7, a6
                  sub          s0, a3, a5
                  srai         a7, zero, 19
                  srli         t0, s6, 17
                  andi         s2, s8, -1230
                  div          ra, a6, s10
                  sltu         s11, a6, s4
                  slt          t1, s6, t3
                  sub          s8, t2, t3
                  lui          s5, 991094
                  remu         s2, gp, t5
                  mul          ra, t5, tp
                  divu         ra, s3, a1
                  slt          tp, s2, t5
                  auipc        a7, 218691
                  lui          t4, 542901
                  sll          s6, a6, s1
                  mulhu        ra, a2, a1
                  div          s5, a3, a6
                  div          s6, a2, a5
                  slli         t0, gp, 13
                  divu         t1, s11, s6
                  mulh         a6, gp, t4
                  or           a3, t1, t3
                  xor          s11, s0, s6
                  sltu         s3, s5, sp
                  remu         a3, s0, ra
                  addi         s8, t5, -372
                  auipc        a0, 868715
                  srli         s3, s0, 19
                  sub          s7, ra, t0
                  slli         t5, sp, 0
                  sub          s6, a0, s9
                  mulh         tp, t0, s0
                  mul          zero, a5, s0
                  mul          t6, s9, ra
                  div          t5, t6, t6
                  mul          gp, a3, s2
                  andi         t4, a0, 1127
                  sltiu        tp, a0, -1877
                  nop
                  nop
                  slti         s2, t6, 2025
                  lui          s3, 381098
                  sub          s2, a3, sp
                  mulhu        s10, t5, s0
                  sub          s1, sp, a7
                  or           s0, a6, s7
                  mul          t1, zero, s1
                  nop
                  mulh         s2, ra, a0
                  mulhu        gp, a3, s1
                  mulh         a1, gp, s5
                  srai         t5, s8, 4
                  slti         s5, s4, 600
                  mulhsu       t2, s3, gp
                  divu         s2, t5, s7
                  mul          a0, ra, s6
                  mul          s0, a5, a7
                  srli         t6, t3, 20
                  mulh         s1, a6, t2
                  or           a1, tp, s5
                  mulhsu       t5, s10, tp
                  lui          a1, 503627
                  mul          a5, s1, s6
                  addi         s0, s4, 1020
                  srli         a6, s7, 24
                  nop
                  mulhu        s1, s4, t5
                  mulhu        a5, s7, s9
                  sltu         t0, t1, s4
                  slt          t2, a3, gp
                  or           s8, tp, a0
                  and          s10, a2, a1
                  mulh         s5, a3, a0
                  sll          s11, a3, a0
                  slli         s6, a3, 15
                  sltu         a7, s7, t2
                  or           a0, t4, t1
                  nop
                  srai         a6, a7, 16
                  sra          s6, a2, a4
                  srai         t2, a1, 16
                  and          a2, t0, a5
                  divu         t5, t3, t1
                  sltiu        s1, a0, -812
                  xori         gp, t0, -991
                  andi         t4, a0, 352
                  mulh         t6, s6, a4
                  andi         t4, s8, -290
                  slti         s7, t5, 344
                  sll          t4, s3, t5
                  nop
                  sltiu        a7, t5, -73
                  or           s3, s4, a1
                  sltiu        t6, s1, -1465
                  divu         a2, t4, s1
                  mul          t4, s1, t0
                  add          s2, s7, s7
                  sll          a6, s7, s0
                  sub          sp, sp, t6
                  srli         s2, tp, 11
                  sltiu        s3, s4, -1600
                  srai         t0, t6, 24
                  sll          t0, a1, ra
                  divu         sp, gp, t4
                  andi         zero, s10, 502
                  and          t2, a2, s4
                  slti         s5, t0, 1885
                  andi         a2, t3, 496
                  slt          a0, a1, t5
                  xori         s0, s8, -1051
                  xor          a6, sp, s4
                  slli         s2, s10, 25
                  sltu         gp, a1, tp
                  nop
                  divu         a1, s6, t2
                  mulhsu       s11, tp, s8
                  sub          t2, s1, s4
                  slti         t5, a6, 826
                  mulhsu       s4, a6, t2
                  andi         s0, a5, -1891
                  sltiu        s8, t0, 1933
                  srli         a7, s7, 18
                  slli         t1, a5, 2
                  sra          tp, s11, s11
                  sra          a5, a3, sp
                  mulhsu       tp, a3, s0
                  sub          s3, s3, a6
                  slt          t0, tp, s4
                  nop
                  xori         s3, a4, 1778
                  sll          sp, t0, t2
                  slli         a0, s11, 18
                  slti         t6, t0, -635
                  nop
                  mulhsu       ra, zero, a7
                  xori         s10, tp, -1566
                  mulhsu       t5, s9, zero
                  sub          t4, tp, t2
                  addi         s10, s4, 364
                  xori         a0, s2, 101
                  rem          ra, s1, t4
                  srai         gp, a5, 17
                  mulhu        a3, s10, a4
                  div          s6, s7, a1
                  mulhsu       gp, sp, t4
                  ori          a1, a4, -815
                  sltu         t5, a3, t3
                  sltiu        s2, s7, -554
                  mul          sp, a7, t5
                  srl          a6, t4, s3
                  nop
                  sub          t1, a4, s11
                  div          s0, t1, a4
                  andi         s8, ra, -1088
                  mul          t5, t2, ra
                  slti         t1, a6, 1577
                  sltu         s3, t4, s5
                  andi         a3, s9, -1937
                  mulhsu       a0, sp, t0
                  remu         t6, s8, a6
                  addi         a2, t6, 1834
                  ori          a7, t2, 454
                  nop
                  add          t1, a7, tp
                  lui          s4, 464228
                  xor          ra, a4, t5
                  xor          t0, t2, sp
                  nop
                  rem          t6, a3, s6
                  or           tp, gp, ra
                  sub          t5, s3, s4
                  sltiu        t1, t6, 1548
                  auipc        a0, 560774
                  sub          s8, a4, a7
                  addi         s11, t1, -445
                  srai         s7, s8, 28
                  xori         t5, ra, 1348
                  sra          s4, t4, a5
                  xor          t1, t4, t3
                  nop
                  div          t1, a1, a1
                  xor          tp, t0, t1
                  remu         a0, s2, a0
                  mulhu        a6, t1, t5
                  lui          s8, 770960
                  auipc        a0, 459865
                  mulh         a0, s7, t1
                  remu         s11, t5, a6
                  sra          s4, t6, s7
                  slli         a2, a6, 30
                  sltiu        a5, ra, -795
                  slti         t1, a1, 387
                  andi         s1, t3, -436
                  ori          a5, s10, 1272
                  srai         s1, a1, 19
                  andi         ra, a2, 1317
                  addi         t1, s4, 262
                  sub          s5, s1, tp
                  mulhsu       t6, s11, a2
                  slt          s0, a1, tp
                  mulh         s1, s9, sp
                  andi         s6, s9, -1716
                  addi         s1, a5, 1594
                  slli         gp, a1, 12
                  or           s3, s11, t4
                  and          a2, s8, a4
                  sub          s2, ra, t6
                  div          a1, sp, sp
                  mulhu        t6, s4, s9
                  and          t5, a1, a5
                  mul          s8, a7, s8
                  or           t1, s10, a1
                  sub          s5, t3, a4
                  srai         s8, tp, 0
                  sub          s11, ra, s9
                  mulh         s10, s11, gp
                  div          s2, s3, s2
                  slti         t1, t2, 384
                  slt          zero, ra, s0
                  mul          s10, s4, ra
                  lui          s1, 954360
                  srli         a7, a2, 1
                  ori          t6, a5, 420
                  div          s8, s9, s11
                  nop
                  and          t5, a1, s4
                  divu         t5, sp, a0
                  slt          s5, t0, t3
                  mulhu        s11, sp, s9
                  sltu         s3, s1, tp
                  or           a1, t6, a5
                  slti         ra, a1, -733
                  mulhu        t2, s7, a2
                  or           a6, t4, s11
                  slli         t6, gp, 26
                  slti         s3, a1, 2043
                  or           s10, t0, t5
                  sub          a3, s3, s10
                  srl          s10, a1, a0
                  mulh         tp, a3, s5
                  ori          t4, gp, 770
                  mulhu        s11, s10, a0
                  ori          a2, zero, -560
                  slt          s5, s6, zero
                  divu         t0, s1, t4
                  sra          s2, a6, t0
                  auipc        s4, 367658
                  sub          a7, s6, s8
                  divu         t5, sp, sp
                  sra          s2, a2, t4
                  remu         s11, s3, t6
                  div          s3, sp, gp
                  srl          s5, zero, s11
                  srl          t6, t2, s9
                  srl          t6, s6, s10
                  add          sp, t5, s8
                  mulhsu       s3, s4, s2
                  slli         t1, sp, 17
                  xori         s10, s5, -1034
                  sub          s5, a1, sp
                  nop
                  ori          a7, tp, 1237
                  remu         t0, t2, sp
                  xori         s11, ra, 681
                  andi         a6, s7, 1892
                  slti         s11, s9, 774
                  rem          s1, t2, s11
                  xor          t4, a2, s9
                  addi         s5, s4, -770
                  sll          s2, a3, s10
                  addi         s11, tp, -600
                  slt          t6, a7, s10
                  andi         t4, a5, 405
                  xori         t0, t1, -752
                  sltiu        a2, t0, 509
                  mulhu        t4, t0, a2
                  sltu         s10, s11, s10
                  sub          s8, sp, t2
                  and          a0, s1, a2
                  div          t0, s5, s5
                  div          t1, t6, s3
                  sltiu        s8, t0, -1221
                  addi         s11, s3, 1368
                  xori         s1, a4, 1885
                  div          s11, sp, a4
                  srli         a0, a6, 4
                  rem          a7, sp, s6
                  add          s4, a2, s4
                  addi         s5, s7, -466
                  slti         a0, a2, 333
                  divu         s3, s1, t5
                  addi         gp, ra, -103
                  mulh         sp, t5, t0
                  mulh         s6, t5, ra
                  mulhu        s4, t3, sp
                  sltu         ra, t3, a5
                  add          s0, s5, a0
                  srl          t4, a0, a0
                  slti         s2, t2, -1101
                  add          sp, s11, t3
                  and          s4, a1, s8
                  and          s5, a6, s2
                  mulhu        tp, s9, s10
                  andi         a1, s10, 161
                  sltu         t6, s2, a0
                  xori         s8, a4, -1855
                  xori         s10, s3, 274
                  slli         s5, s5, 31
                  sub          s2, a0, s3
                  andi         s8, t3, -126
                  auipc        s3, 736255
                  mulhu        s6, a7, a3
                  slli         s2, s2, 14
                  sll          t2, s4, s8
                  nop
                  sltiu        a3, t2, -1081
                  mulhu        a5, ra, s8
                  srli         t1, s3, 3
                  xor          s11, a2, s3
                  sub          a7, s6, t0
                  xori         a2, s0, 1926
                  or           t1, t4, a3
                  slt          a5, a0, gp
                  sltu         a2, s1, t6
                  addi         s2, sp, -553
                  sll          t5, s3, a0
                  divu         s8, a6, s2
                  divu         s11, s2, ra
                  remu         s8, s11, a4
                  slt          s5, s6, s11
                  xori         t1, a6, -453
                  mulh         a5, tp, a4
                  remu         s10, a0, t0
                  and          t0, sp, s1
                  andi         gp, s10, -851
                  lui          s11, 824439
                  mulhsu       s8, s11, s11
                  mul          tp, a4, zero
                  sll          t2, a1, a2
                  xor          s0, s1, zero
                  mulhu        t0, gp, ra
                  mulhu        a3, t2, s3
                  sra          t2, s8, t5
                  or           s8, s7, t3
                  slti         a6, a5, 1134
                  slli         s4, t2, 10
                  mulhu        s7, a1, t5
                  remu         tp, tp, gp
                  xor          s1, t6, a2
                  and          a2, zero, s2
                  sub          a7, ra, t5
                  or           sp, s10, a6
                  mulhsu       s4, a7, a7
                  sltiu        s0, s6, 1614
                  and          gp, a0, s0
                  mulhu        ra, t6, t3
                  mulhsu       gp, s9, a7
                  remu         a3, a0, a4
                  xor          s11, s10, s10
                  sub          gp, sp, ra
                  div          s4, s7, zero
                  sltiu        t1, t1, -379
                  xori         sp, t0, -480
                  mulhu        t1, a0, t4
                  nop
                  or           a6, s2, s0
                  sll          ra, t0, s3
                  addi         s8, a5, -507
                  sra          gp, a2, a2
                  ori          tp, s1, -1225
                  xor          a7, tp, zero
                  sll          s0, t1, zero
                  nop
                  and          zero, a4, s3
                  lui          s7, 99443
                  sll          a0, tp, s11
                  add          t4, s0, s5
                  sll          a1, t6, s0
                  srai         s5, s2, 23
                  rem          zero, t5, s3
                  mulhu        gp, s3, s11
                  remu         a2, t3, s9
                  add          s4, zero, a3
                  andi         a6, a2, -1971
                  lui          s1, 641278
                  sll          s8, ra, t6
                  ori          s2, a7, 1642
                  andi         s1, s7, -197
                  andi         t6, a4, 519
                  sltiu        s10, zero, -165
                  rem          a2, a1, s0
                  auipc        t1, 999544
                  srai         s11, ra, 27
                  slti         t4, a2, -246
                  rem          s1, sp, s1
                  auipc        a7, 355409
                  addi         a7, a4, -36
                  slt          t0, s9, s11
                  sltiu        t5, t1, 1104
                  div          a0, s10, a7
                  xor          a1, a0, a4
                  slli         s2, ra, 24
                  divu         gp, s0, s10
                  srai         a1, gp, 30
                  sltiu        s2, t6, -722
                  and          a6, t1, s3
                  nop
                  lui          s1, 651137
                  andi         s7, a6, 1236
                  srai         s8, a6, 31
                  mulh         gp, s9, ra
                  slt          s4, s1, t6
                  mulhu        t0, s11, s0
                  srl          t5, s5, a5
                  andi         s8, t4, -197
                  andi         s8, s11, 1240
                  auipc        t4, 351925
                  sltiu        t6, a0, -460
                  mulhu        t1, t1, s10
                  mulhu        s11, s3, zero
                  andi         a0, s0, -545
                  or           s8, a7, a6
                  add          s4, a5, t1
                  sub          sp, s9, a5
                  divu         s5, t5, s9
                  slt          t2, a6, a6
                  sltu         s11, ra, a7
                  xori         s11, a6, 14
                  srl          s8, a2, a2
                  slt          t5, tp, s5
                  div          a1, t5, a2
                  lui          t2, 855545
                  andi         s8, t3, -1651
                  mulhu        a1, ra, sp
                  sltiu        t1, a0, -1256
                  remu         a5, t6, s4
                  srli         t5, s4, 14
                  xori         t0, t6, -445
                  divu         s11, s5, gp
                  sltu         t2, s8, a0
                  slt          t5, a2, a4
                  sltiu        s11, s6, -185
                  slti         s11, a0, -922
                  srl          t6, s5, s3
                  srli         t4, s4, 30
                  mulhu        s1, a7, ra
                  sltu         s5, s0, s2
                  srai         s6, t2, 22
                  ori          a7, a2, 1353
                  remu         s2, a2, sp
                  mulhu        ra, s11, tp
                  mulh         s6, s0, s8
                  addi         tp, t1, 1027
                  sra          t1, s3, s5
                  or           zero, s8, s8
                  slti         t1, s5, -611
                  andi         s8, s5, 1912
                  mulh         t1, a2, tp
                  addi         s4, a5, -1812
                  lui          a2, 566018
                  add          s11, s2, a5
                  slli         a0, sp, 2
                  xori         t4, t3, -717
                  slli         s3, a2, 8
                  mul          t4, s4, t4
                  sll          t5, s5, t1
                  mulhu        t4, s6, a5
                  rem          sp, t5, t2
                  slti         a6, t0, 391
                  mulh         s5, s1, s1
                  lui          t4, 369772
                  mul          t5, t2, s11
                  sltu         s7, a7, s10
                  xor          s8, t3, s10
                  remu         s5, t2, s7
                  srli         t6, a2, 5
                  slli         s8, ra, 29
                  mulhsu       t0, s9, tp
                  mulh         s0, ra, gp
                  div          a3, t1, t4
                  div          a0, s0, gp
                  mul          a6, s9, s4
                  mulhu        a6, t4, s8
                  sltu         s5, s5, s2
                  srl          a2, s0, a5
                  slt          s7, a6, tp
                  rem          a0, a4, s11
                  sll          a2, zero, gp
                  mulhsu       a7, tp, t6
                  slti         s2, t2, -910
                  sltu         s8, t0, t4
                  rem          s4, a5, sp
                  xori         zero, ra, -784
                  andi         s2, s4, 1075
                  sll          s5, t2, t4
                  sub          t6, a5, t4
                  and          s7, s0, zero
                  div          a2, a0, s3
                  rem          s2, t6, t0
                  xori         a1, s9, -1716
                  mulhsu       s11, s5, s7
                  lui          ra, 315361
                  mulhsu       t0, s1, a7
                  xori         s7, s11, 1465
                  lui          s5, 960953
                  sll          t0, a0, t2
                  or           s7, t6, a3
                  slti         s7, t2, 1868
                  or           a7, s6, s11
                  sll          s3, gp, t1
                  xor          s0, s0, t5
                  rem          tp, t2, s6
                  mulhu        t5, s2, t5
                  sltu         a6, s1, zero
                  rem          t2, ra, a4
                  mulhu        s11, a3, t3
                  sra          a3, t3, s4
                  and          s5, a6, t3
                  slli         a6, s7, 29
                  mulhu        a3, s5, a6
                  srai         ra, zero, 27
                  srai         t0, s1, 19
                  sub          s4, a1, s5
                  srli         a5, t5, 20
                  rem          a6, s3, s5
                  add          gp, s5, ra
                  xor          s8, s0, s8
                  auipc        a0, 682250
                  sltiu        s8, a4, -242
                  lui          s7, 794707
                  slti         s1, s0, 1674
                  sub          t1, s8, s0
                  slt          s10, gp, t6
                  srai         zero, s5, 21
                  sra          a0, tp, s7
                  sltiu        s10, sp, -349
                  addi         a1, s3, 1786
                  div          s2, s11, t5
                  mulh         s6, a0, s6
                  srl          s7, s0, s4
                  mul          ra, a3, tp
                  sll          t6, s7, t0
                  xor          s6, s8, s3
                  sub          sp, s0, a2
                  sll          t5, t6, s10
                  and          s0, a3, t0
                  mulhsu       t0, a3, s9
                  addi         gp, t1, 1421
                  add          a0, tp, s11
                  xor          t5, ra, a4
                  slti         s1, t4, 683
                  div          s8, s2, zero
                  srai         a1, a3, 3
                  srli         t5, s1, 4
                  xori         t1, gp, 934
                  slli         t4, s0, 22
                  sra          t5, s8, s10
                  sub          s8, s5, sp
                  and          t1, s9, a2
                  add          s8, ra, t6
                  sub          tp, s7, t2
                  lui          s11, 470907
                  add          s8, ra, s8
                  srli         sp, s4, 21
                  mulh         s10, s3, t2
                  sll          s4, s7, a2
                  and          a0, a6, t6
                  mulhu        s11, ra, s10
                  srl          t5, t6, s8
                  slt          tp, t4, a0
                  mulhu        s8, t3, s1
                  or           s8, s10, t6
                  auipc        sp, 910768
                  divu         a1, s8, t4
                  mulh         s4, s3, s2
                  mul          t5, zero, sp
                  ori          tp, a4, 1221
                  add          s4, s6, a2
                  srai         t6, a4, 9
                  add          t1, t2, a4
                  mulhsu       s7, a4, s4
                  mulhsu       zero, a4, a2
                  or           a1, a1, ra
                  slti         s5, a6, -742
                  add          s1, s10, t5
                  srli         a6, t6, 25
                  sra          sp, t2, t4
                  add          s7, s8, a6
                  or           s6, s0, s3
                  sltu         t6, t6, gp
                  rem          a2, tp, t3
                  xor          s5, t1, t3
                  rem          s7, tp, a3
                  mulhsu       s11, tp, t2
                  mul          s11, t1, s3
                  slli         s4, s7, 6
                  auipc        s7, 771722
                  add          a5, s0, tp
                  divu         ra, s11, zero
                  slti         s7, t5, 1026
                  slli         tp, a2, 6
                  mulhsu       gp, a0, s8
                  sltiu        s10, t0, 1069
                  srl          t1, s2, a3
                  mulh         gp, s10, t1
                  sll          a0, t0, a3
                  sltiu        s10, s4, -1168
                  srai         s10, t2, 1
                  mulh         sp, s3, a4
                  sub          s10, s8, sp
                  and          s11, s8, gp
                  divu         sp, a1, gp
                  ori          gp, zero, -1755
                  xor          s11, s8, a4
                  srai         s4, s5, 3
                  addi         s3, zero, 144
                  slt          s8, zero, s11
                  divu         s11, s9, s6
                  sltiu        a7, t4, -2
                  sra          s11, a2, s6
                  remu         s0, gp, t1
                  xor          s0, t2, tp
                  divu         s0, s9, a2
                  mulhsu       s2, sp, t5
                  slli         s10, t5, 4
                  divu         s10, s7, a2
                  srli         a7, s11, 30
                  sub          ra, a7, a0
                  rem          a3, tp, a7
                  andi         s7, s5, 2021
                  addi         gp, gp, -242
                  rem          t4, a3, s3
                  mulhsu       s11, a4, a2
                  mulhu        t6, t0, t3
                  mulh         t1, a4, s3
                  xor          s1, s2, ra
                  div          t4, s7, t0
                  xor          s3, a0, a2
                  mulhu        a0, s0, t5
                  auipc        ra, 271811
                  lui          s8, 649187
                  xori         t1, s8, -1609
                  xori         a2, a6, -371
                  and          t5, t2, s11
                  sltu         s8, a4, s9
                  mulhsu       s2, t0, s9
                  div          sp, s1, s10
                  div          s1, a3, a3
                  nop
                  add          s0, gp, t0
                  sltiu        s5, s10, 806
                  sra          s2, t4, zero
                  addi         t4, a7, 224
                  or           a2, s2, t4
                  nop
                  and          s11, a5, a1
                  divu         s10, s3, a2
                  and          s10, t2, s3
                  divu         sp, a4, zero
                  srli         s3, tp, 13
                  or           s2, gp, a7
                  mulh         ra, a1, t5
                  mulh         s2, gp, tp
                  addi         s0, s6, -1275
                  sub          gp, t2, t3
                  divu         t1, a7, gp
                  slti         s0, s9, -1699
                  andi         sp, a5, -408
                  ori          s4, s4, 824
                  sra          t1, a1, s1
                  ori          ra, s9, 555
                  mul          a0, tp, t0
                  andi         s10, zero, 594
                  andi         t5, t2, 719
                  or           s10, t3, t3
                  xor          zero, a3, s3
                  mulh         gp, ra, t3
                  auipc        ra, 815210
                  slti         s8, a4, 116
                  xori         t2, a0, 103
                  mul          t0, s9, s11
                  auipc        a3, 581610
                  srl          t2, tp, s6
                  auipc        s5, 447995
                  slti         s6, a1, 230
                  xori         a2, s3, -570
                  slti         t0, zero, -1981
                  slt          a5, ra, zero
                  sra          s1, sp, a2
                  nop
                  ori          gp, t0, 1962
                  slt          s11, s4, a4
                  addi         s4, t2, -1270
                  sub          s6, s6, a7
                  auipc        s8, 762747
                  andi         sp, sp, -1314
                  andi         s8, s0, -1403
                  mulhu        s2, a3, s4
                  or           t0, t1, t4
                  sub          s1, t0, a6
                  remu         t6, s10, s4
                  nop
                  sra          sp, s6, tp
                  xori         a3, t2, -1026
                  divu         t4, gp, zero
                  or           t5, t2, a2
                  slt          s7, s1, zero
                  slti         t4, a5, 471
                  lui          t2, 22957
                  sltiu        a0, s4, -64
                  sub          t6, t0, a6
                  andi         s3, a7, 1966
                  slli         s0, t1, 30
                  divu         zero, zero, ra
                  mulh         t5, t2, s1
                  xori         s8, s2, -161
                  sra          zero, gp, a1
                  mul          a1, a0, s0
                  slli         s3, t5, 25
                  mul          t4, s5, a1
                  div          t5, s8, a1
                  slli         t4, t0, 31
                  rem          s2, t1, a7
                  xori         s7, tp, 1933
                  sub          t2, s8, t1
                  mulhu        s10, t6, t4
                  div          s1, s3, t3
                  or           a0, zero, ra
                  sll          t1, zero, s2
                  mul          s4, a6, ra
                  sltiu        s1, s4, -1264
                  sub          ra, t4, t0
                  div          s4, gp, a5
                  sltiu        t5, s8, 1663
                  andi         t6, a6, 644
                  xor          s5, ra, a4
                  srli         gp, a6, 17
                  andi         t1, t1, -622
                  auipc        a6, 571268
                  mulhu        a6, a4, s10
                  mulh         s7, s3, s2
                  srl          a2, t6, a0
                  or           s8, s0, s9
                  slt          a5, t5, s5
                  div          ra, s1, zero
                  ori          t4, zero, -1597
                  rem          t5, a3, s9
                  srl          t6, tp, a2
                  nop
                  divu         t5, tp, tp
                  sltu         t6, s9, s11
                  div          s11, s2, a2
                  srai         a0, a7, 2
                  addi         t4, s6, -1889
                  slti         a0, s0, -245
                  slti         t4, gp, -1793
                  div          t5, a0, s10
                  and          sp, a4, s9
                  and          zero, t4, sp
                  mulhu        t0, s9, a3
                  sra          t0, t4, t4
                  div          a1, a4, s10
                  divu         a3, tp, a1
                  or           s10, a7, gp
                  lui          t5, 510459
                  xor          a6, gp, s1
                  mulh         s0, a7, a4
                  slli         s6, a6, 17
                  lui          t4, 476829
                  auipc        s4, 549311
                  sra          s11, t4, s9
                  slt          gp, gp, t1
                  mul          a2, s6, t2
                  remu         s7, s2, ra
                  slt          t4, t6, s4
                  mulhu        tp, t0, t3
                  remu         s8, t0, t6
                  add          sp, a5, a7
                  nop
                  divu         a0, t1, a6
                  add          a3, s0, t0
                  srl          a1, a1, s5
                  srl          t0, s2, a0
                  auipc        a2, 558356
                  srai         a2, tp, 28
                  mulh         s2, t2, a4
                  mulhu        ra, s9, ra
                  sltiu        t0, t4, 796
                  add          s4, a2, t6
                  sub          s8, t0, s0
                  sub          t4, s4, t2
                  sltiu        s11, s0, -712
                  sltu         a2, a6, s3
                  mulh         a7, a6, s8
                  add          t1, ra, t6
                  lui          t0, 939288
                  sltu         s8, a1, a1
                  mulhu        t2, s3, a7
                  mulh         a1, a7, zero
                  sub          s6, a5, ra
                  srli         a3, s3, 17
                  xori         t5, s1, 794
                  or           ra, s4, t1
                  auipc        s8, 331783
                  nop
                  sra          a5, a5, t5
                  srli         s3, t0, 24
                  slti         s0, s11, -998
                  lui          a6, 252250
                  add          t6, s7, t3
                  nop
                  mul          a7, a3, t1
                  sub          s3, s9, a5
                  remu         a3, s7, s11
                  slli         s6, ra, 1
                  slt          a6, t6, t6
                  rem          s0, s6, a1
                  mulhu        t5, a2, t3
                  sltiu        s6, t1, 518
                  srli         ra, a3, 17
                  addi         s5, t1, -349
                  slti         t2, a5, 221
                  sltu         s11, s2, gp
                  auipc        t1, 720561
                  and          s11, s8, s5
                  slti         s7, gp, 1909
                  mul          t1, t4, s6
                  addi         s6, s10, -895
                  ori          s10, t2, -979
                  srai         s10, a3, 27
                  srai         ra, s4, 5
                  addi         s0, s8, -693
                  lui          t2, 996739
                  lui          t2, 294090
                  mulh         t1, t0, s9
                  sub          a6, t3, s8
                  xori         ra, a2, -1668
                  sub          a0, a1, s2
                  srli         a0, s9, 15
                  divu         s6, t6, t2
                  mulhsu       tp, s4, s11
                  xor          s4, t5, t2
                  sll          gp, s0, t4
                  sub          t2, s9, s4
                  sub          a0, s11, s5
                  srli         t1, t4, 20
                  addi         s5, a6, -1313
                  andi         a0, a1, -57
                  mulhu        s10, s0, s8
                  addi         a1, t1, 551
                  slt          tp, s6, ra
                  mul          gp, s8, a6
                  slt          t1, zero, s7
                  mulh         zero, a2, t4
                  lui          s2, 783362
                  xor          gp, a6, t5
                  nop
                  and          t4, s8, s9
                  srl          a1, s8, s1
                  lui          s8, 505244
                  and          zero, a5, gp
                  slli         t0, a7, 19
                  slti         t5, ra, -1454
                  slli         t0, a1, 18
                  auipc        s1, 778098
                  xori         t5, tp, -861
                  slt          t1, a0, a2
                  srli         s1, s11, 9
                  remu         a2, s3, sp
                  slti         gp, s8, 1662
                  div          t0, sp, s7
                  lui          s7, 405974
                  sltu         a1, s9, s6
                  sll          a7, a2, s9
                  srl          s3, sp, tp
                  mulhsu       a2, tp, t1
                  or           gp, t4, sp
                  or           a7, sp, s9
                  xor          s8, s4, t2
                  mul          a7, a7, s6
                  mulhsu       a5, t1, t5
                  lui          a5, 447816
                  sltiu        a5, gp, -279
                  sltu         a0, a0, s10
                  srli         tp, a1, 11
                  sltiu        s5, zero, 249
                  add          zero, s3, t2
                  sltu         a2, t0, t6
                  mulhsu       gp, s4, s4
                  divu         a0, t6, sp
                  andi         t4, sp, -1143
                  mulhsu       t5, s3, t3
                  sub          ra, s5, s7
                  auipc        a1, 155904
                  div          s5, t2, s11
                  addi         a3, a5, -1722
                  mul          a3, s11, t1
                  ori          a3, s11, -642
                  mulhu        s3, ra, s10
                  srli         s10, t6, 1
                  andi         a0, ra, 671
                  sub          a3, zero, a0
                  sltiu        ra, s0, -1439
                  mulhsu       a1, s4, tp
                  mulhsu       a7, s9, s4
                  sltiu        s7, a6, 784
                  or           a1, a6, s9
                  addi         s1, s1, -1334
                  xori         a3, a3, -589
                  slt          t1, s5, a7
                  div          ra, ra, ra
                  auipc        s6, 887525
                  slti         s6, s6, -1678
                  div          sp, s11, zero
                  mulhsu       a7, s0, a1
                  remu         a5, tp, t1
                  lui          s8, 697876
                  sra          a3, s1, t5
                  sll          t2, t6, s10
                  nop
                  mul          t1, a3, a4
                  mulhu        s4, a3, a7
                  addi         zero, a4, 484
                  srli         s11, a7, 8
                  ori          s6, t2, -73
                  auipc        s4, 803355
                  slt          s8, s11, a1
                  mulhsu       s2, a6, t6
                  and          t4, s2, gp
                  rem          s7, t3, s6
                  or           ra, a0, a1
                  slti         s2, t4, -202
                  nop
                  mulh         a2, a3, zero
                  srli         a5, a1, 27
                  auipc        t4, 101896
                  srl          ra, t1, s3
                  slli         t4, t2, 11
                  mulh         a1, t4, a6
                  mulhsu       t6, t1, t4
                  mulhu        a5, a1, zero
                  and          t1, a6, s6
                  xor          a5, a6, t5
                  sll          a7, s2, tp
                  srli         s2, t4, 28
                  sra          gp, t5, ra
                  andi         ra, sp, 986
                  srai         a3, a7, 16
                  lui          s7, 218151
                  sll          s0, s11, s4
                  lui          t4, 346831
                  rem          gp, sp, a4
                  rem          s4, s5, ra
                  nop
                  or           t5, a7, s4
                  srli         s3, s9, 19
                  slli         a6, t3, 13
                  slti         t4, zero, -1002
                  srai         t4, a1, 15
                  div          a3, t5, t2
                  mulh         t1, t3, s6
                  mulhu        s0, s10, a0
                  sltiu        t0, a6, -865
                  sltiu        a5, s3, 1385
                  srl          a6, a3, t2
                  xor          s3, a6, a5
                  remu         t2, s0, t0
                  mulh         a2, a2, s3
                  sub          ra, t6, t4
                  mulhsu       a5, t5, zero
                  add          t5, s11, t0
                  addi         a6, a5, -560
                  mul          t4, t5, a2
                  mulhsu       a0, s4, s9
                  slti         tp, s6, 2015
                  remu         a1, t4, zero
                  sltu         tp, s0, t3
                  and          a0, s3, tp
                  addi         a1, s0, 1011
                  and          a5, ra, zero
                  or           tp, s4, s1
                  div          a2, s3, t2
                  and          a5, t4, s1
                  mul          gp, s8, t5
                  sltu         t5, t2, a0
                  srai         a3, a3, 2
                  addi         s8, s6, -730
                  srl          a1, a6, t4
                  and          s4, ra, a7
                  remu         s0, a7, s3
                  lui          s7, 276127
                  sll          a5, t4, sp
                  sltiu        s10, s11, 378
                  srl          t6, a1, s6
                  add          s6, t4, s3
                  nop
                  div          a5, zero, t2
                  sltiu        a1, tp, -1800
                  sltu         a0, t1, t1
                  srl          a0, s4, s4
                  or           t4, s8, s0
                  divu         ra, a7, a2
                  div          a0, t6, zero
                  lui          a1, 263091
                  sltu         s11, s1, t1
                  sra          gp, sp, s11
                  nop
                  sltiu        a7, s7, 1350
                  mulhu        sp, t3, s8
                  slt          a5, t0, s0
                  slli         t2, s6, 1
                  nop
                  slti         tp, s1, 1914
                  nop
                  slti         s6, s2, -1696
                  remu         a3, a4, a2
                  mulhu        s4, s6, s8
                  or           t2, s8, t4
                  div          s5, t5, s10
                  auipc        s2, 501759
                  mul          t5, a3, a2
                  mul          t0, s8, s7
                  ori          s10, t3, 1562
                  nop
                  xori         a6, a3, -1914
                  sll          s2, s3, a7
                  slt          t1, t3, sp
                  mul          s7, s2, tp
                  sra          tp, a0, sp
                  mulh         sp, s5, s10
                  srai         s2, a1, 0
                  div          t4, sp, s3
                  div          t5, t3, a1
                  sltiu        a2, s1, -1057
                  auipc        s5, 25617
                  sra          s5, a2, a2
                  mul          a6, a2, a3
                  sltiu        s6, ra, -1490
                  sltu         sp, sp, a5
                  ori          a7, a0, -1464
                  sub          s1, t1, a5
                  xori         gp, a1, -1937
                  sub          a6, a5, a5
                  sltu         zero, tp, ra
                  auipc        s4, 642851
                  mul          a3, tp, a1
                  sltiu        s4, a1, -577
                  add          s8, s8, s6
                  ori          s10, ra, 1487
                  slli         gp, t2, 19
                  mul          s10, s6, t5
                  xori         gp, t1, 1087
                  nop
                  div          s3, t6, a2
                  srl          s10, s7, s4
                  srl          ra, t5, s0
                  srai         s4, t0, 5
                  remu         s11, s11, a2
                  sll          s5, s0, s9
                  slt          ra, s10, t6
                  ori          s11, s6, -189
                  sltu         s8, s7, s0
                  divu         gp, s0, tp
                  and          s1, t2, sp
                  or           s5, s10, tp
                  sra          s4, t2, t3
                  mulh         s11, ra, s10
                  nop
                  mulh         t2, tp, s11
                  slli         t4, a3, 21
                  divu         gp, t2, s4
                  nop
                  and          a6, s8, a6
                  slti         s11, s4, 578
                  srli         a2, t1, 14
                  xor          s7, s8, s11
                  and          a0, a4, sp
                  mul          ra, sp, gp
                  lui          a0, 468451
                  mulhsu       s2, s3, a0
                  lui          s11, 757909
                  auipc        t5, 39223
                  rem          s0, s3, t5
                  srl          s8, a0, s0
                  slli         a0, s3, 1
                  sltiu        t1, a5, 1948
                  sra          a3, zero, a1
                  or           s2, gp, sp
                  lui          zero, 587653
                  xor          t4, t2, a0
                  remu         zero, a6, s1
                  and          tp, a1, s3
                  slti         a5, s0, -58
                  srli         a2, s1, 25
                  and          a2, s8, t1
                  mulhsu       s4, s4, zero
                  auipc        a7, 929881
                  mulh         t5, s6, s4
                  srli         s8, s3, 11
                  mulh         a1, t4, zero
                  add          s8, s11, s11
                  nop
                  auipc        t0, 233119
                  sltiu        a7, s3, 920
                  auipc        a3, 254099
                  lui          a0, 973464
                  nop
                  xor          a6, s6, s1
                  xori         t5, t2, -1310
                  auipc        tp, 210628
                  rem          s4, sp, t1
                  add          ra, sp, s7
                  slli         s4, t3, 3
                  mul          a0, tp, sp
                  or           s0, a0, s4
                  remu         s5, t4, sp
                  srai         s5, s11, 25
                  sltiu        t4, a3, 435
                  andi         s11, t3, -920
                  mulh         gp, t4, a4
                  sltiu        t1, a3, -1003
                  auipc        s8, 65661
                  remu         zero, a6, a2
                  andi         a6, s1, 533
                  nop
                  sra          s7, a1, s5
                  or           s11, s0, gp
                  sltiu        s0, t5, 1144
                  ori          t4, t0, -213
                  sltiu        s2, tp, 1442
                  sltiu        t5, s1, 423
                  add          t6, s5, s1
                  sltiu        a6, s3, -525
                  add          ra, s1, gp
                  auipc        t0, 578836
                  slti         a3, ra, -232
                  remu         a7, t3, zero
                  slli         t5, t0, 1
                  slt          t4, s4, s9
                  or           a0, a3, tp
                  xor          t1, sp, t2
                  remu         s6, s5, s3
                  or           a3, s0, s11
                  sll          s2, t2, s5
                  mul          s1, a5, a6
                  rem          t4, s8, s4
                  mulhu        a5, s3, a2
                  div          s7, s8, s2
                  slt          s8, s7, s4
                  sub          a1, gp, s7
                  slt          t5, a7, a2
                  xori         a5, a3, -900
                  sltiu        t4, s2, -1612
                  mulhu        t4, t0, a2
                  or           tp, a5, s2
                  lui          t0, 20254
                  slli         s5, a2, 31
                  slti         gp, t4, 1761
                  lui          t5, 708157
                  xor          a5, gp, tp
                  mulh         tp, s2, s1
                  srli         a0, sp, 21
                  or           s11, a4, t2
                  add          s4, s10, ra
                  mulhu        s10, a2, sp
                  xori         t0, t6, -1392
                  sltiu        sp, t1, -2044
                  mulhu        s0, s8, a4
                  or           s8, a2, a3
                  nop
                  slti         t1, t4, -1494
                  remu         s2, s8, tp
                  srl          t5, tp, ra
                  mul          s3, s5, s6
                  sltu         a7, a1, ra
                  add          s10, s3, a1
                  slli         t1, a2, 18
                  lui          t5, 835815
                  auipc        gp, 151726
                  xori         s10, s10, 1345
                  mulhu        ra, t5, s5
                  divu         a3, s10, sp
                  sltu         t5, s3, a1
                  ori          s4, t3, 1279
                  rem          s6, s10, t2
                  or           a5, a0, zero
                  srai         s0, s9, 16
                  xori         a0, s9, -1560
                  remu         t0, s8, t6
                  ori          t0, t1, -977
                  nop
                  xor          a2, a1, a0
                  slti         s2, s8, 1004
                  divu         a0, sp, s3
                  mulh         s4, t1, t2
                  srl          t5, s7, s6
                  sll          t2, a0, s4
                  xor          ra, s6, s7
                  slti         tp, t3, -1199
                  div          a0, s7, a4
                  nop
                  sra          ra, s2, zero
                  rem          a3, tp, gp
                  slti         t2, a2, -1674
                  slt          s8, s11, t2
                  auipc        s10, 1034085
                  srai         s6, a3, 10
                  mul          sp, a2, a4
                  xori         s1, zero, -1198
                  xor          zero, s4, zero
                  mul          s4, a4, a1
                  srli         t2, zero, 17
                  lui          s10, 663525
                  sub          t4, a6, t1
                  addi         a2, s10, 1387
                  mulhsu       s4, t0, s7
                  nop
                  srli         sp, t4, 9
                  slt          ra, s5, s3
                  sub          gp, s0, s10
                  srl          t1, zero, gp
                  sll          tp, a0, s11
                  add          a7, s1, a4
                  andi         s1, a3, 850
                  or           a6, a4, a3
                  mulh         t6, t2, t0
                  mulh         a3, s7, t0
                  or           s4, s0, s3
                  sll          s3, s9, s2
                  mul          a0, s1, t5
                  and          s7, t4, s3
                  mulh         tp, a4, t0
                  xor          sp, a1, t5
                  sltiu        s8, tp, 1841
                  srai         s10, s0, 14
                  slti         s2, t2, 556
                  sub          s0, s1, a4
                  sltiu        zero, a7, 1655
                  andi         a1, s3, -1671
                  srli         a1, t6, 22
                  remu         s1, ra, a2
                  sll          s2, t2, a1
                  add          s0, t5, s5
                  sra          s7, a5, a2
                  slli         s8, gp, 12
                  slli         s8, ra, 30
                  mul          a2, ra, s4
                  nop
                  sra          t5, zero, s11
                  slt          t4, a7, s3
                  add          t5, zero, s4
                  nop
                  mul          s10, t5, s1
                  divu         s4, a6, s10
                  ori          s6, s3, -714
                  divu         a1, ra, t6
                  add          t6, s10, s7
                  and          t4, s1, t3
                  add          a3, gp, a1
                  ori          s2, a2, -602
                  divu         a1, t6, a6
                  slti         a0, a2, -1487
                  or           s8, a0, t6
                  lui          a2, 546126
                  lui          s8, 882006
                  sltiu        s1, t0, -670
                  divu         s7, s5, a1
                  slli         a2, a7, 29
                  mulhu        t5, a0, a1
                  srl          s8, a2, t2
                  lui          t4, 26548
                  slt          t6, t1, a6
                  add          tp, s3, a3
                  auipc        s3, 677658
                  auipc        a6, 251030
                  sltiu        s5, s3, -1330
                  mulhsu       s3, s4, s11
                  add          t4, a0, a1
                  srl          t2, gp, ra
                  mulhu        s4, a0, t2
                  sltu         sp, t5, t1
                  sltiu        s11, s4, 773
                  mul          a3, s8, a4
                  ori          t0, t2, -84
                  mulhu        a3, zero, a6
                  divu         gp, a1, t5
                  slt          a0, t0, t5
                  sub          a6, s3, s9
                  or           a3, t0, s6
                  srl          a3, s8, s0
                  div          s8, s3, ra
                  remu         s7, a7, a4
                  slli         a7, zero, 31
                  slt          ra, s8, s1
                  xor          s3, t0, s3
                  mulhsu       s3, s0, a1
                  ori          gp, t4, -599
                  auipc        s5, 274454
                  slt          sp, sp, s8
                  mul          t2, t0, t0
                  ori          t1, a5, 1543
                  rem          s3, s3, s10
                  mulh         t5, s8, s6
                  sltu         s5, gp, gp
                  mulhsu       t1, s9, ra
                  mulh         a1, a4, tp
                  sub          s8, a5, t6
                  mul          a3, t3, s10
                  remu         t1, s11, s2
                  mulhu        t5, tp, tp
                  mul          a1, sp, s9
                  div          gp, a5, zero
                  sub          s2, s11, s4
                  sll          s11, s1, s5
                  slli         a6, a7, 8
                  auipc        s10, 278958
                  mul          t2, s1, a3
                  mulhu        t5, s9, t0
                  srai         s8, a0, 0
                  lui          s0, 677262
                  sltiu        s3, s4, -1025
                  slli         s0, s10, 30
                  mulhu        s4, a1, t4
                  ori          a7, sp, 739
                  div          s8, t5, a3
                  or           a3, a7, a6
                  srai         s4, a3, 6
                  mulhsu       a0, t2, t3
                  srli         s8, t1, 9
                  divu         s7, t6, t5
                  auipc        t0, 872344
                  srai         t1, s3, 17
                  addi         s0, s1, 936
                  sltu         a2, a0, s4
                  srai         s11, s4, 1
                  srli         s7, t5, 0
                  auipc        s3, 786641
                  addi         a0, s10, 805
                  andi         s4, s2, 62
                  auipc        s5, 746109
                  srl          a6, s2, t0
                  nop
                  add          s4, s1, tp
                  or           ra, t5, s11
                  or           sp, s10, t0
                  nop
                  lui          a7, 207405
                  remu         a5, s1, s8
                  sra          s11, a1, tp
                  slti         s11, gp, -1056
                  andi         s11, s6, -725
                  nop
                  remu         gp, zero, t0
                  add          a3, a7, gp
                  div          tp, s11, t5
                  sub          gp, t4, s8
                  xor          a1, s6, s7
                  addi         t5, t6, 1817
                  srl          gp, t1, s8
                  srai         t6, sp, 0
                  slti         a7, gp, 1031
                  mulhu        s10, a0, ra
                  sra          s0, s10, gp
                  sltiu        t1, t5, -1614
                  mulhu        a6, gp, a3
                  sltu         a2, a6, t0
                  nop
                  auipc        s11, 1005857
                  sltu         t5, zero, a7
                  mulh         zero, t6, t3
                  mul          ra, s9, t0
                  addi         s3, s0, -624
                  sra          tp, a2, s10
                  sll          s8, a2, s0
                  sll          a3, s6, a0
                  lui          s0, 243292
                  divu         s8, s7, s2
                  sub          s7, a2, sp
                  divu         s0, s4, s3
                  mulhsu       t0, s10, s1
                  slt          s0, a1, s5
                  slli         t5, t2, 9
                  nop
                  auipc        gp, 737466
                  auipc        tp, 729615
                  sra          ra, t4, a7
                  or           a7, t1, s2
                  mulh         s6, s3, s5
                  sltu         t1, s6, s2
                  div          t6, a3, s7
                  div          s8, a2, a5
                  andi         t0, s8, -315
                  rem          t4, a1, t5
                  auipc        a2, 715023
                  ori          a6, s10, 697
                  xori         s11, s8, 1325
                  and          s10, s0, s1
                  auipc        a2, 795487
                  sub          s5, t3, a5
                  xor          s2, a0, t2
                  add          a0, s7, zero
                  sltu         s0, s5, zero
                  add          tp, gp, t6
                  or           s1, s8, ra
                  mulh         s4, a4, a6
                  mul          s10, t0, t5
                  addi         s0, s5, -1610
                  lui          s5, 44623
                  andi         s10, s7, -1043
                  mul          a3, gp, t4
                  sll          a5, a6, a1
                  srl          t0, s9, zero
                  sltiu        s11, a6, -1940
                  nop
                  srli         t1, ra, 11
                  add          t2, t4, gp
                  addi         zero, s5, -1159
                  sltu         a3, tp, s9
                  mulhu        s8, t4, a5
                  srl          s2, s7, sp
                  slti         s8, s4, -1355
                  add          s4, s8, a6
                  srai         zero, a6, 20
                  mulhsu       s8, t0, t0
                  nop
                  ori          t5, a7, 1823
                  add          t6, s3, t0
                  sltiu        t1, t6, -1939
                  ori          zero, s5, -1861
                  mul          ra, a0, s0
                  divu         a2, a7, a4
                  slti         a7, t0, 1845
                  auipc        a5, 792458
                  slli         s3, a3, 25
                  add          s8, sp, a1
                  mulh         t1, a5, a1
                  lui          s5, 272717
                  mulhu        t6, a4, a6
                  mul          s11, gp, s4
                  sltu         a0, a7, s7
                  sll          a5, a7, s11
                  rem          a7, s10, s0
                  sra          a6, t0, s8
                  sltiu        s11, a2, 1285
                  auipc        a5, 850738
                  sub          s5, t5, s1
                  nop
                  srl          s7, sp, s4
                  rem          t2, t2, s4
                  auipc        s2, 361496
                  ori          a3, tp, 1652
                  srli         s0, s11, 21
                  ori          a7, t6, 1489
                  xor          s10, t2, a6
                  xori         s0, s10, 908
                  srli         sp, a4, 6
                  auipc        s3, 284749
                  xori         s7, s9, 1898
                  and          t0, tp, a4
                  srl          a1, a7, t2
                  divu         s7, a7, a4
                  srai         s11, s6, 29
                  nop
                  slt          ra, t0, t0
                  sltu         t4, s4, a3
                  srli         a2, s2, 0
                  sra          a5, s8, gp
                  sra          a5, ra, s9
                  add          s3, sp, s3
                  sll          a0, gp, ra
                  addi         s10, s0, 732
                  auipc        a1, 468073
                  nop
                  xor          a7, s4, zero
                  xori         s3, a5, -989
                  sltu         tp, tp, tp
                  auipc        s7, 273934
                  auipc        t0, 787336
                  slti         a2, s11, 255
                  mulh         s3, t6, a1
                  mul          a7, t0, t6
                  or           s11, a1, s4
                  mul          t5, zero, t4
                  srli         a0, zero, 11
                  sub          s4, s9, s7
                  rem          s2, s8, zero
                  mulhu        s1, tp, tp
                  xori         t2, s8, -892
                  slli         s4, ra, 27
                  div          tp, t6, gp
                  div          a3, s10, a2
                  rem          tp, gp, s8
                  sltu         t0, s0, s8
                  slti         t4, t2, 1080
                  andi         s10, s6, 320
                  mulhu        a7, s10, a2
                  srl          t4, s9, a4
                  xor          s4, t3, s4
                  rem          t2, s9, s4
                  sub          t4, s7, a2
                  srai         s4, tp, 29
                  add          s11, gp, sp
                  and          s6, t6, t6
                  add          a6, t4, s10
                  sltu         t4, s6, s5
                  mulhsu       s4, a3, a5
                  xor          a6, t2, t0
                  addi         t2, s8, -1024
                  lui          gp, 475308
                  mulh         sp, s9, s1
                  div          s11, gp, s1
                  srli         a7, t5, 24
                  srl          t2, gp, zero
                  xor          a0, s1, a6
                  mulhsu       s4, t5, tp
                  mulh         s0, a0, zero
                  sra          gp, t1, s0
                  sltu         s4, s9, s7
                  and          tp, t0, gp
                  addi         a5, a5, -292
                  lui          s2, 592026
                  mulhsu       s2, s0, gp
                  sra          s8, t3, t1
                  div          ra, s3, t1
                  div          s5, gp, s9
                  mul          s1, s7, a7
                  sub          s4, t2, a0
                  sra          t5, gp, s2
                  divu         s8, a3, t6
                  srai         t1, a0, 4
                  addi         s11, s7, 1251
                  xori         s2, s8, 982
                  mul          s11, ra, s8
                  and          t5, sp, s3
                  addi         tp, s6, 560
                  sra          t0, t5, zero
                  sll          t4, s6, s1
                  sltu         a2, s11, s9
                  sra          t0, t4, s3
                  ori          t5, a5, -1977
                  mulhsu       s7, t1, a6
                  addi         s6, t1, 868
                  sll          s6, s4, s6
                  or           s3, a0, s6
                  mulhu        a1, t0, a6
                  sub          t1, t0, a5
                  or           s4, s4, zero
                  or           s2, s9, s11
                  srl          s2, a7, zero
                  mulhu        s1, a6, gp
                  sra          s5, s3, s1
                  nop
                  addi         a5, s2, -938
                  mul          t1, s7, t1
                  and          s4, s2, t2
                  sltu         zero, sp, a6
                  and          t5, a6, s8
                  auipc        tp, 621
                  mulhu        a1, a7, a6
                  remu         tp, zero, s1
                  nop
                  sra          a7, t4, s11
                  xori         a7, s2, 1443
                  lui          s1, 918799
                  or           a7, a6, a5
                  xor          t2, s4, t5
                  slti         s6, t1, 757
                  nop
                  and          a3, tp, t6
                  sub          s8, t6, a5
                  sltu         t0, zero, s3
                  slt          t6, s1, s7
                  mulh         s10, a0, a3
                  srai         s2, s2, 16
                  srli         a7, s7, 22
                  xor          s4, t1, s5
                  rem          a7, s7, t3
                  srai         a3, s6, 7
                  sll          t4, t0, s1
                  sra          s6, t6, s1
                  xori         tp, ra, 1565
                  sub          s5, a0, t0
                  sll          s8, sp, s9
                  srai         ra, a5, 9
                  sub          s4, s0, a6
                  sltu         zero, a6, s4
                  srl          t5, a3, t2
                  xor          a6, a3, zero
                  divu         s10, s0, a1
                  sltiu        s10, zero, -1755
                  sra          gp, s5, gp
                  xor          s10, a5, s8
                  srai         s3, s7, 11
                  nop
                  addi         t6, s6, -1409
                  sub          gp, t1, t4
                  lui          s11, 487831
                  andi         s3, ra, 170
                  srai         s8, s8, 27
                  srai         t0, s1, 31
                  slli         a7, t6, 27
                  addi         t2, a3, -1118
                  ori          s3, zero, 349
                  divu         a1, t5, t6
                  rem          ra, a7, s5
                  srl          ra, a7, t2
                  sub          s5, s2, s11
                  sll          tp, t2, a3
                  andi         s10, s8, 1774
                  andi         t6, a3, -1291
                  sll          t4, a1, s7
                  sltiu        s8, s11, 1594
                  or           t1, a0, s8
                  srai         s8, a4, 24
                  mulhsu       t1, ra, s10
                  srai         s10, t0, 19
                  mulhsu       t5, s9, s4
                  div          s11, a4, s1
                  sltu         a6, s3, s6
                  xori         s0, t6, 1643
                  mulhu        s7, a5, a3
                  slli         zero, gp, 3
                  srli         s2, a5, 17
                  mulh         t4, t1, a0
                  sub          t5, s0, a7
                  sub          t4, a5, a3
                  mulhu        a5, t2, t6
                  sltiu        s5, a4, -329
                  lui          tp, 43405
                  slti         sp, t4, 1047
                  div          tp, s1, s4
                  srai         sp, s3, 31
                  auipc        a6, 150111
                  add          s5, zero, t1
                  auipc        s5, 739453
                  srli         a1, a2, 2
                  mulh         gp, s6, ra
                  andi         a2, s4, -754
                  and          a6, sp, t6
                  slli         sp, s3, 24
                  rem          s4, s10, a1
                  sub          gp, t0, sp
                  mul          s0, a3, s7
                  xori         sp, a1, 912
                  srl          zero, sp, a0
                  and          t0, s6, s7
                  auipc        t4, 1377
                  andi         s5, t0, -1474
                  mul          a3, t4, s2
                  lui          a6, 838444
                  xor          t5, gp, a0
                  nop
                  sub          t5, t0, t6
                  srli         a3, s10, 19
                  mulhsu       a0, s7, a6
                  xor          a0, t2, a1
                  auipc        gp, 408837
                  sltiu        s1, sp, -1744
                  xori         s10, t5, 8
                  slli         t0, t4, 9
                  slti         t2, s3, 491
                  andi         a7, s11, -446
                  sll          s1, s8, t2
                  andi         zero, s5, 213
                  sltu         t2, a0, s10
                  xori         t1, t3, -1322
                  sltu         s10, s7, t4
                  rem          zero, t4, sp
                  mulh         a6, t1, ra
                  srl          a6, s11, tp
                  sltiu        s7, tp, 1439
                  slti         s11, a0, 1870
                  sll          a6, gp, s0
                  srli         a2, t4, 6
                  mulhsu       s4, a1, sp
                  divu         sp, s9, s1
                  or           s8, s3, t6
                  sra          zero, s1, t1
                  divu         t4, a7, s9
                  slli         s10, ra, 11
                  ori          a7, a3, -278
                  and          s4, t2, sp
                  nop
                  auipc        a2, 353088
                  sltiu        s11, a0, 1966
                  mulhu        s11, t4, t3
                  mulh         t6, a6, tp
                  sltiu        t0, a6, -239
                  sll          s1, a6, t6
                  lui          t2, 808955
                  slli         t4, t4, 30
                  sra          a0, a0, s2
                  slti         t0, a6, 1826
                  mul          zero, t4, t2
                  xor          s7, t5, t5
                  srai         a6, zero, 7
                  mul          a0, a3, gp
                  sub          tp, a3, t5
                  ori          s7, t5, -1596
                  mulhsu       s1, t0, a5
                  addi         t5, t0, -1310
                  remu         s7, a0, s7
                  xori         s7, t4, 117
                  srl          s1, s7, s6
                  mulhu        a2, ra, s6
                  add          a0, t1, s6
                  or           s7, s7, sp
                  srli         a7, a2, 2
                  mul          a0, t3, t2
                  srl          s4, s5, s6
                  or           t2, s7, sp
                  mul          t1, a3, a1
                  andi         t5, s6, -1796
                  srli         s4, s4, 30
                  sltu         s3, a3, s11
                  xori         sp, tp, 1164
                  sll          ra, s4, a5
                  slt          s0, a3, a5
                  xori         t5, a3, 819
                  srai         s6, s11, 12
                  divu         s8, zero, s5
                  mulhu        s2, s5, t4
                  xori         s4, s6, 1877
                  auipc        s8, 828956
                  nop
                  mulh         t0, a4, s5
                  xori         a7, s9, -473
                  xori         s10, t2, 129
                  divu         t6, a2, sp
                  slt          s4, s6, tp
                  rem          s1, t5, t4
                  remu         s10, t3, s9
                  div          tp, a4, s4
                  mulh         zero, t0, s9
                  sltiu        zero, zero, -42
                  mul          a5, s6, a0
                  addi         s4, t3, 400
                  sltiu        ra, s7, 1381
                  andi         a7, s3, 1319
                  slti         t5, t3, 1031
                  sra          sp, t5, t3
                  sub          t0, ra, t4
                  mul          t4, t3, s2
                  sll          t1, s3, s4
                  ori          a6, ra, -540
                  srli         s7, t0, 30
                  addi         a6, s0, -845
                  slti         t5, a7, -495
                  or           a2, a5, a1
                  xor          s8, s7, a1
                  mulhsu       a3, s4, t1
                  xori         tp, gp, 692
                  rem          t2, a0, s8
                  mul          s10, s1, tp
                  ori          s0, s3, 1245
                  mulh         a5, t4, t0
                  sll          gp, s0, t0
                  slti         t2, t5, 1611
                  srl          a2, a7, tp
                  or           a0, a7, t0
                  add          s3, t6, a3
                  sltu         s8, t6, a7
                  addi         a3, s2, -1374
                  slt          a7, s9, s10
                  sltiu        s4, t6, 130
                  or           t4, t6, s9
                  slli         t5, t1, 4
                  add          t5, t4, s10
                  add          s8, a4, s6
                  xori         t4, t3, -1476
                  rem          t4, s9, t2
                  sra          s5, t0, s3
                  sltiu        a1, s4, 877
                  xor          s2, s2, s8
                  sll          sp, a2, t2
                  slt          t6, t0, ra
                  divu         s10, gp, s0
                  sltu         tp, s9, s7
                  sub          s4, a3, t3
                  and          s2, a2, gp
                  slli         t5, s1, 3
                  div          t4, t5, t0
                  slti         tp, t6, -1485
                  sra          s8, s4, s8
                  mul          gp, t2, t3
                  ori          t0, t1, 14
                  srl          tp, s0, ra
                  add          t1, a5, s0
                  nop
                  addi         t1, s0, 1633
                  ori          s10, sp, -208
                  auipc        t1, 516518
                  lui          t0, 780594
                  divu         t0, s8, sp
                  or           a7, s10, a3
                  srl          ra, s5, a6
                  srl          a3, a0, s5
                  sltiu        s1, s11, -561
                  srl          a0, a5, s5
                  xori         a2, s0, -1090
                  ori          t5, s4, -1858
                  and          s8, a4, s8
                  rem          s0, t1, s0
                  mulhsu       t1, a7, s7
                  slti         a0, s4, 39
                  sltu         t1, a7, a5
                  xori         s11, s5, 1884
                  lui          s8, 869041
                  srai         a2, a6, 19
                  divu         t1, t2, a1
                  xori         s7, a1, 1154
                  mulhu        t1, a4, a4
                  xori         t1, t6, -476
                  remu         a0, sp, s3
                  remu         s8, s0, t2
                  lui          s3, 70049
                  mulhu        t5, s0, s0
                  mul          s5, s3, t6
                  sltiu        a2, sp, -698
                  and          s4, s10, a1
                  sltu         a3, s10, s3
                  rem          s1, gp, s8
                  srli         s10, s5, 23
                  mul          t0, a4, s4
                  xori         s1, t0, 768
                  remu         t0, s10, a1
                  remu         t5, t6, a0
                  or           sp, a7, s10
                  sltu         a1, ra, ra
                  sltu         s6, s3, t2
                  srli         s7, t4, 30
                  nop
                  sltiu        zero, a4, -1932
                  andi         tp, a2, 1817
                  and          gp, s3, s5
                  remu         s7, a3, s2
                  sltiu        gp, s10, -1286
                  sltiu        s7, t4, -1227
                  lui          a5, 125507
                  sltiu        s10, t6, 1024
                  or           sp, gp, a1
                  sub          ra, sp, t6
                  lui          s10, 938580
                  remu         a2, t4, s3
                  slti         a3, s3, 1730
                  div          t1, gp, a7
                  srli         ra, s1, 31
                  mulh         gp, t5, t2
                  ori          sp, s11, 809
                  xor          s0, zero, s4
                  and          a3, s9, a6
                  add          s7, zero, zero
                  addi         t4, t6, -523
                  nop
                  slli         s7, t2, 1
                  mul          t2, a1, t6
                  sltu         s1, s3, a3
                  or           s2, t6, tp
                  xori         s2, a5, 300
                  mul          s1, s4, t4
                  addi         a3, a5, -1985
                  srl          t2, t2, a2
                  lui          gp, 969517
                  mulhsu       tp, t4, s4
                  remu         gp, s4, ra
                  srli         a2, s0, 3
                  nop
                  sltiu        ra, a5, -1134
                  mulhsu       gp, s7, tp
                  srai         t1, s3, 13
                  or           a1, ra, a3
                  xori         a2, s5, -284
                  srai         t2, s8, 29
                  rem          s6, a1, t3
                  add          s7, a2, gp
                  slti         s0, s5, 148
                  ori          t5, a3, -1646
                  rem          s2, s3, s3
                  lui          s1, 689726
                  andi         a0, a5, -1473
                  srl          sp, s2, s2
                  sub          t6, t1, t5
                  andi         a2, gp, -1310
                  nop
                  auipc        a1, 775467
                  div          t1, s6, a3
                  divu         a6, s2, t0
                  slti         t0, t6, -339
                  srli         s11, t3, 21
                  mulhsu       tp, t3, tp
                  auipc        s8, 34569
                  auipc        t0, 441648
                  slti         s5, sp, -1568
                  rem          t1, a0, s3
                  andi         s11, a7, -1359
                  slli         sp, a7, 8
                  slti         a2, s8, -1073
                  rem          t4, s5, t6
                  lui          s0, 55458
                  and          s8, a2, s11
                  mulh         t6, s1, s6
                  mulhsu       s8, a4, s1
                  sltiu        t1, a5, -1591
                  ori          zero, s10, -64
                  sll          t1, a4, t6
                  addi         s6, t3, -1022
                  ori          a7, a1, -1575
                  ori          zero, s8, -492
                  add          tp, s6, s10
                  sub          t2, s1, t1
                  xor          gp, a3, s0
                  sltu         a2, t5, t4
                  auipc        ra, 276432
                  xor          s5, t1, tp
                  lui          s2, 1028172
                  srli         s5, s4, 11
                  sub          s3, s2, t5
                  rem          s2, a7, s7
                  slli         s8, s3, 12
                  srli         s7, s0, 8
                  ori          s6, a4, 1882
                  xori         s1, t6, 1953
                  slli         a0, t3, 24
                  mulhsu       t4, s11, s2
                  andi         a7, s11, -840
                  mulhu        s6, s6, s9
                  mulhsu       tp, ra, s3
                  addi         s3, s5, -402
                  sltu         s6, a1, s5
                  div          t1, a4, t3
                  auipc        zero, 739772
                  mulh         a2, a6, gp
                  sub          s8, s9, s0
                  div          t1, s8, s1
                  sltu         s1, s9, t6
                  and          t6, s1, a1
                  xor          tp, a0, t1
                  srai         s5, s9, 14
                  rem          t6, s5, s4
                  mulh         a0, s7, t6
                  slti         t1, t2, -1995
                  srli         a3, t4, 30
                  lui          t1, 567002
                  sra          tp, a7, s1
                  ori          t5, t0, 1939
                  sll          a0, t0, a4
                  slt          a3, t2, a5
                  xori         a2, a2, 1783
                  div          a0, a3, s10
                  mulhu        t6, gp, t4
                  remu         zero, s4, a1
                  xor          a7, sp, a3
                  divu         tp, t5, s5
                  add          s11, a1, s6
                  sra          s7, ra, t2
                  srl          s2, s4, gp
                  or           a5, s1, s6
                  slt          sp, a3, s7
                  or           s1, a0, ra
                  rem          s11, t4, sp
                  div          t1, a4, tp
                  srl          a7, a1, sp
                  addi         s3, t4, -902
                  slt          a1, s11, ra
                  auipc        gp, 474715
                  auipc        s1, 1028526
                  xor          zero, a5, t4
                  mulh         a1, a4, t0
                  sltiu        s11, s2, -1600
                  mulhu        s11, zero, s7
                  remu         a6, s5, zero
                  sub          a1, s11, t4
                  remu         a2, t4, s4
                  sll          s2, a4, t0
                  mulhu        t2, s1, a0
                  div          s2, a1, s11
                  div          t2, t3, s1
                  mulhsu       t1, zero, sp
                  mulh         a5, a5, s2
                  srli         s0, sp, 17
                  mulhsu       a0, a6, zero
                  xori         a6, a0, 1084
                  slli         s7, t3, 28
                  rem          a1, a4, tp
                  slli         ra, a6, 23
                  slt          s1, s9, s9
                  add          a1, s4, gp
                  srl          a7, a0, a6
                  srai         tp, s5, 18
                  sll          t6, a0, sp
                  sltu         s11, ra, s10
                  mul          s8, s4, s2
                  mulh         s2, s8, a6
                  sltu         ra, s6, a1
                  srai         s10, a1, 0
                  srli         a5, s1, 2
                  xori         s6, s3, -282
                  slt          s10, t5, a1
                  sll          t4, sp, t3
                  rem          s4, a4, t6
                  sltu         s3, s8, a1
                  andi         s0, t6, -1851
                  and          gp, a0, t1
                  mulh         s5, s7, t1
                  sltiu        s8, s4, -828
                  slt          t1, s2, gp
                  mulh         sp, s11, s8
                  addi         t5, t0, -1228
                  srai         s7, zero, 23
                  nop
                  sra          t1, s4, t2
                  auipc        t2, 811097
                  sra          s10, t4, s2
                  slli         s5, t5, 9
                  and          s8, ra, tp
                  rem          zero, a7, a7
                  addi         s5, s6, -557
                  and          a0, a6, s8
                  mul          s3, tp, s8
                  sra          a0, gp, a7
                  rem          t1, s9, t1
                  slli         ra, s3, 23
                  andi         s1, ra, 473
                  auipc        t5, 142409
                  slt          s1, s10, s10
                  sltiu        gp, a3, 1840
                  addi         a2, s2, 1268
                  andi         s11, t6, 492
                  xor          s8, s8, s5
                  rem          s4, t5, s5
                  srai         s4, s3, 24
                  sltu         s0, s4, sp
                  nop
                  xori         gp, a6, -1129
                  remu         sp, s10, s4
                  xori         t0, t2, 1198
                  sltu         a5, t4, s3
                  or           a3, a6, s7
                  nop
                  andi         t1, t1, 774
                  slti         gp, s8, 1390
                  mul          t5, t3, ra
                  mulhsu       tp, t4, s2
                  xori         s8, zero, -338
                  la x28, test_done
                  jalr x0, x28, 0
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
                  addi x25, x25, -4
                  sw  x14, (x25)
                  add x14, x25, zero
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x25, x14, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_2:
                  addi x25, x25, -4
                  sw  x14, (x25)
                  add x14, x25, zero
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x25, x14, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_3:
                  addi x25, x25, -4
                  sw  x14, (x25)
                  add x14, x25, zero
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x25, x14, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_4:
                  addi x25, x25, -4
                  sw  x14, (x25)
                  add x14, x25, zero
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x25, x14, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_5:
                  addi x25, x25, -4
                  sw  x14, (x25)
                  add x14, x25, zero
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x25, x14, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_6:
                  addi x25, x25, -4
                  sw  x14, (x25)
                  add x14, x25, zero
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x25, x14, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_7:
                  addi x25, x25, -4
                  sw  x14, (x25)
                  add x14, x25, zero
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x25, x14, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_8:
                  addi x25, x25, -4
                  sw  x14, (x25)
                  add x14, x25, zero
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x25, x14, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_9:
                  addi x25, x25, -4
                  sw  x14, (x25)
                  add x14, x25, zero
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x25, x14, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_10:
                  addi x25, x25, -4
                  sw  x14, (x25)
                  add x14, x25, zero
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x25, x14, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_11:
                  addi x25, x25, -4
                  sw  x14, (x25)
                  add x14, x25, zero
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x25, x14, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_12:
                  addi x25, x25, -4
                  sw  x14, (x25)
                  add x14, x25, zero
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x25, x14, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_13:
                  addi x25, x25, -4
                  sw  x14, (x25)
                  add x14, x25, zero
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x25, x14, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_14:
                  addi x25, x25, -4
                  sw  x14, (x25)
                  add x14, x25, zero
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x25, x14, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_15:
                  addi x25, x25, -4
                  sw  x14, (x25)
                  add x14, x25, zero
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x25, x14, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

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
                  addi x25, x25, -4
                  sw  x14, (x25)
                  add x14, x25, zero
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x25, x14, zero
                  csrr x27, 0x341 # MEPC
                  csrr x27, 0x342 # MCAUSE
                  li x11, 0x3 # BREAKPOINT
                  beq x27, x11, ebreak_handler
                  li x11, 0x8 # ECALL_UMODE
                  beq x27, x11, ecall_handler
                  li x11, 0x9 # ECALL_SMODE
                  beq x27, x11, ecall_handler
                  li x11, 0xb # ECALL_MMODE
                  beq x27, x11, ecall_handler
                  li x11, 0x1
                  beq x27, x11, instr_fault_handler
                  li x11, 0x5
                  beq x27, x11, load_fault_handler
                  li x11, 0x7
                  beq x27, x11, store_fault_handler
                  li x11, 0xc
                  beq x27, x11, pt_fault_handler
                  li x11, 0xd
                  beq x27, x11, pt_fault_handler
                  li x11, 0xf
                  beq x27, x11, pt_fault_handler
                  li x11, 0x2 # ILLEGAL_INSTRUCTION
                  beq x27, x11, illegal_instr_handler
                  csrr x11, 0x343 # MTVAL
                  1: la x28, test_done
                  jalr x1, x28, 0

ecall_handler:    
                  la x27, _start
                  sw x0, 0(x27)
                  sw x1, 4(x27)
                  sw x2, 8(x27)
                  sw x3, 12(x27)
                  sw x4, 16(x27)
                  sw x5, 20(x27)
                  sw x6, 24(x27)
                  sw x7, 28(x27)
                  sw x8, 32(x27)
                  sw x9, 36(x27)
                  sw x10, 40(x27)
                  sw x11, 44(x27)
                  sw x12, 48(x27)
                  sw x13, 52(x27)
                  sw x14, 56(x27)
                  sw x15, 60(x27)
                  sw x16, 64(x27)
                  sw x17, 68(x27)
                  sw x18, 72(x27)
                  sw x19, 76(x27)
                  sw x20, 80(x27)
                  sw x21, 84(x27)
                  sw x22, 88(x27)
                  sw x23, 92(x27)
                  sw x24, 96(x27)
                  sw x25, 100(x27)
                  sw x26, 104(x27)
                  sw x27, 108(x27)
                  sw x28, 112(x27)
                  sw x29, 116(x27)
                  sw x30, 120(x27)
                  sw x31, 124(x27)
                  la x28, write_tohost
                  jalr x0, x28, 0

instr_fault_handler:
                  add x14, x25, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
                  add x25, x14, zero
                  lw  x14, (x25)
                  addi x25, x25, 4
                  mret

load_fault_handler:
                  add x14, x25, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
                  add x25, x14, zero
                  lw  x14, (x25)
                  addi x25, x25, 4
                  mret

store_fault_handler:
                  add x14, x25, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
                  add x25, x14, zero
                  lw  x14, (x25)
                  addi x25, x25, 4
                  mret

ebreak_handler:   
                  csrr  x27, 0x341
                  addi  x27, x27, 4
                  csrw  0x341, x27
                  add x14, x25, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
                  add x25, x14, zero
                  lw  x14, (x25)
                  addi x25, x25, 4
                  mret

illegal_instr_handler:
                  csrr  x27, 0x341
                  addi  x27, x27, 4
                  csrw  0x341, x27
                  add x14, x25, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
                  add x25, x14, zero
                  lw  x14, (x25)
                  addi x25, x25, 4
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x27, 0x300 # MSTATUS;
                  csrr  x27, 0x304 # MIE;
                  csrr  x27, 0x344 # MIP;
                  csrrc x27, 0x344, x27 # MIP;
                  add x14, x25, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
                  add x25, x14, zero
                  lw  x14, (x25)
                  addi x25, x25, 4
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
