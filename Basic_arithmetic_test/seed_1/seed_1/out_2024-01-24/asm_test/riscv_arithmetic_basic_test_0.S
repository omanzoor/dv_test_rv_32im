.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x10, h0_start
jalr x0, x10, 0
h0_start:
                  li x9, 0x40001104
                  csrw 0x301, x9
kernel_sp:        
                  la x16, kernel_stack_end

trap_vec_init:    
                  la x9, mtvec_handler
                  ori x9, x9, 1
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
                  li x0, 0x0
                  li x1, 0x80000000
                  li x2, 0x80000000
                  li x3, 0x12e7df35
                  li x4, 0x80000000
                  li x5, 0xf
                  li x6, 0x92325c34
                  li x7, 0x0
                  li x8, 0x4709e59e
                  li x9, 0xfd43077a
                  li x10, 0x80000000
                  li x11, 0x0
                  li x12, 0x80000000
                  li x13, 0x0
                  li x14, 0xe
                  li x15, 0x4
                  li x17, 0xd
                  li x18, 0x0
                  li x19, 0x0
                  li x20, 0x495303a2
                  li x21, 0x580871b
                  li x23, 0xc
                  li x24, 0x80000000
                  li x25, 0x0
                  li x26, 0x6
                  li x27, 0x0
                  li x28, 0xfc2b6978
                  li x29, 0x80000000
                  li x30, 0xf89ac2f1
                  li x31, 0x80000000
                  la x22, user_stack_end
main:             remu         s9, t1, t5
                  nop
                  srli         ra, s3, 13
                  andi         s8, s3, 1271
                  slt          t0, a1, t0
                  xor          s9, t6, zero
                  slt          t5, ra, s6
                  mul          a7, t5, t3
                  sltu         s3, a7, ra
                  addi         a3, s3, -2040
                  and          tp, a4, a4
                  remu         sp, s10, s9
                  rem          t2, s7, t0
                  mulh         t4, t2, t2
                  add          a5, s11, a2
                  and          zero, s1, s0
                  srli         t3, sp, 21
                  mulh         a1, zero, t1
                  lui          a7, 475300
                  remu         tp, ra, t4
                  sltu         a2, t0, t0
                  mulhu        t5, t0, s10
                  slt          s1, tp, s0
                  mul          s9, a0, t3
                  sub          a1, ra, s4
                  divu         t1, s2, tp
                  div          s4, a3, s2
                  or           s11, zero, s11
                  xori         zero, ra, 1169
                  lui          s8, 137670
                  add          s10, s1, t0
                  remu         t6, s9, t6
                  or           t6, t3, t6
                  xor          s10, t1, a3
                  nop
                  auipc        gp, 513327
                  mulh         tp, a1, sp
                  lui          s7, 122868
                  sltiu        sp, s5, 736
                  add          a5, s1, t2
                  remu         t2, t2, a7
                  mul          a3, s5, t1
                  remu         s9, t5, s0
                  remu         s8, t4, tp
                  auipc        sp, 906278
                  sltu         ra, t2, sp
                  or           s3, a7, s3
                  mulhu        a5, s11, sp
                  srli         ra, s2, 19
                  srl          s8, s0, s1
                  slli         s7, a0, 7
                  mul          s9, tp, t4
                  slti         s2, a6, -1452
                  addi         a4, s4, 1288
                  sll          t5, a2, ra
                  mul          s9, zero, s8
                  sra          s2, s3, t4
                  add          tp, s11, sp
                  slt          t6, s1, a2
                  div          s11, s4, t1
                  xor          a5, s6, a5
                  mulhsu       s7, sp, a3
                  sub          s0, t0, s6
                  ori          t3, t1, 1949
                  div          a4, s0, sp
                  sra          s1, t5, s4
                  slti         a4, s2, 430
                  lui          s4, 226024
                  rem          s7, t4, s8
                  remu         t6, s3, s9
                  xori         zero, t0, 1189
                  or           zero, t0, tp
                  slt          a5, s5, s6
                  ori          a4, t4, -235
                  lui          s1, 511961
                  sltu         t1, s10, sp
                  sltiu        a7, s11, 1912
                  sub          s9, t6, a7
                  add          s1, a6, a5
                  remu         t0, a3, s6
                  remu         t1, a6, t6
                  add          s2, gp, a6
                  sub          a7, t6, s4
                  remu         s2, s9, t1
                  mulhu        s2, zero, zero
                  xor          s8, tp, t3
                  remu         t5, s4, a0
                  srli         t2, a5, 24
                  addi         s10, s0, 1712
                  and          zero, t5, s5
                  mulhu        s7, s10, t1
                  srli         a5, t1, 18
                  lui          t3, 896530
                  addi         a1, gp, -715
                  sub          a2, t5, s5
                  auipc        t6, 699721
                  sltiu        sp, s0, 300
                  slti         s7, a2, -451
                  xori         s5, t3, 1268
                  sll          t4, tp, sp
                  sltiu        t4, a2, -1476
                  remu         gp, s4, t4
                  mulh         t1, t3, a1
                  mulhsu       sp, t2, s4
                  xor          s10, t2, s5
                  slli         s1, s2, 21
                  sub          t5, s11, a6
                  slli         ra, a6, 4
                  lui          a2, 158880
                  srai         s2, t4, 1
                  mulhsu       t3, t5, s11
                  andi         s8, t2, -1512
                  sra          a3, zero, gp
                  sub          a1, a3, s5
                  add          sp, t0, s10
                  slti         s7, a7, 1051
                  nop
                  sltiu        sp, gp, -1024
                  lui          s1, 631447
                  sltu         s11, t1, s0
                  sll          a1, a5, s10
                  mulh         s2, t0, t6
                  auipc        s7, 168724
                  slt          s11, a0, a6
                  sltiu        a2, t1, 1047
                  xor          t2, t4, zero
                  xori         a2, a3, 1184
                  sll          t5, t4, t0
                  sll          s11, t5, s5
                  srai         a4, s4, 20
                  addi         s3, a7, 983
                  and          s1, s2, s10
                  nop
                  sltiu        s2, a0, -1748
                  slt          s1, t2, s11
                  div          t1, s1, gp
                  andi         s0, a2, 1741
                  mulhu        a1, t6, s5
                  andi         a1, a2, -383
                  lui          s4, 434265
                  or           s9, t3, s5
                  divu         t5, a5, a7
                  sltu         a5, t6, zero
                  remu         s10, s0, s1
                  auipc        s10, 186160
                  xori         s7, t1, -1049
                  nop
                  slli         t0, t4, 9
                  nop
                  andi         s7, s3, 235
                  sll          a7, a5, zero
                  xori         s10, s7, 1868
                  slti         t0, s8, -260
                  andi         zero, s1, -1484
                  sltu         t3, s9, zero
                  sltu         sp, s8, a5
                  ori          t1, a7, -1877
                  slt          t5, s3, t2
                  slti         t6, t2, -1271
                  div          s0, a1, sp
                  rem          a7, a6, s5
                  and          s4, a5, a0
                  rem          a4, s9, a5
                  slli         s2, t2, 30
                  mul          s1, a2, s7
                  addi         s8, s5, -75
                  divu         s5, a3, t4
                  sll          s5, ra, a1
                  sra          s8, t1, s10
                  slti         a2, a0, 1856
                  sltiu        s4, sp, 395
                  slt          s11, t5, a6
                  sub          s0, s8, s6
                  andi         s8, s5, 1635
                  xori         a3, a4, -2038
                  mulh         s10, a7, a4
                  ori          tp, a5, -341
                  rem          t0, s7, t4
                  sub          t6, t6, s3
                  remu         s3, t0, s5
                  slli         t3, a6, 13
                  mul          sp, s11, s11
                  add          t0, a3, t1
                  sub          t1, tp, a6
                  rem          s7, a7, tp
                  sltiu        a7, s9, 1430
                  mulhsu       s8, s4, s8
                  and          t1, s7, t2
                  mulhsu       a4, s6, s0
                  auipc        s5, 1032154
                  remu         a2, s0, t5
                  srli         a1, a0, 18
                  sll          zero, gp, s3
                  auipc        s0, 213788
                  and          a2, s1, s0
                  rem          t2, t6, a1
                  slt          s9, s8, t5
                  or           ra, s4, a4
                  add          t6, sp, s8
                  srl          s0, sp, s9
                  sra          s2, s10, a2
                  lui          a7, 21547
                  lui          s4, 403069
                  or           s10, t1, t4
                  mulh         t2, s0, s7
                  auipc        s3, 880535
                  mulhu        s4, a3, s7
                  divu         zero, s3, gp
                  divu         s10, zero, s8
                  mul          t2, s7, s2
                  nop
                  and          a4, gp, s1
                  sra          zero, s8, s6
                  add          s0, s11, s5
                  add          s9, t6, s0
                  srai         a4, s1, 10
                  sltiu        s3, s4, 1581
                  mulhsu       t6, t3, zero
                  addi         ra, s2, -882
                  add          s2, s1, s10
                  srl          s7, s4, s0
                  sltu         s11, s0, a7
                  ori          s4, a7, 506
                  mulh         s2, a5, s3
                  div          t4, a0, sp
                  lui          s1, 109061
                  remu         a5, t0, ra
                  addi         t1, sp, 1781
                  mul          a5, t0, s9
                  andi         ra, tp, 1543
                  andi         gp, t0, -461
                  auipc        a5, 361620
                  mulhsu       tp, gp, s0
                  sltu         a7, zero, s1
                  sltiu        s1, s9, 1421
                  sub          s11, s9, t3
                  ori          a4, a6, -403
                  nop
                  divu         s5, a7, tp
                  ori          a3, t5, -1151
                  lui          s5, 330422
                  auipc        s0, 349592
                  sltu         s10, a0, s2
                  auipc        gp, 908128
                  auipc        a5, 40417
                  slli         t5, gp, 18
                  addi         a1, a2, 1862
                  ori          s3, t0, -1660
                  lui          s4, 979848
                  mul          s0, t0, s0
                  xor          t4, s1, s3
                  auipc        ra, 736956
                  mulhsu       a5, s3, s8
                  slli         s7, t4, 6
                  slti         s8, s11, 654
                  or           a5, t4, sp
                  sll          s9, a7, ra
                  remu         s4, s8, zero
                  slti         t5, s3, 793
                  sra          s4, a0, s9
                  ori          s1, a6, -1704
                  nop
                  srai         t4, s8, 9
                  sltu         t4, tp, s8
                  ori          t5, s3, -462
                  sll          t3, zero, s10
                  srl          s2, s8, s11
                  srl          zero, gp, gp
                  xori         t4, s2, 1883
                  sra          s7, a3, a6
                  sltu         zero, s6, t3
                  slti         a4, sp, -12
                  sll          t5, a4, t1
                  sra          a7, s7, t6
                  srai         s4, s1, 6
                  srli         s4, t4, 4
                  sra          a2, t4, t6
                  auipc        s8, 458927
                  sltu         zero, a2, a1
                  and          a2, sp, a2
                  andi         gp, s1, 1418
                  srli         a2, s5, 4
                  addi         sp, zero, -684
                  div          s7, s11, ra
                  sub          a1, a2, s9
                  slt          a7, a0, s11
                  sra          s4, a0, t3
                  divu         t0, t2, a6
                  srl          a3, s10, gp
                  add          s11, s10, t6
                  sltiu        s7, s1, 4
                  sltu         tp, s8, t5
                  lui          s3, 642002
                  sub          a7, s7, t2
                  srai         s7, s10, 29
                  rem          t1, t6, a4
                  srai         a1, t0, 6
                  slt          ra, a6, t4
                  or           sp, tp, t3
                  and          a2, t6, s4
                  sltu         a1, a2, tp
                  addi         t2, a5, -847
                  srli         t2, tp, 4
                  nop
                  srli         a5, zero, 7
                  auipc        tp, 127146
                  and          ra, s8, s5
                  sltiu        a1, a1, 1536
                  sub          sp, s6, t4
                  and          s10, s10, s8
                  xor          t0, sp, t5
                  sltiu        a2, a0, -869
                  add          t2, s8, s1
                  auipc        s2, 299345
                  slt          t1, s2, zero
                  srai         gp, a1, 2
                  div          a3, a3, a0
                  slli         s2, a6, 16
                  xori         s5, gp, 1793
                  mul          a7, a5, a0
                  add          t1, s7, tp
                  sltu         t1, s6, s3
                  mul          t6, s6, t0
                  sltu         t4, s5, ra
                  or           s0, s7, sp
                  add          a5, s2, sp
                  auipc        a4, 491704
                  lui          s9, 555471
                  rem          s9, s4, a2
                  auipc        s8, 679618
                  or           a1, t5, ra
                  sra          a4, a2, t3
                  sll          gp, t5, s7
                  sltu         a4, s10, a4
                  srl          a1, a6, s9
                  xor          ra, t5, t4
                  srli         s11, s9, 23
                  sub          t2, s7, s6
                  sltiu        s7, a7, -924
                  sra          s9, s7, t1
                  div          t3, gp, t0
                  sltiu        s7, a4, -1403
                  remu         a2, a1, a3
                  lui          a7, 759692
                  divu         s2, s9, s8
                  sra          tp, t5, ra
                  xor          s4, s11, t4
                  and          s7, s6, ra
                  slti         a7, s5, 629
                  sll          s2, s11, s1
                  divu         s3, a2, s4
                  add          sp, t5, s4
                  div          s3, s9, s11
                  lui          a5, 987063
                  mul          s8, s11, a5
                  slt          s5, s5, t1
                  and          t3, a2, t4
                  auipc        s2, 929978
                  mulhu        s8, ra, a5
                  remu         a1, s9, s0
                  srli         t0, a3, 12
                  sra          ra, a7, t4
                  xor          a7, a1, a3
                  slti         t5, t3, -1080
                  xori         ra, t3, 1596
                  sub          t6, s6, s7
                  andi         s1, a3, -336
                  slli         a5, s1, 31
                  add          s9, t2, s4
                  nop
                  addi         ra, a0, -1775
                  remu         s11, s6, s4
                  sra          t0, a0, a3
                  remu         s7, a7, t1
                  sll          a1, s3, a3
                  ori          t5, a0, 2025
                  sltiu        t6, s2, -1238
                  mulhu        s8, t2, t1
                  rem          t0, s5, zero
                  slti         s0, tp, -1911
                  sll          t0, s3, t3
                  and          t2, s0, a2
                  srl          s2, t5, a6
                  rem          s11, s8, t6
                  and          a4, a2, s10
                  remu         zero, s1, t0
                  add          gp, a6, s11
                  lui          t6, 760281
                  sll          a5, s0, sp
                  srl          gp, t4, t6
                  rem          s4, t4, gp
                  remu         t0, t5, zero
                  slti         a3, ra, -1681
                  nop
                  auipc        a4, 621538
                  andi         s7, a3, 158
                  srl          a3, s1, a3
                  sltu         s2, t6, t3
                  mulhsu       a2, zero, a1
                  auipc        s0, 17746
                  sub          s5, tp, a1
                  srli         s11, s8, 3
                  lui          tp, 430264
                  remu         s0, s6, a0
                  srli         a4, s4, 27
                  mulhsu       t1, s9, s3
                  mulh         t1, s7, s8
                  addi         a4, t1, -649
                  mul          s9, s9, s11
                  add          t1, s11, a0
                  sra          t5, s2, a6
                  auipc        s0, 905277
                  slli         gp, gp, 17
                  mulh         s8, s11, gp
                  or           a2, s4, a7
                  and          ra, s5, t2
                  remu         t2, s10, t3
                  andi         s0, a3, -1212
                  or           s10, s11, t6
                  xori         tp, a0, -1638
                  slli         s5, a0, 17
                  addi         t2, a2, -849
                  andi         tp, a0, 526
                  remu         t6, s9, a0
                  add          s11, t5, s3
                  slti         t0, a3, -484
                  remu         s4, gp, s2
                  divu         t2, s5, s6
                  slli         s2, a2, 26
                  addi         s11, s3, -330
                  slli         t1, a1, 11
                  slt          s8, a4, a3
                  slti         t6, s3, 622
                  sll          tp, t5, s2
                  mul          s7, a3, a4
                  sra          sp, s2, ra
                  mulhu        s3, s11, tp
                  slli         a3, a4, 24
                  mulh         s1, t4, a0
                  mulhu        s5, sp, gp
                  and          a2, s6, s6
                  srai         t0, s8, 3
                  srai         a7, a0, 29
                  slli         a2, a4, 24
                  sub          s4, s1, a6
                  sltiu        zero, t2, 1717
                  srai         a5, sp, 21
                  slt          a1, a7, a5
                  mulh         s3, sp, s10
                  sltiu        gp, ra, -686
                  srli         zero, s9, 26
                  or           a7, zero, s4
                  add          a3, a7, a6
                  srai         s5, a0, 23
                  andi         a7, s10, -572
                  sltiu        s10, a6, 703
                  add          t6, a4, t6
                  sll          t0, ra, tp
                  auipc        s8, 638270
                  add          t1, a2, s7
                  and          s0, s8, s6
                  auipc        t5, 231971
                  auipc        ra, 1019090
                  sltiu        a1, t0, -974
                  or           sp, a7, s2
                  sra          s8, s6, a3
                  sltiu        s9, t6, 1659
                  rem          s1, a5, t5
                  add          s7, s2, a0
                  slt          a2, a1, t3
                  mulh         s3, s4, s8
                  or           gp, s1, s6
                  slti         t6, t0, -108
                  xori         s7, t1, -1581
                  ori          t3, s0, -884
                  mul          t1, a7, t2
                  and          s10, s5, a5
                  or           s1, t3, t1
                  divu         sp, s5, s3
                  srli         s11, s8, 3
                  sll          a1, a7, s6
                  mulhsu       t4, a1, sp
                  mulhu        s5, a4, a6
                  div          t6, a6, t2
                  add          gp, t4, s11
                  sll          s2, t2, s0
                  srl          t2, s4, a4
                  div          a5, s8, a0
                  mulhu        t4, s6, tp
                  slt          s10, zero, s2
                  sll          sp, t3, a3
                  slti         s5, t6, -709
                  srli         s8, t4, 14
                  rem          s0, s7, a7
                  srli         a4, gp, 20
                  auipc        t2, 470322
                  add          a7, s10, t2
                  xor          a5, s0, a2
                  sll          s11, s9, t0
                  slli         t5, a6, 0
                  xor          s0, sp, s5
                  auipc        ra, 441768
                  div          s5, a1, s8
                  mulh         s8, t0, a4
                  ori          a7, s4, 1378
                  mulhu        s8, t3, ra
                  mul          s3, a1, s8
                  rem          s11, t4, s8
                  lui          s3, 492185
                  mul          t5, a5, t0
                  srli         s7, a4, 14
                  xori         ra, a2, 992
                  xori         ra, s1, 879
                  xori         t6, a0, -484
                  slli         s11, s4, 19
                  mulh         s4, t1, ra
                  xor          s3, t0, s2
                  srl          ra, a4, tp
                  slt          a5, a7, s7
                  nop
                  sub          s11, tp, s6
                  xori         a2, tp, 750
                  addi         a7, t0, -1705
                  auipc        t1, 150973
                  srai         zero, s6, 21
                  remu         a3, s4, s8
                  mulhsu       a2, t1, s5
                  add          t6, s10, a0
                  or           ra, a7, s3
                  sub          a1, a2, a3
                  xor          s5, s8, s11
                  sltiu        s10, a3, -1116
                  remu         s9, t4, s3
                  slt          zero, s2, s0
                  sub          s2, a6, t4
                  nop
                  mulh         zero, s2, tp
                  add          s9, s10, t4
                  nop
                  and          s7, s3, a7
                  srl          s8, t1, s8
                  remu         t1, t3, t5
                  add          tp, a7, s10
                  div          s7, tp, s10
                  mul          t4, t2, tp
                  ori          a2, s3, 1366
                  ori          a1, a5, -526
                  divu         t5, s11, s5
                  sltu         t6, s8, t5
                  srai         a3, a7, 8
                  slti         t4, a3, 32
                  sll          t2, t4, s0
                  sltu         a3, a4, a6
                  srli         a3, s10, 19
                  divu         t5, s0, gp
                  mul          s3, t2, s7
                  mul          t3, ra, s4
                  mulhsu       t0, s0, ra
                  ori          t3, s8, -289
                  xor          s0, t5, t0
                  sltu         a2, t3, t6
                  add          t4, t2, s0
                  slli         s1, zero, 0
                  mul          s7, a3, s0
                  lui          s3, 87476
                  nop
                  srai         a1, s9, 31
                  mulh         ra, t5, s9
                  xor          s3, a2, t1
                  auipc        t1, 108539
                  div          t2, a5, s4
                  mulh         t5, s6, s1
                  sub          t3, a5, s7
                  sra          t6, s9, t6
                  nop
                  xor          t6, s8, s9
                  or           a3, t3, s7
                  remu         t6, ra, a0
                  lui          zero, 389909
                  rem          s1, a6, t4
                  remu         s5, t4, a2
                  srli         s3, a4, 2
                  auipc        s1, 340033
                  srl          zero, s8, t4
                  addi         s0, s6, 683
                  srl          s9, s2, a3
                  ori          s0, tp, 177
                  mulhsu       t2, sp, s10
                  mulhsu       t5, t4, s7
                  xor          t5, a7, t3
                  slt          s0, a0, t2
                  divu         s8, ra, t4
                  xori         t5, s3, 1367
                  sltu         t2, s2, sp
                  add          s9, t1, s8
                  sra          s2, s9, t1
                  srl          a3, s6, a4
                  sltiu        s11, s11, 1107
                  rem          t3, gp, s11
                  addi         s1, sp, -1824
                  addi         t5, t0, -1096
                  slti         t6, a4, 1767
                  and          a7, a4, t4
                  andi         sp, t2, -719
                  mulhsu       s4, t3, s1
                  addi         t6, s11, -1121
                  addi         a7, s2, -1173
                  andi         zero, t6, 1997
                  remu         s7, a6, s8
                  mulhu        sp, s10, s3
                  nop
                  remu         t6, gp, a3
                  slli         tp, a4, 10
                  add          a1, a1, zero
                  sltiu        a3, t6, -1100
                  or           t4, s7, a6
                  slti         t3, t5, 810
                  divu         s4, t6, s8
                  lui          s10, 616345
                  rem          s0, t5, s0
                  xori         s4, s1, -961
                  slti         a1, s2, 733
                  rem          zero, t3, gp
                  srai         s8, ra, 21
                  sltu         gp, t0, a2
                  mulhu        a7, s6, a4
                  mulhu        t4, zero, t0
                  nop
                  ori          t2, s0, 823
                  lui          a5, 36882
                  mul          t0, s8, s3
                  auipc        s9, 1025074
                  sra          t6, s5, a7
                  add          a2, t3, t3
                  sltu         gp, a3, tp
                  srl          a4, a4, t1
                  sra          s10, s4, a1
                  sltiu        s1, s4, 562
                  sra          a4, s7, s3
                  srai         a1, sp, 29
                  slti         t5, zero, 1037
                  addi         s2, tp, 957
                  mulhsu       t4, zero, a1
                  mul          a1, s6, t2
                  or           s4, zero, s11
                  add          s8, sp, a0
                  mul          s8, s9, sp
                  sll          t6, tp, t1
                  sll          zero, sp, t6
                  addi         s2, s5, -1674
                  mulhu        t3, t6, s4
                  slti         s0, t3, 2026
                  mul          sp, a2, s9
                  sltiu        a4, s3, -2010
                  sra          tp, t1, a3
                  andi         t3, s8, 1223
                  addi         s1, s7, 193
                  srl          t1, tp, t1
                  xor          t2, t5, a3
                  or           ra, t2, s8
                  remu         s10, zero, sp
                  srli         ra, t5, 27
                  mulhu        s1, t5, t6
                  div          a7, s1, s5
                  nop
                  sltiu        a3, a5, -38
                  divu         zero, sp, t2
                  sll          s4, ra, t3
                  sll          t4, s9, t4
                  ori          gp, t4, -1144
                  sub          zero, s6, s5
                  xor          t1, a1, t5
                  andi         sp, t6, 1367
                  andi         t1, t4, 1736
                  srl          zero, t5, s5
                  auipc        s3, 991584
                  lui          s5, 914549
                  xori         s10, s5, -1869
                  slti         a7, s1, -1521
                  slti         a4, t6, 26
                  srai         t1, s7, 26
                  ori          s2, a2, 875
                  slti         gp, s11, -2042
                  divu         s4, a5, t5
                  srai         s4, s9, 0
                  div          t0, ra, s1
                  sra          a1, s5, a1
                  mulhsu       s1, s7, s11
                  srl          a7, s8, s7
                  slti         gp, sp, -1787
                  ori          s1, s11, -1559
                  xori         t0, sp, 1167
                  srai         s0, s10, 10
                  sub          t4, a2, t3
                  rem          s3, t4, s0
                  sra          a3, s5, s1
                  remu         s1, t3, s5
                  divu         s7, s5, t2
                  sll          a4, s8, a4
                  srai         s3, a2, 12
                  sltiu        s7, s11, 984
                  slli         t2, s2, 25
                  lui          t3, 581848
                  srai         t2, t4, 22
                  xori         a1, a4, 972
                  andi         t5, t6, -879
                  nop
                  slti         a4, s9, -114
                  slt          s8, sp, s7
                  sra          a2, s8, t6
                  srli         sp, a1, 31
                  or           sp, t4, a4
                  rem          t6, s5, s6
                  xori         t0, s9, -127
                  mulhsu       s10, s1, a2
                  slt          ra, s8, a1
                  slli         s7, gp, 18
                  sra          a4, s1, a1
                  nop
                  mulh         s1, t6, t0
                  mul          s5, s6, a1
                  xor          t1, zero, zero
                  srl          a3, t1, a2
                  slti         s0, zero, 109
                  ori          s8, t5, 1616
                  auipc        s4, 313502
                  slli         gp, zero, 8
                  sltu         a2, t2, s3
                  mul          sp, a5, a7
                  divu         s8, a5, s5
                  and          s2, t0, a3
                  remu         s2, sp, s6
                  sra          s4, gp, s5
                  andi         t1, s8, -2021
                  addi         t3, a5, -359
                  div          s10, s8, s11
                  sub          s0, zero, s11
                  slt          s2, s9, t5
                  mulhsu       a3, s1, t3
                  ori          sp, t1, -1242
                  sll          s5, t2, ra
                  xor          a5, zero, t3
                  lui          s8, 984854
                  add          a2, s1, s11
                  lui          zero, 606732
                  nop
                  auipc        s7, 558071
                  addi         ra, s11, 647
                  div          a1, t6, a1
                  sltiu        s9, a6, 1324
                  div          s2, a6, s1
                  srai         ra, s2, 12
                  sll          tp, a1, a7
                  xori         t6, t5, 1067
                  mulh         s7, s11, t2
                  or           gp, t0, a5
                  xori         s3, a0, 1667
                  srli         s2, t3, 26
                  divu         s11, ra, s5
                  mulhsu       s3, zero, t3
                  or           t5, a4, a7
                  remu         s7, s3, t2
                  slli         s5, t4, 4
                  add          s1, a2, a0
                  mulh         s11, s8, t4
                  divu         t3, a7, s4
                  srl          a3, s7, s1
                  srli         a5, tp, 2
                  ori          t0, s10, -1201
                  slli         a4, gp, 21
                  sra          s7, zero, s1
                  remu         s1, a0, s7
                  mul          a5, a4, t1
                  rem          s3, s11, s1
                  nop
                  xori         t2, t5, 382
                  auipc        s5, 760279
                  div          t2, t5, a5
                  sll          t2, gp, t2
                  slt          s1, a0, t1
                  srai         t0, s10, 0
                  mulh         s5, t5, s8
                  rem          t1, s3, t0
                  sra          s7, t0, s7
                  mulhu        s10, s0, t6
                  mulhsu       s1, ra, a1
                  sra          t5, zero, s10
                  sub          zero, s9, a2
                  xori         a7, a1, 1989
                  lui          t5, 592966
                  or           s11, s6, s1
                  srl          gp, gp, s6
                  xor          t6, tp, s10
                  sltiu        ra, s3, 1815
                  divu         s5, s2, sp
                  xor          s3, a4, a3
                  nop
                  slti         s8, t1, 120
                  mulhu        t4, sp, t2
                  xori         t5, t0, 1157
                  sltiu        a3, t5, -1479
                  mulh         s7, t0, a6
                  div          ra, a6, s11
                  sll          a7, a1, t0
                  sltu         s2, ra, t1
                  sltu         s8, t6, s2
                  sll          s2, a2, a5
                  slti         s9, t2, 300
                  xori         t1, a0, -569
                  auipc        t6, 294159
                  andi         s2, s2, 748
                  nop
                  slti         s11, t0, -1696
                  sra          s5, s4, s4
                  divu         a1, s8, t2
                  ori          s2, s11, -886
                  sra          s1, t1, s11
                  sltiu        s7, zero, -1422
                  nop
                  sltu         t3, s7, s5
                  xor          zero, t3, ra
                  mul          t3, gp, tp
                  slti         a7, gp, -1677
                  srai         t1, a5, 19
                  slt          s11, t1, zero
                  slti         s7, s11, -1335
                  mulhu        s4, tp, a1
                  ori          t1, s6, 102
                  mulhu        zero, t2, s4
                  divu         s9, t2, s1
                  lui          zero, 782144
                  slt          zero, s5, s10
                  add          a1, s8, s3
                  xor          s1, a3, t1
                  slli         s10, t0, 0
                  srl          a1, s9, s9
                  mul          s7, t5, sp
                  nop
                  mulhu        s0, s1, s0
                  andi         a7, t4, 1908
                  addi         s9, s11, -1638
                  sltu         s0, s11, s1
                  ori          a5, s9, 754
                  slt          s7, t1, s2
                  addi         t5, a6, -432
                  auipc        sp, 528656
                  rem          gp, s4, a0
                  sll          ra, tp, a1
                  and          t0, t0, t3
                  xori         s9, t1, -240
                  nop
                  andi         t1, s3, 1125
                  remu         a2, t1, s0
                  mul          ra, s10, s10
                  mulh         s8, a7, t4
                  add          s8, t5, s8
                  ori          s0, t3, -161
                  divu         t5, t5, a5
                  mulhu        a4, a4, a5
                  or           s2, a7, zero
                  sub          tp, ra, a4
                  nop
                  lui          s0, 443097
                  divu         t3, zero, s4
                  divu         a4, t0, s4
                  sub          a4, a0, s4
                  add          s2, t0, t4
                  addi         t6, sp, -1332
                  or           sp, s0, s10
                  mulh         sp, a3, t1
                  mul          s11, s9, s1
                  sltu         t2, t6, a4
                  divu         t5, s8, a5
                  ori          ra, s10, -1044
                  mulhsu       s1, s7, a4
                  lui          s0, 383916
                  div          s7, t2, s6
                  sub          s11, s8, t2
                  slt          zero, t1, s10
                  slt          a1, s3, a7
                  mulhsu       s4, s3, tp
                  sub          s10, a4, s8
                  slti         s4, t5, -1140
                  lui          t0, 236114
                  sub          a1, s9, sp
                  sra          t4, s0, s2
                  slti         zero, s10, -1873
                  divu         s11, a6, a1
                  sra          a2, t0, s3
                  mul          s1, a4, zero
                  lui          s7, 280135
                  and          t0, s5, s3
                  mulh         s2, s5, s11
                  rem          a7, sp, s5
                  div          a1, a0, a2
                  rem          s2, a6, sp
                  mulhu        s7, a0, s8
                  mulhsu       gp, zero, tp
                  remu         a1, gp, t1
                  rem          t6, sp, s5
                  andi         a1, s11, -1710
                  sltu         a7, ra, a1
                  lui          s5, 886442
                  sltu         t1, a6, a4
                  andi         t3, a5, -796
                  xor          s9, t6, a3
                  sub          gp, a1, s3
                  ori          t4, t1, -1646
                  sltu         a5, a4, t2
                  sltiu        t0, s5, -1031
                  sltiu        s3, a7, -1331
                  lui          s4, 181371
                  sub          t6, a1, a6
                  mulhsu       zero, zero, s3
                  sltu         s0, a0, a7
                  mulhu        s4, a6, a7
                  mulh         s5, s7, s6
                  slt          t3, s5, zero
                  sll          a1, zero, s6
                  div          s10, a7, a0
                  srl          sp, a1, t0
                  sll          s4, s5, s1
                  srai         s0, s4, 18
                  remu         a5, zero, t3
                  sub          t0, s1, s3
                  addi         s4, t2, -1641
                  sub          a7, t2, t2
                  nop
                  auipc        a7, 170151
                  mul          a2, t4, t6
                  mulh         s4, sp, a4
                  andi         t0, s5, -1147
                  nop
                  slli         s7, a4, 1
                  slti         s9, t2, 1378
                  sltiu        t6, t2, -687
                  xor          sp, s8, a5
                  slt          ra, s7, t3
                  mul          t3, s4, s2
                  slli         s5, a2, 27
                  xor          t5, s8, s7
                  srai         gp, s10, 31
                  sltu         s10, t2, s7
                  sll          s2, a3, s9
                  and          s1, s5, t2
                  mulhsu       zero, zero, sp
                  srai         s4, a2, 18
                  addi         t4, tp, 1747
                  slli         t2, gp, 1
                  sltu         s1, s2, s4
                  xori         a5, s9, -557
                  mulhsu       s4, a5, ra
                  addi         a7, s0, -21
                  slli         t0, a1, 9
                  mulh         t1, sp, zero
                  srai         gp, tp, 28
                  mulhu        zero, t0, s11
                  srai         s1, s8, 27
                  slt          s9, gp, t3
                  mulhu        s10, s8, s9
                  srli         s9, ra, 30
                  add          s0, s5, a7
                  rem          s5, s8, s9
                  sltiu        s8, t1, 780
                  srl          t4, a1, s7
                  remu         s2, s0, s1
                  slli         a2, a4, 17
                  slti         a1, t1, 294
                  nop
                  mulh         zero, t3, t1
                  ori          ra, s10, -1134
                  andi         t2, s4, -1177
                  auipc        t3, 558951
                  divu         s4, s2, zero
                  andi         s5, t0, 1001
                  lui          a2, 271885
                  andi         sp, s3, 2039
                  andi         sp, a1, 107
                  sltu         s3, a3, s7
                  xor          t1, s10, s1
                  remu         a3, a0, s10
                  xor          tp, ra, t3
                  xor          s5, t6, s9
                  rem          s8, s4, s9
                  or           a2, ra, s2
                  andi         sp, t5, 1152
                  mulhu        gp, sp, s3
                  srli         s7, s6, 26
                  mul          t2, s7, s2
                  nop
                  remu         a2, t6, s6
                  sltu         a4, a5, a6
                  div          zero, s4, s11
                  auipc        s4, 70878
                  nop
                  and          t4, s2, a7
                  sra          s2, t0, a5
                  addi         a7, s11, 69
                  and          s10, t3, t6
                  xori         a7, a0, 1384
                  slt          t4, s6, t4
                  slti         sp, s6, -774
                  srl          gp, ra, s7
                  remu         s1, zero, t6
                  rem          t1, a1, s11
                  slti         s7, t0, 1486
                  slti         t4, tp, 895
                  add          a3, a0, zero
                  slti         s0, s8, 1687
                  divu         t5, gp, a6
                  or           s8, t4, s7
                  xori         s4, s1, 1369
                  add          s1, t0, a2
                  srai         s2, t6, 12
                  sra          t4, tp, s3
                  sltiu        a4, s10, 1896
                  or           a1, t4, a7
                  sub          a7, s4, gp
                  add          t5, t4, s3
                  mulhsu       t4, s4, s0
                  divu         s5, s6, s10
                  sra          a5, t0, tp
                  sltu         sp, a0, a7
                  slt          t4, a0, s9
                  mulhu        a1, t2, a0
                  lui          s2, 840732
                  addi         t5, s11, 366
                  or           t1, a1, s5
                  sltu         a1, t2, a0
                  nop
                  lui          a5, 995043
                  slti         a7, t5, 520
                  xori         t6, a2, -1222
                  addi         zero, a3, -1
                  mul          s1, s11, s9
                  nop
                  slli         ra, s10, 2
                  srai         ra, t5, 7
                  srl          a7, t0, s1
                  div          t5, s8, a6
                  mulhu        s5, t0, s3
                  sra          t2, s7, ra
                  sll          s11, a6, s10
                  sub          a5, t3, t4
                  divu         s11, s7, a7
                  remu         t2, zero, a5
                  lui          s4, 765176
                  srl          a5, t1, s0
                  srai         t6, a4, 18
                  nop
                  xor          t3, s8, t2
                  mulh         a3, a1, s3
                  nop
                  sra          t6, zero, t3
                  div          t1, a7, a4
                  slli         ra, tp, 8
                  sltu         a2, gp, ra
                  srl          t0, s8, s1
                  addi         a4, t3, -380
                  remu         sp, s2, t4
                  divu         s5, s2, s7
                  rem          a2, a1, a2
                  div          t6, a2, a6
                  slt          a3, s8, a3
                  mulh         tp, s6, t1
                  srl          s1, a3, s0
                  sll          ra, a3, t2
                  xor          zero, s4, t4
                  ori          a5, a7, -31
                  slt          gp, a1, s5
                  mulhu        tp, s2, s4
                  add          t5, zero, s10
                  slt          a1, a5, a3
                  remu         a4, s1, t6
                  ori          a2, a4, 104
                  remu         t3, s7, s0
                  mul          a1, s6, gp
                  mulhu        t2, t5, s0
                  sltiu        ra, s11, -525
                  or           a3, a2, t5
                  sll          s8, s6, a4
                  xor          s1, zero, sp
                  xori         s9, s9, -265
                  slt          s4, s1, s11
                  add          s11, t0, a4
                  andi         s10, ra, 1145
                  slli         s9, a7, 17
                  slt          s5, gp, a5
                  sra          gp, s3, ra
                  sltiu        s5, tp, 730
                  remu         t0, ra, t5
                  ori          t3, a0, -513
                  mul          s3, t0, s0
                  slti         s10, t3, -2009
                  slti         s10, s10, 1336
                  srai         s8, s7, 7
                  sltiu        t3, s4, -1132
                  sub          gp, t4, t4
                  xori         s2, s10, -1392
                  rem          s2, s5, s1
                  and          a2, a1, t1
                  slt          t4, a6, s0
                  sltiu        s8, t2, 353
                  nop
                  slti         t3, a5, -403
                  srai         s2, a7, 11
                  slti         s10, tp, 1273
                  slt          a1, s7, a3
                  sub          s8, t6, s8
                  slti         zero, s0, 1406
                  slti         t2, s9, 881
                  sub          t5, a3, a6
                  sra          t5, s8, t2
                  or           a4, s7, t4
                  rem          a2, s11, s6
                  srai         a4, t6, 11
                  or           t4, t6, t0
                  slt          a2, t0, s4
                  lui          s3, 384939
                  slti         a5, s10, 1218
                  rem          s7, a6, ra
                  lui          s11, 638171
                  srai         t5, t0, 11
                  sltiu        s0, a3, -1953
                  mulhsu       t3, ra, s5
                  sra          t5, gp, s6
                  and          a2, s11, s0
                  auipc        t5, 506665
                  mul          s8, s4, t0
                  sra          s3, a1, a7
                  mulh         s0, sp, t3
                  or           s1, s1, s1
                  divu         s0, t4, a0
                  auipc        t1, 758382
                  mulhsu       ra, gp, t0
                  andi         zero, a4, -497
                  srl          t4, s0, a1
                  mulh         t1, t3, s1
                  sra          sp, t4, t5
                  sra          s7, s10, a0
                  add          s5, t4, ra
                  sll          s7, a1, gp
                  add          s9, s10, t3
                  and          s11, a3, a5
                  auipc        ra, 383856
                  sub          s11, s4, s6
                  srai         s0, s2, 11
                  slli         s4, ra, 16
                  lui          s1, 382467
                  mulhsu       s7, a2, tp
                  srai         s7, a5, 22
                  lui          s8, 557015
                  srli         t3, s5, 21
                  or           t3, a1, t3
                  divu         s1, t5, zero
                  xor          s2, s0, sp
                  addi         a2, zero, -1875
                  ori          s5, zero, -571
                  xor          a2, s3, t3
                  add          t3, s3, t3
                  srai         s5, zero, 11
                  mul          sp, a2, a5
                  div          sp, s11, tp
                  auipc        t4, 975486
                  sll          s9, s7, s3
                  divu         s2, s4, a5
                  mulhsu       s10, s10, s6
                  andi         s2, t4, -431
                  or           t1, tp, a0
                  rem          ra, t3, sp
                  divu         s1, tp, t3
                  slti         s5, t4, -98
                  andi         t2, t3, -2016
                  andi         sp, t3, -121
                  slli         s0, s5, 17
                  add          a1, a2, s3
                  srli         s0, s1, 9
                  mulhu        gp, sp, s11
                  mul          sp, zero, t1
                  sltiu        t1, tp, -345
                  slt          s4, s6, a5
                  ori          s7, t4, 1411
                  rem          s2, t2, tp
                  xori         s0, a3, -1364
                  mulh         sp, t1, ra
                  addi         s10, s10, 1526
                  mulhu        ra, a3, a7
                  addi         t6, t1, 1810
                  andi         t4, s4, 1129
                  and          s1, t5, a6
                  mulhsu       s8, a1, tp
                  or           s8, gp, t1
                  ori          a3, t6, -709
                  srl          s0, t4, s1
                  srli         s2, s11, 20
                  sltiu        s5, zero, 1327
                  mulhu        a1, sp, gp
                  mulh         a7, sp, a7
                  lui          sp, 632570
                  slt          t6, t4, a2
                  addi         zero, a4, -390
                  mulhsu       a5, s0, zero
                  add          a1, tp, s1
                  srli         t6, a6, 29
                  remu         t3, t0, ra
                  mulh         t6, tp, s7
                  mulh         tp, ra, s8
                  mulh         s8, a2, s3
                  slli         t1, t5, 7
                  slt          a5, s2, s3
                  slti         s2, s8, 800
                  srli         s4, a1, 20
                  mul          a4, s4, t5
                  andi         s10, t1, 14
                  slli         gp, a5, 30
                  add          gp, s6, t3
                  slt          t0, s2, a5
                  srl          s0, a6, t5
                  rem          a7, s5, s4
                  sltu         zero, a1, t1
                  addi         s4, t6, 1220
                  srai         t1, s4, 21
                  mulh         s9, s4, sp
                  sra          s2, t1, s9
                  slt          tp, s10, s1
                  slli         s3, s4, 25
                  or           a1, s4, sp
                  or           s10, a6, t4
                  slt          s7, t6, s3
                  slli         s5, zero, 19
                  srl          s4, a7, s4
                  addi         t6, s6, 1949
                  srai         s2, a1, 3
                  ori          a7, a3, 1789
                  sll          a1, s0, s9
                  addi         ra, gp, -773
                  mul          s9, a6, s8
                  srl          a5, t1, a0
                  rem          a1, t4, a5
                  and          a3, s7, s9
                  nop
                  ori          s0, s4, 1376
                  mulhsu       zero, a5, a2
                  xori         t0, s0, 1094
                  sltiu        s0, s9, -1454
                  addi         gp, s4, -732
                  mulhsu       s4, s6, s9
                  nop
                  srli         a5, t3, 18
                  slti         s7, a3, -587
                  sltu         a4, s1, gp
                  slli         t1, tp, 4
                  and          tp, s0, a3
                  srl          t6, s3, s8
                  or           s3, t4, a1
                  rem          t5, s4, a7
                  slli         s10, a6, 5
                  slt          a3, s5, s1
                  divu         a7, s6, s3
                  sltu         s4, t4, gp
                  mulh         t6, s2, tp
                  srai         s1, t0, 10
                  and          s2, s1, s3
                  slt          a7, tp, tp
                  sltu         t1, s5, s9
                  sltu         s2, a6, t1
                  slli         a1, s7, 16
                  andi         s2, t4, -36
                  slt          s0, s2, a1
                  or           a1, a2, t3
                  srl          tp, t0, t0
                  xor          zero, s6, s11
                  slli         t6, a3, 24
                  lui          s3, 952592
                  sra          s1, s7, a0
                  sra          s3, a1, ra
                  or           s7, ra, a7
                  ori          t5, s0, -1136
                  mul          s1, a5, t1
                  mulhu        t0, s9, t0
                  mul          t6, tp, a2
                  and          zero, a2, gp
                  srli         s4, s10, 6
                  slli         a1, t4, 1
                  xor          a7, s6, a0
                  sltu         s10, s0, t1
                  lui          ra, 483006
                  sll          s11, tp, t5
                  sltu         t2, s4, t0
                  mulh         zero, tp, gp
                  sltu         a7, s6, s9
                  div          a1, s3, s9
                  sra          t4, a6, a4
                  srl          a7, t3, a0
                  slt          s11, s7, s9
                  mulh         s1, t6, a0
                  srai         a3, s5, 12
                  sltiu        a3, a6, -918
                  add          s11, a2, a0
                  srli         t5, tp, 26
                  remu         a1, s3, a7
                  andi         s3, a7, 944
                  sub          zero, sp, t6
                  mulh         s1, s11, a4
                  rem          t2, s0, a5
                  sub          s0, s9, s9
                  andi         a2, t3, 323
                  and          s1, a0, s6
                  mulhsu       a7, s11, a6
                  sll          t0, t2, t0
                  auipc        s5, 724578
                  divu         a1, a4, s10
                  sltiu        t4, t0, 98
                  sub          s11, t0, t5
                  remu         s0, s9, a6
                  lui          s8, 256913
                  srli         a3, a5, 14
                  div          t6, t5, a6
                  slli         s2, gp, 16
                  mul          s10, t3, s2
                  remu         s5, a1, sp
                  addi         s9, t5, -1675
                  mulhsu       t3, a5, t6
                  xori         a3, s0, 2005
                  sra          s8, s9, t1
                  add          t6, s11, zero
                  auipc        t4, 416931
                  rem          t6, s4, gp
                  rem          a2, a7, tp
                  slli         s10, t4, 29
                  and          s3, a5, t4
                  mulhsu       s9, s3, s5
                  mul          t5, s9, t1
                  auipc        s4, 911410
                  srai         s0, a2, 25
                  xor          zero, a2, a0
                  div          s2, a4, a6
                  mul          s2, a5, a1
                  or           zero, a2, s1
                  sra          a4, a6, s3
                  srl          s2, s1, tp
                  addi         gp, tp, -1490
                  divu         zero, t5, tp
                  or           zero, s1, s3
                  xori         t4, s11, 1210
                  rem          s4, s6, s7
                  sltu         s7, sp, s8
                  add          s11, a4, s0
                  slt          a1, ra, a0
                  srl          gp, t3, s7
                  sll          tp, a5, tp
                  srl          tp, s9, sp
                  mulhsu       a2, t4, ra
                  andi         gp, a3, 1402
                  nop
                  div          s2, sp, t5
                  mulh         t1, s11, a7
                  mulhsu       s7, t0, a3
                  remu         s5, s3, s7
                  mulhu        zero, t3, t0
                  srai         t2, s11, 15
                  ori          s2, t0, 32
                  remu         t2, zero, a7
                  or           s2, ra, s9
                  div          t3, t2, t3
                  sltu         a4, a1, s8
                  xor          gp, t4, tp
                  mulhsu       s0, s0, s3
                  slt          gp, s7, gp
                  srl          s11, s7, s7
                  sltiu        s4, s11, 500
                  remu         s7, s3, a1
                  srl          s7, s2, a0
                  div          s5, s2, a5
                  srai         s7, t6, 4
                  xori         gp, s10, -1992
                  sll          t5, s6, t6
                  xor          a5, a6, sp
                  mulhu        sp, a6, t1
                  remu         s1, a6, s5
                  mul          tp, sp, s7
                  sll          zero, t2, s2
                  srli         t2, a0, 22
                  remu         t6, t5, tp
                  andi         s8, s10, -2031
                  mulhu        zero, a5, s0
                  and          s1, a3, s2
                  mulh         a2, a6, s8
                  sll          t6, s7, s6
                  srl          a4, s9, zero
                  srai         s4, a7, 23
                  mulhu        s11, s7, t1
                  auipc        a1, 1048542
                  add          s5, t3, s10
                  auipc        a1, 120938
                  sub          t5, t1, t3
                  slt          a3, t6, s6
                  divu         s11, s4, a6
                  div          s11, t1, s0
                  srai         t3, a1, 11
                  xori         a3, s4, -1211
                  ori          s10, t6, -291
                  nop
                  ori          s10, t4, -1342
                  or           a2, t1, a2
                  srai         a7, t4, 29
                  divu         a3, s0, a0
                  sltu         s7, t5, t3
                  and          t1, t1, s1
                  slti         a2, s9, -17
                  srl          s7, t4, a5
                  srli         s8, sp, 0
                  xori         s8, sp, 1208
                  srai         a3, s7, 4
                  slt          s5, zero, gp
                  sra          t2, t3, ra
                  mulh         t6, t2, s0
                  ori          s4, a7, -1239
                  slt          s7, s10, a2
                  divu         s1, s3, sp
                  srl          t1, a7, tp
                  mulh         s11, s2, t3
                  ori          zero, s4, 1830
                  sub          s0, a0, s7
                  srli         s4, a6, 27
                  srl          s7, s1, t2
                  nop
                  sltiu        s8, ra, 452
                  slt          a2, s3, a1
                  slli         a5, s7, 22
                  srai         sp, t6, 0
                  slt          t4, t6, a6
                  sub          s0, a5, a0
                  remu         s8, s0, a4
                  mulhsu       a4, s1, zero
                  slli         a7, s11, 11
                  add          t2, ra, t0
                  divu         ra, s7, s0
                  sltu         a2, t0, s7
                  or           t3, a3, a4
                  remu         s2, ra, s4
                  slt          ra, s3, t1
                  sra          t4, s4, s0
                  slti         s2, t4, -920
                  remu         t5, a3, a4
                  andi         t3, a5, 1892
                  div          a2, t6, s1
                  rem          s11, s6, a2
                  auipc        s10, 779610
                  and          s2, s11, zero
                  rem          t3, a1, a3
                  nop
                  div          a5, a3, s1
                  auipc        t3, 275247
                  ori          s2, s9, 389
                  sltu         t3, t0, s6
                  andi         t6, s6, 552
                  nop
                  addi         a3, t6, -1768
                  slli         gp, s9, 19
                  add          s10, s11, a0
                  sub          t0, tp, a1
                  xori         s4, a7, -358
                  srl          a3, a2, a2
                  auipc        s2, 897859
                  slt          s1, s9, s1
                  lui          s0, 3324
                  srai         t4, a0, 9
                  slt          s3, s5, s11
                  mulhu        sp, t1, t0
                  addi         a1, s0, 996
                  div          s3, s6, t2
                  remu         s8, t1, s0
                  slti         tp, s8, 1621
                  sra          sp, t0, a7
                  srl          s2, s10, s1
                  rem          a7, a7, s4
                  slli         s1, t6, 28
                  lui          a5, 313281
                  xor          a5, s3, a5
                  rem          t4, a0, a1
                  sltiu        sp, a6, -590
                  div          a3, a1, a2
                  srl          s10, a4, tp
                  sub          s0, a3, s8
                  srli         a2, t2, 20
                  mul          tp, a4, s11
                  ori          s5, s7, -1159
                  ori          s3, t5, -124
                  srl          s9, t2, a0
                  mulhsu       t3, s3, tp
                  mulhu        s2, s3, a4
                  nop
                  and          t2, a0, s10
                  addi         s3, s1, -1544
                  remu         a2, a4, t3
                  mulh         t3, s4, s5
                  srli         t1, t0, 22
                  rem          zero, s2, t3
                  remu         t4, a6, t4
                  sltu         s11, t5, tp
                  sltu         s8, t3, s7
                  rem          s0, s3, a2
                  and          gp, s7, s3
                  srl          s10, gp, s4
                  mulhsu       s7, sp, s3
                  sll          s3, s2, s2
                  addi         s0, t0, -1156
                  sub          a5, s6, gp
                  slli         t3, s9, 26
                  sltiu        tp, zero, 1185
                  auipc        s7, 106936
                  ori          t5, s4, -434
                  lui          a7, 839769
                  mul          a7, s0, s6
                  mul          s7, zero, t3
                  mulh         a1, s11, s4
                  srai         t5, s5, 5
                  addi         s4, zero, 727
                  srai         s10, a7, 7
                  ori          a1, t5, 780
                  mulhsu       a5, a1, a0
                  and          s3, t2, sp
                  slli         s0, t0, 28
                  slt          s0, s10, a7
                  slti         t6, s10, -219
                  sub          a3, tp, zero
                  srl          s7, s8, tp
                  xor          t1, gp, s0
                  andi         a5, t1, -577
                  mul          tp, s2, zero
                  mul          t4, s3, s2
                  div          s10, s10, t4
                  andi         t6, t5, 1320
                  lui          s8, 408159
                  andi         s2, s7, -483
                  xori         a4, a1, 89
                  mulhsu       t2, zero, s5
                  sub          tp, s8, s7
                  add          s5, a1, s5
                  srl          t3, s4, s2
                  sltu         zero, gp, s2
                  auipc        t0, 589542
                  nop
                  mulhsu       a7, sp, a4
                  divu         s11, a6, a5
                  xori         sp, s10, -1339
                  divu         s10, tp, zero
                  sltiu        s2, t5, -1695
                  sra          s10, t4, t3
                  or           tp, s3, tp
                  slli         a3, s9, 18
                  div          tp, s0, a7
                  sub          s10, t3, t4
                  xori         s7, s1, 62
                  mulhsu       t5, tp, s3
                  auipc        s0, 999402
                  srai         s10, s11, 28
                  srli         s8, t1, 12
                  srl          ra, s0, s4
                  andi         a3, s2, -764
                  add          s3, sp, s7
                  add          t0, t3, a7
                  sll          t6, a4, t1
                  sltiu        t0, s11, -807
                  addi         a4, t5, 1685
                  mulh         s11, s5, a2
                  mulhsu       s4, s7, a3
                  slli         a7, zero, 6
                  remu         t2, a6, ra
                  div          s4, t5, zero
                  slti         s2, t2, -276
                  andi         a2, s8, 160
                  add          s9, s1, a0
                  sub          t0, s2, t2
                  add          s8, a7, s1
                  div          s4, a0, ra
                  lui          s7, 387419
                  xori         s9, a7, -408
                  sra          t4, s8, a5
                  divu         zero, zero, t3
                  slti         t5, a3, -483
                  xori         t1, a7, 465
                  xori         a3, t4, -1018
                  mulhsu       t5, s4, t2
                  remu         t0, s4, a5
                  divu         s9, s3, s6
                  divu         s3, a0, ra
                  srli         t6, ra, 1
                  lui          s2, 12427
                  srl          gp, a6, s5
                  sltu         t1, a5, a2
                  rem          s7, a2, a4
                  mul          a2, gp, t0
                  or           ra, t0, a4
                  mulhu        s8, zero, s2
                  auipc        s0, 717913
                  xori         t2, sp, 1605
                  ori          s3, zero, -1644
                  remu         t0, a5, a7
                  srl          s7, t2, s7
                  mulhsu       a1, s10, s1
                  andi         zero, t3, 1249
                  slli         tp, t1, 0
                  nop
                  xori         a2, s2, -1415
                  srai         t1, s4, 12
                  srli         s0, a5, 21
                  add          s9, s1, s6
                  xor          t5, s8, a2
                  rem          s4, a0, s5
                  and          a5, s4, a2
                  mulh         s8, s1, ra
                  mul          gp, s8, s2
                  remu         s7, s8, a1
                  mulhu        s3, a4, gp
                  xor          a2, t4, gp
                  sll          a4, s5, s5
                  mulhu        a4, s7, s7
                  mulh         a2, t5, tp
                  divu         gp, t1, t1
                  sra          s8, s4, s7
                  sltiu        a3, a5, 1093
                  andi         s10, a5, -316
                  mul          a4, s1, t3
                  srl          s9, t0, a7
                  addi         s5, t0, 1715
                  div          t6, s2, tp
                  andi         zero, a0, 1768
                  andi         s3, a1, -1200
                  remu         s11, t1, t5
                  srai         gp, sp, 23
                  nop
                  mulhu        t5, s5, a7
                  sub          a4, t1, s5
                  mulhsu       s5, t3, s6
                  and          s9, s3, t4
                  xor          a1, tp, s4
                  xor          s5, s2, s5
                  addi         s3, a6, 566
                  slti         s11, s9, -122
                  add          t3, t0, t2
                  div          t5, a1, ra
                  srl          t4, ra, s7
                  mul          s8, sp, sp
                  rem          a5, t6, t2
                  div          a7, s0, s7
                  add          s9, t0, t1
                  srl          a5, tp, s10
                  divu         a7, s4, a7
                  and          s0, s7, gp
                  andi         t2, ra, -1190
                  divu         t5, gp, a0
                  srl          a1, s8, a4
                  mul          t3, s4, t6
                  sub          s0, s4, tp
                  and          s7, s4, t0
                  srai         t5, s2, 15
                  sltu         sp, s7, s5
                  slli         zero, s5, 11
                  mulhu        s10, a5, s10
                  slt          s7, t3, a7
                  slti         a4, tp, 86
                  slt          t1, a6, s3
                  sra          s2, t1, a4
                  auipc        s11, 753281
                  srl          s9, tp, s1
                  mul          t0, a5, t3
                  addi         s9, sp, -465
                  rem          s2, s6, t3
                  mulhu        t0, s7, a7
                  rem          gp, t6, s0
                  srl          sp, s2, t3
                  add          t1, t3, sp
                  nop
                  xor          s0, s0, s2
                  nop
                  srli         t4, s3, 2
                  mul          t1, t0, t2
                  sll          zero, a6, ra
                  nop
                  rem          s2, s10, s1
                  lui          a2, 107391
                  andi         t3, s4, 1116
                  auipc        t2, 420190
                  sub          t4, a4, gp
                  sll          s0, a2, a2
                  mulhsu       sp, a0, zero
                  nop
                  srai         sp, tp, 25
                  slli         a7, a4, 8
                  sltiu        t3, s5, -515
                  ori          a3, t4, -1270
                  mulh         s5, a7, s8
                  lui          a5, 759649
                  andi         s11, s11, -1071
                  lui          a1, 331210
                  sltu         t2, s7, s2
                  lui          s0, 623743
                  remu         t3, t3, a7
                  mulh         gp, t5, gp
                  addi         t3, t4, 959
                  and          t1, t3, a3
                  mul          a1, a7, a2
                  rem          s7, a3, s5
                  xori         zero, a1, 778
                  sltiu        s5, s6, -1014
                  mulh         a3, t5, tp
                  lui          s1, 68719
                  sltu         s11, s1, gp
                  addi         s5, t1, -731
                  add          ra, tp, s0
                  div          t5, s1, t0
                  or           s5, tp, a1
                  andi         a4, s10, 1379
                  auipc        s9, 891201
                  addi         t5, a1, 939
                  auipc        s9, 1042125
                  auipc        s8, 57987
                  remu         t6, s4, s9
                  auipc        zero, 830979
                  divu         s10, s8, a2
                  addi         tp, s5, 600
                  auipc        s2, 688215
                  mulh         t5, s2, a5
                  sltu         s4, sp, a0
                  div          s2, s7, a5
                  auipc        s2, 80533
                  mulhsu       s5, s8, s5
                  slli         s9, gp, 30
                  sll          sp, gp, gp
                  mulh         t6, a4, t5
                  mulhsu       s2, s5, a6
                  srli         s1, a3, 20
                  srai         s10, gp, 13
                  andi         tp, a1, 464
                  xori         s3, s6, -372
                  ori          s5, s2, 1781
                  andi         s4, s11, -1012
                  slti         a5, s6, 169
                  xor          s2, s4, s6
                  auipc        s1, 712689
                  nop
                  div          s8, a5, s4
                  srli         s2, a2, 11
                  xori         t6, t4, 970
                  xor          s0, t5, s1
                  div          t0, s8, t3
                  or           s2, t3, s8
                  mulhsu       t3, a4, s3
                  rem          t3, t2, gp
                  srl          t2, s6, a7
                  sub          a1, t3, s10
                  add          s5, t2, a6
                  xori         s5, t0, -1306
                  slli         a5, ra, 1
                  slti         a5, t4, 15
                  srai         t3, zero, 17
                  or           sp, s3, t6
                  mulh         s9, t0, s2
                  srl          t0, s8, t5
                  div          t5, sp, t5
                  rem          a4, t1, t2
                  ori          a3, s4, 1297
                  srli         ra, s1, 12
                  nop
                  sltu         a5, s3, a7
                  remu         s2, t5, t0
                  sub          tp, t6, t1
                  sra          s7, a3, ra
                  mulh         s5, tp, sp
                  slt          gp, a0, s3
                  sltiu        t6, t3, -2001
                  mul          s9, s9, s9
                  sltu         s3, a6, s8
                  xor          s2, a5, s0
                  sub          ra, tp, s3
                  remu         s2, s6, tp
                  srl          t6, t1, a6
                  div          tp, gp, a6
                  divu         s3, a3, s1
                  or           a1, a0, a0
                  div          s11, t3, ra
                  srli         t6, a6, 18
                  nop
                  div          s0, s3, s2
                  or           a2, s5, t3
                  addi         a7, a6, -1096
                  srli         a1, t1, 4
                  slti         s7, a7, 762
                  lui          tp, 418398
                  andi         zero, a0, 1678
                  rem          t5, t2, t6
                  xori         s3, a6, -245
                  sltu         s4, a1, gp
                  or           s10, t0, a0
                  add          s11, tp, s1
                  slt          t2, a4, a6
                  srai         sp, s8, 8
                  xor          s3, t1, t6
                  mulh         s3, s9, s6
                  auipc        a3, 890990
                  addi         s9, sp, -436
                  mulh         s1, zero, tp
                  mulhsu       s2, tp, gp
                  xor          gp, s3, s0
                  div          s10, sp, ra
                  addi         gp, s3, 1577
                  addi         s8, a0, -1704
                  slli         s5, a3, 16
                  sltu         s5, a2, s3
                  ori          a2, s2, 491
                  remu         s3, zero, t2
                  auipc        s8, 44898
                  sll          t4, ra, t6
                  addi         a5, s7, 150
                  andi         a3, t4, -1987
                  and          t0, a0, a3
                  addi         s3, s7, 690
                  auipc        t0, 569057
                  srai         t2, t0, 3
                  lui          a5, 930745
                  sltiu        s2, t0, -1168
                  andi         tp, a5, -1321
                  divu         t4, t5, s4
                  div          a2, s1, a4
                  ori          a3, s5, -403
                  ori          s2, a5, 1613
                  slt          s1, s7, s9
                  mulhu        s0, t6, a3
                  nop
                  andi         t6, t1, -1029
                  mulhsu       a7, t5, a0
                  mulhu        sp, a1, a4
                  mulhu        a2, a0, a0
                  sub          s2, a6, zero
                  addi         t2, a3, 1726
                  sra          a7, gp, a5
                  divu         s1, sp, a0
                  div          s0, sp, a2
                  or           s4, s8, s3
                  srli         t3, s10, 29
                  ori          t3, s0, 1940
                  sltu         t1, sp, tp
                  xori         ra, sp, 620
                  sltiu        zero, a1, 1158
                  sltiu        s2, t4, -736
                  mulhu        s10, s8, ra
                  rem          s2, tp, a3
                  add          tp, a5, s4
                  mul          gp, s4, ra
                  slli         s11, a6, 15
                  sltu         zero, a3, ra
                  divu         t1, t1, a7
                  addi         t4, a3, -278
                  mulhsu       a2, ra, a1
                  sltiu        tp, s3, 309
                  slli         t5, t4, 29
                  xor          t6, zero, s11
                  sltiu        ra, s4, -875
                  slli         s9, s1, 16
                  srai         tp, t1, 7
                  div          ra, s4, tp
                  and          s8, s4, tp
                  ori          a2, a1, -296
                  slli         t6, t2, 18
                  lui          zero, 848259
                  div          s7, a0, s2
                  srl          s8, s5, s10
                  auipc        s0, 991787
                  ori          t0, s3, -1320
                  mulhsu       t6, s4, a6
                  addi         zero, a4, -667
                  sltiu        s4, t0, 1369
                  addi         zero, a5, -1690
                  slti         a7, s5, 274
                  xor          t2, t2, a4
                  sll          a3, t1, s2
                  srl          zero, a0, t5
                  lui          s5, 857970
                  or           s0, s2, s6
                  nop
                  mulhu        t3, s3, s8
                  and          gp, a4, s7
                  or           a3, sp, s7
                  sll          tp, gp, s8
                  ori          t5, s9, 799
                  sll          t3, t4, t3
                  ori          t1, gp, -324
                  srli         t6, a4, 2
                  mulh         a5, t5, s4
                  mulhsu       sp, s8, s1
                  srl          s8, s0, s9
                  andi         t6, t3, -1305
                  slti         t4, s9, -553
                  sra          t0, s8, a3
                  srl          s2, t6, a4
                  sll          s2, a3, t2
                  add          a3, s9, ra
                  slli         a2, a5, 23
                  and          a4, t4, t1
                  lui          s5, 1037272
                  xori         s0, s9, -1719
                  sra          s4, s9, t0
                  sll          s4, t0, a7
                  andi         sp, a4, -97
                  or           s0, s0, a6
                  mulhsu       gp, gp, t2
                  div          s10, s4, t6
                  sub          s3, s5, s8
                  xori         a1, s9, -1399
                  xori         ra, s3, 828
                  sltu         a5, a0, a6
                  slt          a1, zero, t4
                  remu         s10, a6, t3
                  sltu         s8, tp, a2
                  remu         zero, s10, t6
                  ori          s7, s10, -86
                  or           a7, gp, s5
                  lui          zero, 792696
                  sub          s11, s1, tp
                  mulh         s3, s7, ra
                  sub          s4, a6, a7
                  slli         tp, s7, 0
                  mul          gp, a7, s10
                  sltiu        t2, t0, 166
                  add          s7, a2, s11
                  andi         a7, t4, -1724
                  mulhsu       a4, s5, a7
                  ori          gp, tp, -302
                  rem          a4, a4, sp
                  slti         a5, tp, -885
                  srl          s4, a2, t2
                  slli         t5, s4, 7
                  nop
                  sll          tp, s8, t2
                  srli         s4, a0, 7
                  divu         a7, gp, t6
                  sltiu        s3, s2, -21
                  nop
                  srli         tp, a3, 26
                  auipc        t4, 465904
                  sltiu        s4, a4, -99
                  sltu         a1, ra, a7
                  mulh         a1, a1, a5
                  nop
                  and          s2, a2, t6
                  xor          s2, a2, sp
                  mulh         s10, s6, t1
                  and          s0, a0, a7
                  sra          sp, ra, s4
                  rem          a3, s10, a0
                  mul          a7, t3, s6
                  sltiu        s2, s4, -2037
                  mulhsu       a4, a5, tp
                  divu         t4, s1, t2
                  mul          s10, t2, s0
                  slli         a7, a3, 21
                  auipc        s5, 1017272
                  lui          t0, 886430
                  sra          t2, gp, s10
                  sll          a1, a4, t0
                  andi         s2, t3, -1317
                  sra          s3, s9, s10
                  xor          s2, ra, a3
                  lui          s11, 264156
                  ori          a1, a7, 414
                  slli         s4, sp, 22
                  srli         s0, a5, 15
                  add          a3, t0, s9
                  mulhu        s7, s1, a6
                  or           s7, zero, t0
                  slti         a1, a5, -894
                  remu         s0, s2, s1
                  slt          t2, sp, zero
                  sltu         s1, gp, a6
                  add          s4, t0, t3
                  nop
                  slti         s1, s3, 167
                  divu         a1, a5, s2
                  auipc        s11, 468802
                  xori         gp, t4, 1176
                  divu         s8, t6, t6
                  mulhsu       sp, s2, a1
                  andi         s5, t0, -674
                  sll          t3, a7, a1
                  lui          zero, 32085
                  slt          t0, a4, a5
                  sra          s4, t1, s1
                  ori          sp, a7, -636
                  and          s1, a6, a4
                  srl          ra, s0, s6
                  mulhsu       s10, s9, t2
                  sltu         a2, t1, a3
                  auipc        s1, 37830
                  srli         zero, t6, 19
                  div          t6, t2, a5
                  srl          tp, s8, s7
                  xor          t0, t5, t6
                  slti         t6, t3, -379
                  addi         t4, t4, -314
                  slti         s7, t0, -778
                  sltiu        s10, t5, 1397
                  mul          a5, a3, tp
                  srai         t5, s7, 24
                  divu         t5, s8, s1
                  mul          s0, sp, a3
                  nop
                  sub          ra, s5, a3
                  sll          sp, s5, s11
                  mulhsu       ra, a2, t4
                  xor          t0, tp, t1
                  sltu         t2, s4, a6
                  sll          t1, t0, zero
                  slt          tp, zero, t2
                  lui          s0, 710049
                  nop
                  remu         s3, s10, sp
                  addi         s8, s9, 16
                  sub          s4, a5, a3
                  auipc        s11, 966551
                  and          ra, s8, gp
                  and          s10, sp, s11
                  or           a5, t1, a3
                  addi         a1, s1, 1268
                  mulh         gp, t1, s3
                  mulh         a7, t6, s3
                  xori         a3, a2, 1450
                  sll          a1, s11, a6
                  xori         t4, s2, -1422
                  xor          a1, gp, t0
                  sll          t3, t1, t2
                  lui          t4, 2872
                  slli         a1, s3, 11
                  andi         ra, sp, 1019
                  mulhsu       a4, a6, a7
                  srl          s2, s4, s11
                  sra          t1, t0, ra
                  divu         s0, a0, s9
                  rem          s11, a4, s10
                  srl          s5, s9, sp
                  srl          t6, a3, a5
                  lui          a1, 853353
                  and          a5, s2, a6
                  xori         t5, t6, 1858
                  remu         s10, s0, t4
                  auipc        s3, 466583
                  div          s2, t3, s8
                  rem          s3, t5, t4
                  slli         gp, t1, 26
                  andi         zero, s7, 1594
                  mulhu        a1, s0, tp
                  xori         t3, t1, -703
                  mulh         s10, s2, gp
                  div          a1, t5, s0
                  nop
                  auipc        zero, 405803
                  srli         s1, s8, 3
                  rem          s3, t2, s8
                  add          t3, s5, s6
                  auipc        s0, 234684
                  mulhsu       t3, s0, t6
                  slt          a5, s4, s1
                  addi         a3, t0, 1060
                  mulhu        sp, s2, sp
                  mul          s4, zero, tp
                  slli         s8, a2, 26
                  xor          a2, a4, ra
                  srl          gp, a2, a2
                  xor          s1, tp, a7
                  sub          s3, gp, zero
                  slt          a4, tp, s6
                  sltu         sp, a5, s11
                  div          a5, t5, s9
                  mulh         t0, t2, a4
                  add          sp, a3, ra
                  auipc        t3, 388664
                  mulhsu       a1, s4, s2
                  div          t3, s1, t5
                  mulhsu       s5, t5, t2
                  sltu         s3, s0, a3
                  remu         gp, a1, a5
                  slli         a4, tp, 27
                  xor          tp, a1, a1
                  sltu         a3, t3, s6
                  xori         t2, t0, -378
                  and          tp, zero, s11
                  andi         t3, ra, 873
                  xor          t1, s8, t2
                  andi         a2, gp, -1752
                  or           s0, s3, a2
                  sra          gp, s0, t6
                  divu         a1, s1, a4
                  xor          a2, zero, a6
                  andi         s4, s2, 738
                  add          a2, a0, s6
                  slli         ra, t3, 26
                  xor          zero, ra, s7
                  sll          a1, a4, s1
                  ori          s2, ra, -1523
                  divu         s1, tp, s0
                  slt          t3, t3, t5
                  lui          a4, 273482
                  mulh         s5, s0, a3
                  and          s11, s5, a4
                  remu         s4, a2, t6
                  mulh         s7, zero, a0
                  ori          a7, t6, 1063
                  rem          s10, a4, t5
                  mulhsu       s7, a0, t4
                  srli         s10, a5, 20
                  nop
                  auipc        s8, 105309
                  and          a4, t1, s1
                  sltiu        s7, t5, 422
                  srai         sp, a1, 19
                  sll          s10, s0, s4
                  slti         s3, tp, 578
                  sub          s9, t3, t2
                  divu         a7, s5, s2
                  slli         s7, s10, 20
                  sltu         a7, a2, t2
                  slli         t0, t0, 29
                  xori         sp, s9, 328
                  and          s11, a6, sp
                  rem          gp, s6, sp
                  xori         t6, a5, 360
                  mulh         s2, a6, s0
                  slti         s2, a0, -1065
                  remu         s10, zero, s4
                  ori          s7, a2, -200
                  sra          a3, a2, s1
                  nop
                  add          s5, t5, a5
                  auipc        s0, 579225
                  sltu         s7, t6, s5
                  mulhsu       s3, s1, t4
                  nop
                  nop
                  rem          s5, s1, s2
                  andi         s1, s7, -232
                  lui          s9, 790500
                  sll          a1, t5, a4
                  and          t6, s8, t5
                  mul          t5, s3, a2
                  sltiu        a5, t5, -560
                  rem          a1, a3, t4
                  andi         gp, a1, -1287
                  divu         s7, t3, t0
                  divu         a1, a5, a5
                  sra          s8, gp, s3
                  mul          a5, a7, a6
                  or           tp, a2, a2
                  mulhsu       a3, a2, t2
                  slli         s11, sp, 18
                  srl          s0, a0, s6
                  xori         tp, gp, 749
                  mulhu        a2, a6, sp
                  add          s11, s7, tp
                  lui          a7, 642252
                  mulhsu       t6, a6, a3
                  mulh         sp, a1, s8
                  slt          a4, s8, gp
                  divu         t4, gp, t1
                  srai         t5, t5, 22
                  andi         t4, s2, 1518
                  sra          s11, tp, s8
                  sra          sp, a6, s2
                  mulh         a2, sp, t5
                  slt          s11, tp, a7
                  lui          ra, 764630
                  xori         s1, s7, 362
                  div          a1, s6, tp
                  slti         a3, s0, 1394
                  sll          t3, t0, s10
                  or           a4, s9, s0
                  ori          t2, a1, -1696
                  slli         a5, s9, 18
                  rem          a1, a4, t2
                  and          s8, sp, s1
                  sub          a4, a4, a0
                  mulhu        s4, t4, s4
                  sll          a3, s10, s5
                  divu         t2, s7, zero
                  xor          tp, t6, a3
                  div          t6, ra, s0
                  mulhsu       a1, a0, a4
                  sltu         s9, tp, s5
                  ori          t1, sp, 706
                  and          s4, s9, s0
                  mulh         sp, t5, s4
                  nop
                  mul          s1, t0, a6
                  rem          t4, s4, s2
                  auipc        a4, 703595
                  sltiu        t3, zero, 1461
                  rem          t1, s6, s6
                  add          s11, t1, zero
                  add          s7, a3, s11
                  div          a5, t5, s9
                  slti         gp, gp, 1121
                  sll          s1, t6, s7
                  or           a7, t6, s2
                  rem          zero, s5, t3
                  and          s10, t0, t2
                  sub          gp, a6, ra
                  rem          gp, s11, a7
                  mulhsu       a2, s1, sp
                  divu         tp, a0, a7
                  add          a4, t2, ra
                  xor          ra, s6, s5
                  or           a1, t6, t6
                  and          s4, t4, s7
                  mulhsu       sp, a5, s10
                  mulhu        s3, t1, t4
                  srl          s4, a2, s4
                  auipc        s2, 405034
                  xor          s8, s11, gp
                  slt          t6, s6, sp
                  remu         sp, t4, gp
                  rem          a4, a6, a4
                  divu         a5, s7, tp
                  and          t1, tp, s9
                  sll          t0, s11, s9
                  mulhu        t4, s5, s11
                  mulhsu       s4, s10, s5
                  mulh         a5, s8, s5
                  andi         sp, s6, 1520
                  mul          a7, s3, s2
                  sra          s8, a5, a7
                  divu         t0, t0, a6
                  auipc        t1, 1016099
                  andi         t1, ra, 267
                  slt          a5, a1, s10
                  and          s10, t1, s8
                  srl          s2, t5, s5
                  divu         t2, t2, sp
                  sra          s3, zero, s0
                  addi         a2, s1, 559
                  sub          s4, t3, t1
                  andi         a5, a4, -305
                  xor          zero, s7, s9
                  sub          s5, sp, a0
                  andi         a2, s6, 161
                  slli         sp, s1, 9
                  div          s4, a7, a5
                  nop
                  slli         zero, s11, 2
                  add          t3, s2, a5
                  addi         gp, s5, -857
                  xor          t0, t0, a3
                  xori         zero, zero, 994
                  sltu         s8, a2, s6
                  add          s7, s9, a4
                  mulhsu       t0, s0, a4
                  xor          a4, s2, t0
                  or           t5, s9, gp
                  auipc        ra, 36658
                  remu         t6, zero, a5
                  sra          t6, a5, s9
                  mul          s10, a3, zero
                  andi         t2, a7, 1253
                  mulhu        s4, t3, t4
                  mul          t4, t3, a6
                  xor          gp, a2, t1
                  sltu         t1, a0, s10
                  slti         zero, t0, 594
                  srli         a1, a2, 18
                  divu         s4, a6, t6
                  remu         s0, t2, t3
                  xor          t6, a2, t5
                  lui          zero, 835757
                  sll          s4, a1, s11
                  nop
                  sltiu        t5, s3, 1053
                  auipc        s1, 753624
                  addi         t5, a6, -1980
                  slt          a1, zero, ra
                  addi         s4, a2, 968
                  slti         a5, s8, -1060
                  xor          t6, t0, a1
                  div          gp, sp, t5
                  addi         sp, t6, 1426
                  remu         s2, t3, sp
                  mul          s3, s8, s10
                  mul          gp, s4, s11
                  mulh         s0, tp, a6
                  sll          a7, t6, t2
                  xori         t4, tp, 567
                  srl          t3, s6, s4
                  mul          s1, s8, t3
                  xor          s9, t6, s8
                  slli         gp, s5, 6
                  div          t5, t6, s5
                  auipc        t6, 704739
                  and          t2, t2, t0
                  nop
                  sra          a2, gp, zero
                  mul          a1, s6, a1
                  sra          a4, s10, t6
                  xori         s0, t6, -1723
                  rem          ra, t5, t6
                  srai         t4, a6, 29
                  lui          s2, 78306
                  sltiu        s1, s6, 425
                  slli         t5, a4, 18
                  mulh         s8, s6, t6
                  mulhu        a5, s9, s10
                  mulhu        a1, s2, sp
                  srli         t6, gp, 5
                  mul          s9, a0, a3
                  auipc        a1, 215148
                  srl          zero, a6, a3
                  mulhu        s5, s6, a2
                  mulhsu       zero, a5, a5
                  srl          t1, a6, t3
                  mulhsu       s7, a4, s9
                  and          a4, t6, s5
                  slti         t5, ra, 1337
                  srai         s5, s1, 16
                  divu         a1, t2, s11
                  lui          s4, 129589
                  rem          a7, s3, a5
                  xor          s2, t1, s4
                  sll          a3, s9, t0
                  addi         t1, a1, -11
                  divu         t1, ra, s7
                  srl          t5, s7, a6
                  xori         t4, t3, 1160
                  slt          s11, s7, s7
                  remu         t3, a5, t6
                  mul          a1, a4, s1
                  ori          tp, s4, 549
                  remu         ra, a3, t3
                  srli         s4, a2, 3
                  ori          zero, a1, 405
                  mulhsu       gp, s3, s5
                  mulhsu       t3, a2, t5
                  auipc        a7, 811707
                  sra          ra, sp, s6
                  srl          zero, t4, a6
                  nop
                  rem          a1, s1, a0
                  sub          gp, a1, s4
                  ori          s4, sp, -1046
                  mulhsu       s10, s2, t6
                  nop
                  or           s3, s9, s7
                  xor          t3, ra, s8
                  addi         s8, s10, 1113
                  srli         a4, t4, 20
                  slli         s9, s2, 10
                  add          t5, t2, s3
                  mulh         s3, t0, s11
                  mulhu        s8, t6, a4
                  sltiu        a5, a1, -1138
                  srai         a2, zero, 12
                  and          s1, s11, ra
                  and          s2, s7, s11
                  or           s5, t1, t6
                  rem          s4, s6, t6
                  srli         s2, t3, 30
                  andi         s7, a5, -510
                  remu         s10, s6, a1
                  mulhu        sp, a6, t5
                  sltu         s4, s1, gp
                  and          a2, t0, sp
                  mulh         s9, s0, a4
                  mulhsu       s2, ra, a2
                  mulhsu       s9, t5, ra
                  sltu         s10, t1, s0
                  mulhu        s11, zero, s10
                  srli         t6, s4, 19
                  xori         a1, zero, -1780
                  add          t2, t4, a3
                  sub          t1, s0, t4
                  mulhsu       a4, a0, t2
                  auipc        s2, 21232
                  or           gp, a2, t4
                  sub          s4, s1, s9
                  and          t6, sp, t2
                  slli         t2, a3, 2
                  sub          s4, s4, t0
                  mulhu        t5, t3, s0
                  sltiu        t1, t5, 527
                  or           s7, t1, a4
                  xori         s10, s1, 930
                  mul          tp, s9, s9
                  xor          tp, gp, s2
                  sub          t5, s7, s3
                  srli         s2, t3, 30
                  srai         s11, s3, 2
                  xor          a7, a0, a4
                  ori          t3, t0, -374
                  andi         s9, s7, -1888
                  sltiu        s1, sp, -521
                  and          ra, t0, a0
                  divu         gp, s4, s7
                  rem          t6, s8, a2
                  nop
                  or           t0, sp, a4
                  xori         ra, t1, 1293
                  xori         tp, s4, -880
                  sub          s3, ra, t1
                  mulhu        a5, tp, s2
                  and          s7, a5, s5
                  mulhsu       s10, a1, a4
                  srai         t6, s0, 24
                  lui          s11, 340428
                  sltu         s0, tp, gp
                  mul          s8, a5, s5
                  mulhu        gp, s8, gp
                  auipc        s1, 453805
                  srai         sp, a3, 11
                  auipc        s9, 159307
                  mulh         s4, a2, gp
                  divu         a2, a3, a7
                  sra          t3, tp, t6
                  sll          t5, s7, s7
                  sll          t6, s11, t4
                  divu         a1, a0, a1
                  slt          t3, a7, s10
                  ori          a1, tp, 26
                  sltiu        s4, s5, -466
                  mulhu        t6, s11, sp
                  rem          s1, a3, t5
                  mulhsu       t1, a1, s11
                  srl          t2, a3, a4
                  mulhu        s4, t0, a0
                  slli         s2, a0, 20
                  xori         s2, s4, 1709
                  and          s1, a2, t3
                  div          t5, t6, s2
                  divu         t5, t0, a6
                  ori          t6, s5, -609
                  slli         a2, s5, 13
                  mul          t5, s7, ra
                  sltu         t2, a3, t3
                  or           t0, t6, t5
                  lui          a2, 115611
                  sub          zero, t2, a3
                  add          s0, ra, t5
                  or           s0, s2, t3
                  srai         t3, s6, 2
                  mulh         s10, gp, a6
                  srl          t1, t3, s4
                  nop
                  slli         s10, t0, 4
                  xor          s11, a1, zero
                  addi         s7, s9, 66
                  srai         a5, t3, 17
                  mul          s2, ra, t2
                  addi         s4, a1, 661
                  sll          t1, t4, tp
                  srai         s7, s5, 17
                  sra          s1, a2, zero
                  sltu         s11, s10, a6
                  or           tp, ra, t3
                  xori         a7, s5, -1597
                  mulhsu       s3, t3, a3
                  auipc        t6, 407980
                  div          t6, a7, a7
                  mul          s10, s2, s3
                  sub          a7, a7, s4
                  slli         s5, zero, 12
                  andi         t5, t5, 15
                  slti         s0, a7, -291
                  sub          s1, tp, s5
                  srai         t3, t0, 20
                  addi         a2, sp, 1890
                  mulhu        s2, gp, s2
                  auipc        a5, 801620
                  srl          t1, s3, t2
                  lui          gp, 698152
                  add          t1, s0, s0
                  sltiu        s0, s7, -527
                  slli         a5, t2, 29
                  divu         s7, t0, t0
                  mulhsu       t4, s6, s8
                  ori          s4, a0, -1602
                  auipc        s10, 782348
                  or           s7, a1, t5
                  add          a7, s3, t0
                  sra          t5, t2, gp
                  lui          s11, 1024015
                  nop
                  slt          s1, s11, tp
                  mulhu        a3, s10, a4
                  sltiu        a1, s8, 1383
                  xor          s3, gp, t4
                  slt          a5, s10, a7
                  slli         a7, s4, 22
                  or           s8, a6, s0
                  srai         a1, a3, 12
                  nop
                  slti         gp, a1, -682
                  or           zero, s5, t0
                  div          s1, gp, s10
                  addi         s4, ra, 876
                  slti         s4, a4, 365
                  add          s2, a4, s11
                  sra          s10, a4, a7
                  mulh         a3, s9, s1
                  mulh         t1, s4, a3
                  mulhu        ra, s4, s9
                  sra          zero, s7, a5
                  auipc        t2, 384426
                  sltiu        sp, t0, -95
                  mul          s2, a4, t3
                  sub          a2, s10, s11
                  add          s4, t6, s4
                  addi         s0, a7, -1889
                  slt          s9, s10, s10
                  mul          s0, s6, a0
                  or           a3, s9, t2
                  slti         s3, s3, -1656
                  sra          s11, gp, s11
                  mulhu        s0, zero, ra
                  ori          s4, s10, -679
                  add          s8, s4, a4
                  sltu         s9, s11, a3
                  mulh         t4, a7, t2
                  xori         t2, s6, 1857
                  slti         t0, a4, 114
                  sltu         a4, t0, t0
                  auipc        t4, 814683
                  sra          a5, t6, s11
                  mulhu        t0, sp, a1
                  andi         s3, ra, -133
                  add          a3, s7, s11
                  sub          s5, ra, zero
                  mulhu        s1, a7, t1
                  mul          s8, t2, t4
                  addi         s5, a1, -651
                  sll          s4, s5, zero
                  slti         s7, zero, -1599
                  srl          s11, s7, s1
                  srai         zero, tp, 2
                  ori          s4, t1, -1744
                  slt          s8, a0, s6
                  srai         t4, s9, 18
                  lui          s7, 480249
                  and          s5, t1, s4
                  and          a5, s4, s2
                  sltu         s5, s11, gp
                  rem          s3, s2, s1
                  sltu         t3, tp, a3
                  divu         s4, s11, s9
                  mulh         sp, s8, a4
                  mulh         zero, a0, ra
                  nop
                  or           s9, s0, sp
                  mul          t2, a2, t0
                  srl          t5, s4, gp
                  lui          a3, 31470
                  sub          a4, s2, zero
                  mul          s5, s9, a0
                  add          tp, s5, s4
                  div          s9, s2, s5
                  or           s3, s11, a0
                  and          a4, t6, t4
                  addi         s4, t2, 802
                  sltiu        s10, t3, -2
                  and          s3, t6, s11
                  srl          s8, a1, s3
                  addi         t2, s5, -492
                  divu         a7, t1, t4
                  nop
                  mulh         t1, sp, t0
                  lui          s8, 730340
                  xori         s8, s5, -2021
                  srai         s4, s8, 1
                  div          s3, t1, t5
                  mulh         s2, a1, zero
                  srai         zero, s1, 29
                  xor          t5, a2, t4
                  or           s2, s4, s6
                  slti         s7, s0, -91
                  rem          tp, a1, a0
                  andi         s0, s8, -1957
                  or           t2, s3, t3
                  auipc        a2, 21763
                  rem          t5, a7, s6
                  slli         s10, s1, 19
                  auipc        s7, 163071
                  rem          s7, ra, a0
                  xori         t6, zero, 31
                  divu         sp, t6, s6
                  and          s5, s9, s9
                  auipc        s10, 504328
                  add          s4, a0, tp
                  mulhu        sp, zero, a3
                  mul          a1, s8, t2
                  remu         tp, a7, s7
                  lui          s8, 972799
                  sltiu        t4, s6, 1260
                  xor          t5, a2, t3
                  sra          s4, t6, t1
                  mulhu        t4, a0, zero
                  xori         s9, t6, 769
                  rem          zero, s3, a7
                  addi         t5, a2, -1597
                  slli         s5, s6, 15
                  auipc        a4, 177081
                  lui          a4, 395721
                  sra          t0, s1, a4
                  auipc        s9, 732194
                  andi         a5, a6, -964
                  srai         a4, s3, 2
                  rem          t4, a3, s3
                  xor          a5, a1, a2
                  divu         s1, a3, t4
                  mulhsu       s11, t4, t1
                  lui          s10, 337674
                  remu         t6, a3, s9
                  ori          a3, ra, -1535
                  auipc        s8, 132711
                  slli         t6, sp, 11
                  sll          s10, s9, a3
                  slt          a3, t5, t0
                  slt          s2, a0, t3
                  remu         a5, t0, a6
                  mulhsu       t3, s1, tp
                  ori          a5, a7, -1272
                  slt          a2, s0, s2
                  mulhu        gp, a6, sp
                  ori          s2, a4, -594
                  sub          s5, gp, gp
                  srai         s3, a3, 13
                  slli         gp, a7, 4
                  lui          t2, 1037849
                  sra          s1, s6, t3
                  mulh         gp, s9, a4
                  mul          t3, t1, s9
                  nop
                  rem          s3, ra, t5
                  mulhu        t3, s5, t6
                  srli         t6, ra, 4
                  mulhu        a1, tp, t3
                  ori          a5, s2, 242
                  xori         s4, t3, -233
                  srai         a7, a0, 14
                  sltu         sp, a0, sp
                  remu         t0, a3, s1
                  auipc        a1, 84937
                  andi         s2, tp, 1595
                  sub          s7, a6, a6
                  div          a7, s2, s9
                  slt          t2, t5, s2
                  sltu         sp, s6, tp
                  mul          s1, s1, ra
                  xor          a7, a7, sp
                  nop
                  or           s7, t6, tp
                  srli         a1, gp, 18
                  andi         s2, sp, -376
                  lui          t0, 907398
                  slti         t6, a0, 630
                  mul          s11, a1, s4
                  add          zero, s4, t1
                  lui          s7, 359318
                  sll          s4, t0, a2
                  divu         s8, t1, s4
                  sra          ra, s5, s9
                  remu         a2, a7, t1
                  sra          s11, s8, t5
                  nop
                  auipc        a7, 909
                  and          zero, s6, s8
                  mulhsu       s10, gp, s8
                  add          a3, gp, t6
                  sltu         s1, s0, s6
                  xori         zero, a2, 130
                  div          zero, a2, s1
                  srli         a7, zero, 30
                  srl          t5, s0, ra
                  add          s8, t6, a2
                  mulhsu       a7, a5, s0
                  sll          s9, s5, s5
                  sltiu        t4, zero, -1044
                  div          t4, t2, s3
                  mulhu        s9, s10, s4
                  addi         s9, s8, 2020
                  mulhsu       t5, s3, t6
                  or           a7, a5, a7
                  ori          s2, a7, 1431
                  auipc        s3, 828568
                  add          s7, s8, a2
                  srl          a1, a3, s4
                  xori         s1, s7, 268
                  mulhu        gp, s1, sp
                  div          a7, s5, t6
                  slt          t3, s6, a5
                  sltiu        a4, zero, 1177
                  srl          t1, a5, t5
                  xori         t3, s3, 1361
                  mulhu        s2, a7, tp
                  divu         zero, s0, s1
                  nop
                  add          a7, t5, s4
                  remu         a3, s3, s0
                  mulhsu       t1, t0, a0
                  srai         s2, a7, 15
                  srli         a1, t0, 3
                  mulhsu       s0, s7, s9
                  sll          s5, s5, tp
                  sra          t0, sp, t6
                  slti         t3, s0, -1751
                  sub          t1, a1, sp
                  sra          t5, t2, s11
                  srai         s3, s2, 26
                  sltu         s4, tp, t6
                  srli         s9, t3, 7
                  srai         a1, a5, 1
                  sub          s4, s6, s10
                  mulhsu       zero, s0, s4
                  sltiu        t6, ra, 1437
                  sltu         t0, sp, s2
                  sub          t3, t5, a3
                  sub          s2, s3, t5
                  slli         a2, s4, 8
                  xor          sp, t4, s11
                  remu         s2, tp, s2
                  add          s11, sp, a6
                  mulh         s2, t2, zero
                  sltu         ra, t5, s11
                  sltu         gp, s3, sp
                  div          s7, zero, t1
                  srl          a3, t6, s11
                  sltu         t3, a1, s0
                  xori         s8, t0, -626
                  srai         s7, a0, 7
                  addi         a1, t4, 404
                  xor          gp, a2, s2
                  mul          s10, t3, a3
                  or           s8, a1, a6
                  rem          s9, s10, ra
                  sltiu        t3, t1, -661
                  sltiu        a5, a4, 706
                  sll          t4, s6, zero
                  divu         s4, a2, s9
                  or           s3, s10, s1
                  slti         gp, s10, 1231
                  or           a5, a3, sp
                  sll          a7, s11, ra
                  mulhu        s4, t5, a1
                  slli         t2, s8, 5
                  auipc        s1, 799963
                  addi         s10, gp, 1963
                  sltiu        s8, t6, -1913
                  ori          s11, a6, 1130
                  sll          s2, s8, s6
                  auipc        tp, 473017
                  sltu         s9, a7, s2
                  or           a5, tp, sp
                  mul          a4, a6, t0
                  mul          t5, a6, s5
                  srl          a1, gp, a6
                  sltiu        t4, t2, 525
                  mulhsu       sp, a0, s7
                  nop
                  auipc        s8, 778933
                  mul          s4, s1, gp
                  andi         t1, s0, -1323
                  sll          s7, t3, t3
                  or           t0, s5, t6
                  srli         sp, a1, 10
                  mulhsu       tp, a3, a1
                  slt          s7, sp, t2
                  slti         t5, a2, -713
                  lui          a4, 49597
                  remu         s9, s11, a2
                  xori         s0, s11, 1788
                  mulhsu       zero, tp, t3
                  or           t1, s1, a7
                  srl          s0, a7, ra
                  lui          s4, 880811
                  sll          gp, tp, gp
                  xori         s1, t2, 399
                  sub          s11, s5, s2
                  mulhsu       s11, t0, zero
                  mulhsu       gp, a0, s7
                  slti         s5, s1, 764
                  lui          s1, 194309
                  mulhu        t5, t4, a1
                  slt          a3, tp, a4
                  sub          t1, s6, s0
                  lui          t0, 1039143
                  slli         gp, a3, 5
                  sub          a1, sp, s10
                  sra          t1, s2, a6
                  and          t4, s4, t0
                  andi         s9, t2, 1832
                  rem          s9, t5, s7
                  rem          s8, s10, t4
                  remu         a4, s1, t0
                  mulh         t1, s2, sp
                  divu         ra, t2, t2
                  andi         s7, a7, -1874
                  mul          a7, s9, sp
                  mulhsu       t2, zero, a5
                  sltu         a3, a5, s3
                  addi         a7, a5, 1820
                  slti         s10, a2, 1652
                  xor          s3, a5, s10
                  mulhsu       s8, s11, s1
                  xor          t4, t2, zero
                  divu         a2, ra, s5
                  mulhu        a5, a0, t1
                  rem          s2, t2, s4
                  mulh         gp, s9, gp
                  sub          s7, zero, sp
                  sra          t6, t2, s0
                  nop
                  mulh         s2, tp, a2
                  mulh         s1, s7, a3
                  andi         t1, t5, 73
                  sub          a2, a5, s7
                  sltu         s11, sp, sp
                  rem          a3, a7, a3
                  slti         a5, s5, -27
                  andi         s10, ra, 1534
                  or           a5, t2, t5
                  slt          t3, t0, zero
                  div          zero, t3, s6
                  ori          s0, a6, -467
                  srai         a3, t5, 15
                  sll          t6, a5, a4
                  ori          s7, s5, -579
                  slti         zero, s8, -126
                  mulh         tp, tp, s2
                  mul          a4, s5, a1
                  mulhu        s8, s1, t1
                  srli         t1, s8, 6
                  xor          a4, s8, s1
                  xor          s4, t4, s11
                  divu         s8, a0, s5
                  add          a4, s4, tp
                  addi         s9, a3, -556
                  div          s9, s10, zero
                  sltiu        t5, s2, -18
                  sll          sp, s6, s1
                  nop
                  sltiu        a3, ra, 762
                  sltiu        t4, t3, -856
                  slti         ra, s10, -895
                  sll          s9, a5, zero
                  slt          a7, t4, s5
                  srai         t6, a0, 4
                  ori          a3, s2, 512
                  ori          t5, s2, 628
                  srai         s3, s0, 31
                  sra          s4, t1, a3
                  remu         a2, t4, a6
                  add          t5, a4, s11
                  xor          s0, t5, sp
                  xor          t0, a3, a4
                  xori         t5, t5, -421
                  div          s0, t5, s8
                  rem          ra, s11, a0
                  srl          s10, a7, a2
                  srai         s9, s10, 17
                  srl          t2, s8, a4
                  div          t4, t0, s1
                  rem          gp, zero, a0
                  xor          sp, s8, a1
                  ori          gp, t0, -1914
                  xor          s0, zero, t1
                  srl          gp, s6, s3
                  divu         t3, s1, a4
                  mul          s0, s10, t5
                  sra          s5, a1, t3
                  srai         t6, sp, 4
                  srl          s2, t2, t5
                  nop
                  remu         s4, a4, t5
                  lui          zero, 644741
                  slli         t2, s0, 26
                  andi         t1, t5, 1153
                  auipc        t4, 15216
                  slt          s8, s10, s4
                  mulhu        a4, s11, s8
                  slli         t2, s11, 18
                  divu         s11, t5, s10
                  div          t3, t5, t0
                  mulhsu       s3, a0, zero
                  slti         s2, s4, -1547
                  sra          t0, s11, s6
                  addi         zero, ra, 139
                  slli         t1, t6, 31
                  divu         t1, s6, a1
                  mulhu        a2, t1, s5
                  srai         t1, s10, 21
                  addi         t1, gp, -702
                  slli         s7, t0, 10
                  srl          s8, t0, a7
                  mulhsu       s4, ra, tp
                  slt          s8, s7, s11
                  mul          t1, t2, t1
                  sltiu        a1, s8, -814
                  sll          tp, ra, a1
                  srl          s2, t6, tp
                  slt          a1, a5, s9
                  mulhsu       gp, a1, s8
                  sub          a5, s6, a1
                  ori          a3, s0, 1771
                  sra          t3, t0, s2
                  sub          a1, gp, s6
                  ori          a2, t6, -49
                  mulh         a5, s7, ra
                  auipc        s0, 920910
                  slli         a4, t3, 30
                  slt          t5, t5, s2
                  sll          t2, a0, t4
                  remu         tp, s7, a4
                  ori          tp, s4, -1279
                  slli         zero, a7, 4
                  slt          t0, t1, s4
                  addi         a1, gp, 1407
                  xor          t1, t4, s4
                  mulh         gp, tp, a6
                  remu         s0, s1, s4
                  remu         t6, s11, s7
                  nop
                  or           s7, a1, s10
                  auipc        s7, 935516
                  addi         tp, s1, -1134
                  or           s1, t3, a2
                  srl          ra, a6, s2
                  srai         a3, ra, 23
                  rem          a2, t0, t6
                  xor          t2, t4, tp
                  divu         a4, tp, tp
                  sltiu        tp, s1, 834
                  sra          s10, a6, s10
                  auipc        s8, 637597
                  and          tp, sp, s1
                  lui          zero, 852204
                  mul          a3, t0, s2
                  ori          s10, t3, -1178
                  and          s10, a1, s2
                  mulhu        s10, t0, a3
                  ori          a1, a0, -1602
                  add          s10, s3, t0
                  slti         t3, s3, -783
                  slti         a3, t0, 472
                  xor          a3, s7, a5
                  div          s7, s8, s0
                  lui          s2, 485654
                  or           a7, s3, sp
                  slt          t1, t2, s4
                  srli         s2, tp, 22
                  divu         s10, a7, a6
                  slt          s11, s7, s3
                  slli         zero, a1, 28
                  ori          s3, s11, -734
                  rem          a7, s5, s4
                  nop
                  addi         s11, s9, 736
                  div          t5, t1, s0
                  xor          t2, gp, t1
                  ori          s7, s1, 1340
                  nop
                  mulh         a3, t4, t6
                  srl          a5, s8, a1
                  sll          s4, a5, s0
                  srai         s3, t3, 17
                  srli         s0, a1, 16
                  mul          a7, s8, t1
                  mulh         zero, s8, s3
                  div          s0, t3, t1
                  remu         a7, a4, s0
                  sra          s3, sp, a4
                  lui          ra, 653193
                  auipc        s5, 1002917
                  mulhu        s5, s4, t4
                  slt          a3, a0, s4
                  slli         a1, s7, 8
                  slti         s0, s7, -864
                  xori         a2, s2, -1080
                  lui          s1, 757184
                  sll          s2, s5, t4
                  or           zero, s2, ra
                  sra          t5, a6, gp
                  divu         s0, a1, t3
                  remu         t4, t3, s4
                  and          t2, tp, ra
                  srl          tp, a0, s7
                  ori          a5, t1, -1808
                  xor          gp, s11, a0
                  mulhu        s1, gp, s10
                  div          t1, t6, a3
                  slti         a7, s10, 2036
                  sub          s8, a3, zero
                  sll          s11, s6, s4
                  rem          s0, s11, s1
                  or           s10, s9, gp
                  slli         sp, zero, 26
                  sra          s11, s5, s5
                  lui          a5, 601690
                  remu         a4, a7, s8
                  xori         s7, t6, -906
                  slti         s0, s8, 236
                  sltiu        s1, t0, 701
                  lui          s9, 662089
                  lui          t2, 150549
                  srl          s10, s3, a0
                  sra          s10, ra, sp
                  nop
                  remu         s4, ra, s4
                  or           t4, t0, s11
                  nop
                  divu         a3, t1, t1
                  sltu         a1, a0, s7
                  mulhu        a3, s1, s1
                  sra          tp, sp, sp
                  sra          s4, a5, s8
                  slli         s8, t6, 6
                  sll          a3, a1, s10
                  auipc        a5, 108968
                  nop
                  lui          t3, 751074
                  mulhu        zero, s8, s9
                  nop
                  srl          s3, gp, zero
                  addi         tp, t1, 1297
                  remu         s8, s1, t2
                  mulhsu       s9, t0, zero
                  lui          a1, 963908
                  sra          s0, a4, a1
                  remu         s8, a4, s5
                  sltu         s9, s0, a0
                  and          a5, ra, a5
                  div          s2, s6, s3
                  xori         s11, t3, -501
                  mulhu        a7, s10, t6
                  mulh         a1, a5, s10
                  sltiu        s8, a5, -214
                  xor          t2, a7, a5
                  add          s11, a2, s1
                  andi         s0, a0, 846
                  sltiu        t3, s7, 1811
                  xor          s10, t3, sp
                  sub          s0, t5, t1
                  sub          t2, t1, s0
                  xor          a3, s8, tp
                  auipc        tp, 882887
                  slti         t1, t2, -982
                  and          t5, s7, a5
                  remu         a7, t4, s7
                  andi         s4, a4, 394
                  andi         t5, s11, -626
                  and          s10, s8, t6
                  sll          t2, t6, s3
                  sltu         s11, s9, a5
                  and          s1, a2, a0
                  mulh         s10, a1, s4
                  and          a3, s8, s5
                  srai         s9, s3, 27
                  or           s7, a7, a5
                  sub          t1, s10, s8
                  lui          a7, 817936
                  auipc        t2, 372746
                  auipc        s9, 68480
                  srli         a3, a6, 30
                  srl          s1, a4, a6
                  sltiu        t3, t6, -253
                  sub          t4, gp, s2
                  addi         t4, t0, -634
                  add          a1, t0, t6
                  rem          t1, s9, s8
                  sll          t1, zero, tp
                  sltiu        a3, s7, -2012
                  or           sp, tp, t5
                  mul          s4, s9, a6
                  and          a3, s4, ra
                  srli         a5, s10, 22
                  slli         s0, s10, 31
                  slti         s11, a1, -448
                  sltiu        t4, gp, -337
                  remu         ra, a6, t5
                  divu         tp, s8, a5
                  mul          gp, s8, s9
                  nop
                  addi         zero, a2, -1896
                  remu         s0, t2, t0
                  ori          t6, t5, 788
                  srai         gp, s8, 9
                  slli         ra, zero, 26
                  lui          ra, 343877
                  slt          t5, sp, t5
                  sltiu        s3, s3, -1361
                  ori          a3, s8, -1815
                  sltu         t6, s3, t5
                  sub          s5, s5, a0
                  and          t4, a3, a5
                  srli         s9, a3, 30
                  sltu         tp, s6, a7
                  div          tp, s8, a2
                  mul          ra, t1, s1
                  lui          t5, 479519
                  sll          sp, t2, a7
                  addi         s3, a2, -1123
                  srai         zero, a1, 31
                  or           s4, s10, s4
                  lui          t5, 57301
                  divu         a3, zero, t6
                  ori          a5, ra, -1181
                  xori         a2, zero, -51
                  add          s3, s8, gp
                  and          t1, s3, t4
                  xori         t5, s3, 937
                  divu         t3, tp, a1
                  auipc        s0, 429198
                  xor          sp, s8, ra
                  sltiu        t2, s6, 482
                  sltiu        s2, t3, -2035
                  div          sp, t2, a4
                  rem          s2, s3, s6
                  mulhsu       s4, s0, a1
                  lui          s4, 618006
                  divu         s11, tp, a5
                  srl          zero, s3, a4
                  rem          tp, t4, t1
                  add          s9, s11, sp
                  div          s11, t5, s9
                  sltu         s4, t4, s9
                  addi         a4, t5, -1642
                  nop
                  sltu         t3, t1, t6
                  add          a4, t4, s0
                  or           s9, a1, a4
                  xori         a1, t6, 813
                  xori         s1, s6, 1439
                  mulhsu       a5, s9, s10
                  srai         s4, t4, 28
                  xor          zero, t4, t5
                  slli         t1, s6, 28
                  remu         t5, a4, s9
                  add          a4, s11, tp
                  andi         a7, s2, -1389
                  rem          s2, t3, s3
                  srl          t3, t2, s4
                  nop
                  lui          t5, 637524
                  rem          a5, sp, t6
                  lui          sp, 96794
                  srl          sp, s7, s3
                  sltiu        s7, t0, 1707
                  addi         s10, gp, 377
                  remu         a4, a1, tp
                  or           s0, t1, s10
                  remu         s8, s0, a5
                  sltu         t4, a7, a7
                  or           tp, s6, zero
                  sub          ra, a1, a1
                  xori         s8, a4, -621
                  slli         t0, s0, 7
                  ori          s11, ra, 1983
                  slt          s7, t2, tp
                  auipc        s5, 55640
                  mulhsu       s11, a5, t4
                  and          ra, s9, tp
                  rem          s4, t4, a3
                  sll          t2, gp, sp
                  srli         s3, ra, 2
                  slli         t6, s8, 4
                  auipc        s10, 208580
                  addi         s10, s5, -1139
                  slt          t5, t6, a4
                  lui          s10, 35918
                  rem          a1, s3, a0
                  lui          t5, 367520
                  and          t2, s9, gp
                  mulh         sp, a4, a0
                  slli         s9, s1, 28
                  sltiu        t5, gp, 1083
                  sltiu        s10, t2, -152
                  srai         gp, s0, 1
                  sltu         a4, a1, ra
                  mulh         t4, a3, t6
                  slt          zero, t4, a6
                  sltu         s5, sp, zero
                  srai         s3, s6, 6
                  auipc        s10, 646306
                  sub          s1, s2, t6
                  remu         t5, s8, t2
                  slli         s2, s11, 22
                  ori          a2, a6, 443
                  or           a3, gp, t4
                  andi         zero, a0, -114
                  sltu         t1, t0, a7
                  xori         s7, a7, 404
                  auipc        s11, 87487
                  xori         t5, s0, -550
                  slt          a5, a0, s11
                  slti         s2, a2, -1150
                  sltu         a4, a4, gp
                  or           a7, t1, s8
                  sltiu        tp, t2, -137
                  srli         s4, t0, 25
                  ori          s9, s0, 1984
                  sub          s10, t6, t2
                  srli         tp, a3, 30
                  divu         t0, a6, t5
                  addi         t3, s10, 598
                  slli         s9, tp, 16
                  mul          s11, s3, a7
                  and          t4, t3, s8
                  slt          a3, s2, a5
                  div          gp, t3, s4
                  sub          s1, s8, ra
                  remu         t4, s1, a4
                  mul          t6, s8, s4
                  and          a2, s0, s6
                  rem          a2, s8, t5
                  srli         s8, gp, 15
                  remu         a1, s0, s4
                  mulhsu       t4, t0, t6
                  srl          s5, ra, a4
                  slt          s7, a6, a0
                  mulh         ra, t1, t0
                  slt          s4, t4, t0
                  sub          a2, t2, s9
                  nop
                  mulhu        zero, s10, s0
                  sll          tp, a3, gp
                  slli         s9, a5, 9
                  nop
                  or           t6, t3, ra
                  slti         a2, t3, -393
                  slti         s10, a3, 1311
                  srli         t2, t3, 12
                  sltiu        a7, a2, -550
                  nop
                  rem          a1, t0, t3
                  andi         t1, s10, 503
                  auipc        t5, 557273
                  andi         s4, zero, -654
                  srl          a4, a1, sp
                  xor          t5, a4, t1
                  xor          t6, t0, s8
                  divu         s7, s0, t2
                  sra          s0, s9, s10
                  xori         s7, s2, 184
                  srai         s0, t4, 1
                  div          gp, a6, a2
                  sltu         t5, ra, s2
                  nop
                  remu         s1, a1, t3
                  ori          s4, a1, 1568
                  xor          t6, s4, s2
                  addi         sp, ra, 430
                  divu         sp, a2, s11
                  xori         t3, s7, 1875
                  xor          a5, zero, t6
                  or           zero, a4, s7
                  and          s2, a4, t6
                  sub          t4, s2, t3
                  srai         s0, s6, 18
                  slli         a7, a1, 21
                  rem          t5, s9, a5
                  mul          ra, s6, a6
                  sll          s4, s3, a3
                  mulhsu       t4, t0, zero
                  sll          a7, a6, sp
                  srli         a3, tp, 18
                  sltiu        a7, a2, -571
                  srl          s10, s9, t2
                  addi         a1, s1, -1547
                  sll          s9, t1, s2
                  rem          a5, s7, s0
                  add          sp, a6, a6
                  srai         a3, ra, 8
                  srl          a4, a6, s11
                  mulhu        s5, s2, s11
                  rem          ra, a7, t4
                  srl          a3, s6, t3
                  mulhu        tp, a0, gp
                  sll          t5, t4, t2
                  and          sp, s10, t5
                  sll          a4, t1, s11
                  slt          sp, s9, tp
                  mulhsu       zero, a3, ra
                  sll          gp, tp, s10
                  srl          s7, s0, s9
                  slli         s3, ra, 19
                  and          gp, ra, s8
                  sll          ra, t6, a3
                  add          s5, a6, a1
                  mulhsu       ra, a4, zero
                  nop
                  sll          s10, s4, s7
                  srai         a1, s8, 11
                  rem          s4, a0, s9
                  sltiu        s3, a2, 725
                  xor          s3, s10, t5
                  andi         s1, s5, -208
                  mulh         a3, s2, t2
                  slli         t0, a2, 15
                  andi         s10, sp, 350
                  sll          a5, s0, tp
                  sra          s5, t4, t0
                  srli         a1, s0, 18
                  andi         t0, t6, -1086
                  xor          t1, a7, s2
                  slt          s9, s10, t3
                  nop
                  div          s8, a2, a0
                  mul          s3, t5, s0
                  nop
                  lui          a2, 558051
                  auipc        s9, 626602
                  ori          t2, a2, -1010
                  auipc        ra, 862947
                  mul          s1, s0, t5
                  mul          gp, s6, a5
                  sra          s8, a4, s7
                  divu         t3, t4, t0
                  and          ra, t5, t4
                  addi         a1, sp, 380
                  sub          s8, s1, s10
                  mulh         s8, t5, s5
                  add          a4, s8, t4
                  srli         a7, s11, 23
                  ori          a3, a5, -1919
                  and          s4, t5, s0
                  sltiu        t1, sp, 969
                  remu         ra, sp, s2
                  sra          t2, gp, s11
                  srli         s2, t6, 10
                  rem          s2, a7, s0
                  sltiu        s1, s2, -302
                  rem          s10, s3, s0
                  xori         sp, s2, 924
                  nop
                  srl          ra, t4, t2
                  sub          s1, t5, t4
                  divu         s2, a4, t1
                  slti         s0, a4, -831
                  rem          sp, gp, t4
                  sub          a3, t1, tp
                  andi         s0, s4, 814
                  xor          a4, t6, s8
                  rem          a7, a7, s7
                  slli         s11, t5, 6
                  slt          a7, t0, a3
                  lui          s9, 220195
                  mulhu        t1, a7, s7
                  slti         ra, s0, 367
                  xori         t2, tp, -876
                  slt          s3, t6, ra
                  slt          t5, tp, s2
                  and          s10, t2, t1
                  sltu         gp, a3, s2
                  lui          t5, 468331
                  sll          s7, s2, a7
                  mulhsu       t1, t2, s7
                  remu         a7, a7, t1
                  sltu         s7, t6, a4
                  sltiu        s3, s9, -1735
                  ori          t5, s6, -442
                  remu         s2, sp, a2
                  sltiu        s10, a5, 557
                  div          tp, t4, t4
                  or           s4, a5, s4
                  sltiu        zero, s1, 969
                  mulh         t6, tp, a2
                  auipc        s7, 284639
                  divu         s8, s9, s0
                  mulhu        s3, a4, a6
                  lui          s9, 870316
                  and          s1, s10, s5
                  sll          t6, a7, sp
                  mul          a3, t0, a0
                  rem          s11, a7, s6
                  sra          t1, ra, a7
                  div          t0, s8, a4
                  and          t4, a0, gp
                  sll          a1, s8, t0
                  sub          s8, s4, zero
                  rem          s5, tp, s5
                  sll          s1, s10, a7
                  srai         zero, s2, 1
                  mulhsu       t6, s9, sp
                  sll          t3, s6, s4
                  andi         t5, s11, -731
                  mulhsu       s0, s7, s7
                  rem          s4, s0, t5
                  sra          t5, a3, s5
                  mulhu        t1, zero, t0
                  sub          a4, ra, a6
                  xor          t1, t1, s2
                  divu         s0, gp, t2
                  mulh         s2, s8, a4
                  rem          tp, a2, s3
                  slli         s9, a5, 21
                  sltu         s4, a3, a1
                  xor          t2, t0, zero
                  or           s10, s1, s0
                  divu         t0, s2, t4
                  xor          s5, a6, t3
                  sll          t0, t3, a2
                  div          a4, s11, sp
                  sub          t5, a1, a4
                  div          t4, s5, t2
                  auipc        a4, 694209
                  and          s4, zero, t0
                  mulhu        gp, s1, a3
                  andi         a4, s6, 902
                  sltu         a2, a4, t4
                  slt          sp, s11, t3
                  auipc        t1, 482609
                  slli         t5, ra, 8
                  mul          t0, s0, s8
                  slli         a3, zero, 11
                  slli         zero, gp, 31
                  and          a7, a2, s1
                  addi         s11, ra, 9
                  remu         t0, tp, a7
                  sltiu        s4, zero, -677
                  lui          s5, 8102
                  srl          s9, s3, t4
                  mulhsu       t6, a1, a3
                  divu         s8, t5, s1
                  sltiu        zero, s3, -1099
                  sltiu        s4, s1, -995
                  srai         sp, s2, 24
                  srl          s0, s0, a6
                  mulhsu       t4, t4, t6
                  and          a7, a7, a2
                  slti         a1, tp, 1519
                  nop
                  divu         s9, a5, a3
                  mulhu        a7, s2, s7
                  srl          t2, a7, s9
                  srai         s11, a3, 5
                  sra          t2, s0, a3
                  auipc        s8, 873141
                  or           s11, t6, a6
                  addi         s11, t6, 163
                  slt          s7, a2, sp
                  slti         s8, s2, 533
                  slt          s3, s9, s3
                  srli         a5, s7, 25
                  andi         tp, s10, 739
                  rem          s8, s7, a6
                  lui          a1, 42624
                  mul          s8, s5, s3
                  lui          t1, 888987
                  sltiu        sp, s2, 481
                  sra          s10, s1, a4
                  lui          tp, 358020
                  xori         s0, gp, 713
                  nop
                  sra          t3, s0, gp
                  slt          s10, sp, s3
                  xor          t0, s5, s11
                  slli         t1, s9, 13
                  sll          t3, s5, a0
                  add          s3, a3, t4
                  slti         s4, gp, 1515
                  lui          a3, 516773
                  xor          t1, sp, t2
                  rem          t6, s6, sp
                  srl          t2, tp, s0
                  andi         sp, a6, 1173
                  addi         a3, t3, 617
                  sll          s11, a2, a0
                  srl          a3, s0, gp
                  div          s4, sp, a6
                  auipc        zero, 743024
                  div          zero, t3, ra
                  mul          t5, a4, a2
                  add          sp, a1, ra
                  srli         s7, s6, 25
                  sll          s2, gp, s8
                  andi         s7, a4, -1036
                  mul          s0, s0, sp
                  slli         s11, s9, 30
                  addi         t5, t2, 1917
                  or           s4, s8, t0
                  and          s3, gp, tp
                  ori          t6, s3, -563
                  or           a3, a3, a7
                  add          s2, a2, t0
                  sll          t1, t0, a6
                  div          s2, zero, s7
                  xori         t3, s4, -748
                  srl          t6, t3, s9
                  slt          s5, s1, a5
                  srai         a3, s4, 9
                  add          gp, t4, a0
                  slt          s10, sp, s5
                  remu         s8, s11, t0
                  mulhu        a5, s9, s9
                  srli         s9, s3, 1
                  slt          gp, a5, a6
                  xor          tp, s1, s5
                  addi         a7, s10, -1283
                  mul          a2, sp, a0
                  add          s11, tp, s8
                  add          t2, sp, a2
                  sll          ra, s0, t3
                  mul          s10, t1, s11
                  nop
                  mulhsu       s9, sp, gp
                  remu         s5, zero, s11
                  lui          t2, 886471
                  srai         a7, s4, 0
                  sra          s9, gp, t1
                  divu         s2, gp, a0
                  sltiu        s8, s6, -1352
                  divu         a4, s8, s4
                  lui          t2, 84731
                  xor          ra, a4, s3
                  slt          tp, s7, s11
                  rem          s7, s7, a2
                  sub          a1, t1, zero
                  slt          a1, a4, a4
                  sltiu        s4, s6, 468
                  slt          t1, a5, zero
                  add          gp, s3, ra
                  sltu         a2, gp, s6
                  mulh         a4, s1, gp
                  divu         a3, a1, t6
                  mulhu        a3, zero, a2
                  slti         s2, s4, 1517
                  srli         a4, s5, 7
                  sltu         s4, t3, gp
                  add          t5, s5, a1
                  divu         t5, s10, ra
                  srli         t1, s1, 1
                  sra          zero, s6, a1
                  sltiu        t3, t4, 889
                  xori         a4, gp, -1163
                  mul          a7, s4, ra
                  slt          t4, a0, t5
                  sltiu        s7, a5, -1572
                  ori          s9, a0, 310
                  xori         s4, a7, -873
                  slli         a2, t0, 7
                  andi         a3, s10, 990
                  or           a2, tp, s9
                  mul          s2, sp, a7
                  slt          t6, a4, s2
                  slt          tp, a6, t6
                  sll          sp, s10, a1
                  and          a4, s6, s8
                  rem          s1, t0, a4
                  auipc        s7, 278725
                  srai         ra, t0, 26
                  sltiu        a2, t5, -1570
                  sltu         zero, t6, t2
                  srl          a5, a0, s1
                  addi         t0, a1, 1629
                  div          gp, a5, a0
                  slti         a2, a4, 1643
                  andi         s4, t0, -200
                  nop
                  or           t1, s11, s2
                  rem          s4, tp, tp
                  slli         t3, s1, 11
                  div          s0, s0, t4
                  sltiu        tp, s10, 1083
                  sltu         a5, a0, s6
                  ori          a2, t6, 768
                  div          t5, s3, s7
                  srl          a2, s3, s11
                  srl          t3, sp, s2
                  div          s9, t2, t5
                  ori          a7, s4, -996
                  add          a5, s8, s11
                  slt          zero, s8, t3
                  remu         s10, s3, s6
                  mulh         sp, s1, s5
                  divu         t2, t1, t3
                  ori          a4, t1, 1185
                  or           a7, s6, s5
                  sub          t4, s1, a3
                  xor          a3, s0, a2
                  sll          a7, gp, a5
                  sltu         a3, s5, s7
                  slti         a3, a2, 1764
                  auipc        a4, 559215
                  srli         s5, s11, 11
                  ori          s0, s1, -1498
                  sltu         a3, tp, a4
                  and          s10, s3, s2
                  srai         a4, t6, 20
                  sltu         s5, s8, t3
                  mulh         s10, s4, a2
                  add          a1, s3, s3
                  rem          s10, s9, a2
                  add          a2, s8, t2
                  andi         zero, s10, -4
                  slli         s11, gp, 24
                  mulhu        t4, tp, a4
                  add          t3, s11, a0
                  rem          s8, a3, s10
                  rem          s10, t1, a4
                  slt          a1, t1, s0
                  divu         s7, s4, ra
                  andi         s4, a0, -329
                  sub          s9, a5, t2
                  mulhsu       t5, a5, a4
                  srli         s7, t5, 21
                  slt          s8, s2, t3
                  sltiu        s8, sp, -895
                  lui          a5, 1040216
                  mulhu        s11, t6, a3
                  add          t5, t5, s4
                  slti         t5, s9, -622
                  div          t2, s10, t6
                  slt          s4, a7, s1
                  xori         s3, s2, -510
                  xori         a1, s9, -928
                  xor          a4, s4, a7
                  ori          t2, tp, -1798
                  ori          zero, s6, 653
                  srl          t3, a0, sp
                  remu         t6, s3, a1
                  add          t3, s8, a1
                  lui          s2, 469745
                  srl          s2, gp, t2
                  lui          tp, 390430
                  rem          t4, s6, s7
                  rem          s1, t2, s10
                  auipc        a5, 978401
                  nop
                  nop
                  slli         sp, a2, 7
                  slti         t6, a5, -1343
                  auipc        s5, 1015663
                  remu         gp, t3, gp
                  nop
                  div          s11, s4, s3
                  mul          t3, t1, s7
                  xori         t2, a5, -154
                  remu         s10, zero, a1
                  xori         t5, t0, 773
                  srli         a1, s11, 24
                  mulhu        gp, s8, t1
                  andi         s10, s1, 707
                  nop
                  srai         s1, a4, 7
                  rem          s10, s1, s6
                  srli         s4, s3, 23
                  lui          zero, 237712
                  xor          gp, a5, t5
                  sra          zero, sp, a4
                  div          a1, sp, s6
                  remu         s0, s4, gp
                  sll          t0, t1, t4
                  remu         s2, s9, a7
                  rem          gp, a2, s7
                  ori          a5, zero, 719
                  srli         s9, t5, 15
                  srli         a4, t1, 4
                  or           s11, a6, s3
                  rem          s9, s4, ra
                  ori          s1, gp, -729
                  divu         s2, s6, zero
                  auipc        a7, 387212
                  sub          s10, s11, a5
                  or           ra, a4, a3
                  andi         t5, tp, 538
                  xor          s7, s4, ra
                  srl          s7, a3, s8
                  rem          s4, s9, a0
                  and          s5, s1, a6
                  xori         a7, a4, 1185
                  sltiu        zero, s3, 2023
                  nop
                  lui          t6, 728915
                  mulhu        s2, s9, s9
                  mul          s4, a5, a6
                  mulh         t3, a3, sp
                  mulhsu       sp, zero, a2
                  or           s1, s5, s5
                  sll          tp, s11, sp
                  divu         a2, t5, ra
                  divu         t0, s8, s8
                  srl          s8, a3, s11
                  sll          zero, s9, gp
                  add          t6, s9, s9
                  addi         t3, sp, 189
                  mulh         a1, s7, s6
                  srl          s0, t1, s5
                  sra          t4, s8, t6
                  xori         a5, t6, -1815
                  slti         s5, s1, -645
                  sltu         t3, a4, s10
                  mulhsu       gp, ra, a1
                  slti         a2, a6, 2028
                  srai         s0, a4, 18
                  remu         ra, t0, zero
                  mul          a4, zero, zero
                  sra          zero, a2, t2
                  remu         s2, t4, s7
                  and          t1, t2, s6
                  auipc        s9, 306075
                  divu         t0, t3, s5
                  slt          ra, t4, ra
                  add          a7, t2, s8
                  xori         a3, s5, -947
                  sltiu        s11, gp, -838
                  div          s2, tp, t2
                  srl          a4, s10, s9
                  sra          s0, ra, t0
                  addi         t6, tp, -1912
                  srl          t1, t3, t4
                  slti         t2, t0, -44
                  rem          s5, tp, a3
                  rem          s10, t0, a1
                  or           gp, s5, t5
                  andi         s8, a7, -1230
                  sra          sp, s3, sp
                  add          s1, ra, gp
                  auipc        tp, 223620
                  auipc        s2, 448702
                  sll          s1, t5, a1
                  mulhsu       a1, gp, a4
                  div          s3, sp, s6
                  auipc        a1, 491100
                  srl          zero, t6, s5
                  lui          tp, 292347
                  div          a7, gp, a1
                  divu         s11, a0, t1
                  remu         sp, a2, s6
                  xori         a4, t3, 1122
                  lui          s3, 941669
                  sltiu        t2, s3, -1827
                  divu         t2, s7, a3
                  nop
                  sll          gp, s5, s4
                  nop
                  slti         s3, s6, -574
                  rem          s4, s11, a1
                  andi         a7, gp, -1892
                  andi         s10, s7, -1813
                  sub          s8, s5, s9
                  andi         t2, s5, 1695
                  div          t6, s11, a6
                  sra          t6, s7, s2
                  lui          s2, 548149
                  mul          s7, t4, a7
                  lui          ra, 115557
                  lui          s4, 92976
                  or           s4, t2, s4
                  add          t0, t2, s1
                  nop
                  remu         s10, a5, s9
                  xori         a4, zero, 729
                  lui          s4, 561054
                  mulhsu       t5, s6, s10
                  add          s11, s3, t2
                  sltu         s9, a2, s3
                  remu         s10, ra, a6
                  slli         ra, sp, 25
                  add          tp, a6, t0
                  srl          a5, s1, s5
                  addi         sp, a4, 1967
                  add          s9, a4, s1
                  sltu         s8, s10, s8
                  srli         s1, t3, 5
                  mulhsu       s2, t3, a0
                  xori         t0, t6, 140
                  add          s2, t6, a6
                  mul          t6, s7, a5
                  add          t0, a0, s5
                  sll          zero, t0, s4
                  add          s8, s6, s6
                  xor          a2, s5, s3
                  or           t4, gp, s6
                  xor          s9, a1, tp
                  sltu         a5, s5, s5
                  xori         sp, t1, 1356
                  mulhsu       s3, a6, s6
                  andi         ra, s2, 1027
                  xor          t2, a6, zero
                  mulhsu       a5, gp, s2
                  mulhu        a2, a2, s0
                  sltu         s0, sp, gp
                  xori         a1, s10, 835
                  addi         s7, s10, -180
                  mulhsu       s5, s7, s7
                  mulhu        sp, t4, s1
                  slli         s5, s3, 13
                  slti         zero, t0, -1430
                  mulh         t2, s7, a2
                  sra          s7, ra, a7
                  sll          a7, t4, s11
                  nop
                  nop
                  sra          s10, a2, t1
                  auipc        s8, 593630
                  addi         s5, a2, 557
                  rem          a1, t4, s9
                  sltu         zero, a3, t0
                  slli         tp, t3, 8
                  slli         s10, s5, 21
                  and          t4, a6, s7
                  xori         t4, a3, -1178
                  sltu         sp, a0, a2
                  sltu         sp, t1, t4
                  mulhsu       a7, a2, s2
                  and          a7, a6, t6
                  mulhsu       gp, t5, a5
                  auipc        t5, 928147
                  xori         t2, s7, -981
                  lui          s8, 183437
                  slli         s7, s8, 28
                  xori         gp, t4, -3
                  xor          s3, t1, a2
                  slt          t5, s3, s1
                  sub          ra, s2, s8
                  remu         tp, a0, gp
                  xor          t4, t4, sp
                  nop
                  lui          s2, 439857
                  nop
                  and          a1, s5, a2
                  sltu         s8, s5, t5
                  mulhu        ra, a0, a6
                  andi         a1, a6, 1330
                  or           t2, s8, s10
                  or           a5, t6, sp
                  nop
                  srai         s0, a2, 26
                  lui          s7, 877934
                  srai         s10, t4, 22
                  lui          s0, 436157
                  slti         s1, t2, -1826
                  slti         t1, t0, 1252
                  div          ra, s3, s8
                  xor          s10, a4, s4
                  srai         s9, t4, 29
                  or           s3, tp, s0
                  sll          t1, a1, t6
                  srai         s5, a1, 2
                  sltu         a7, gp, s1
                  sra          a4, tp, t0
                  srli         t1, t3, 1
                  sll          s10, a1, a1
                  srli         ra, a2, 0
                  divu         t1, a2, t5
                  sll          a1, a1, s7
                  mulhsu       s1, s10, a7
                  sltiu        t3, sp, 544
                  mulhsu       t4, s2, s11
                  slt          a1, s5, t1
                  andi         s2, t4, 1820
                  andi         s8, s4, 1313
                  addi         s1, t2, 1831
                  remu         a3, a7, s7
                  add          s1, t0, a6
                  rem          s4, a6, a3
                  rem          s11, t0, a4
                  div          t1, ra, s0
                  mulhsu       s2, s6, s4
                  mulh         s11, a6, zero
                  addi         s7, s0, -1803
                  slti         a7, zero, -1176
                  auipc        ra, 748656
                  xori         s9, a1, 539
                  sltiu        s11, ra, 1851
                  or           a3, a3, tp
                  and          t6, t5, a7
                  slti         a5, a6, -1611
                  srai         a7, gp, 19
                  addi         a3, a5, -1149
                  mulh         s10, a6, t0
                  sltu         a7, s9, s8
                  div          t1, s9, zero
                  sra          s9, s11, a5
                  andi         a2, t0, -1328
                  nop
                  sltiu        s7, t6, -712
                  slt          t6, t2, ra
                  divu         t0, t3, a7
                  ori          a1, s8, -840
                  or           s0, t6, t0
                  sra          ra, s8, s10
                  mulh         t2, t1, tp
                  slti         a5, a3, 1352
                  add          t6, t4, s6
                  andi         t2, t1, 914
                  div          t2, s6, s6
                  lui          t0, 106467
                  nop
                  mul          s10, s11, a1
                  lui          t6, 808117
                  mulh         ra, s6, t1
                  mul          sp, s0, s1
                  srli         s7, t3, 19
                  add          gp, gp, s0
                  mul          t5, s4, s2
                  nop
                  remu         gp, s0, ra
                  lui          t0, 373346
                  slt          s0, t4, gp
                  rem          t3, s9, t2
                  auipc        s2, 447663
                  mulh         ra, s1, a1
                  lui          s2, 623020
                  ori          s4, a1, -1672
                  sll          s8, t3, s11
                  sltu         gp, t0, s4
                  remu         a7, s11, a1
                  mulhu        a4, s10, sp
                  or           a1, s11, zero
                  sltiu        zero, s2, 452
                  slli         t5, t6, 21
                  and          t4, a0, s4
                  slt          s11, t4, s3
                  srai         ra, a2, 13
                  sub          a7, gp, sp
                  mulhu        gp, t5, s0
                  sll          a1, s8, a4
                  mulhsu       t4, s6, a6
                  andi         t5, a7, -1307
                  slti         t5, s5, -1911
                  slt          s7, t0, s8
                  xori         sp, s11, -1358
                  mulh         t3, a2, t5
                  slti         s1, gp, 1072
                  srai         s8, a5, 9
                  addi         s8, s3, 1227
                  rem          a4, ra, gp
                  div          s3, t3, s4
                  add          s7, zero, a4
                  slt          s2, a4, s11
                  sub          a4, a2, t1
                  or           gp, s5, t1
                  addi         a4, s8, 518
                  auipc        s7, 149844
                  div          a3, a3, sp
                  sltu         s4, s4, a7
                  slt          s9, ra, t5
                  mul          s1, a6, s2
                  sltu         s4, s4, a0
                  rem          t5, a0, s2
                  or           sp, t5, a6
                  mulhu        gp, s5, s0
                  add          a1, s10, s2
                  mulhsu       s2, zero, a1
                  addi         s1, t0, 1602
                  mulhsu       a4, t6, s10
                  mul          s8, s11, gp
                  xori         a2, a7, 981
                  sltiu        t3, t1, 1291
                  div          a7, s3, sp
                  addi         t4, gp, -617
                  sub          s0, a7, s3
                  sra          s4, s3, s2
                  mulhsu       ra, s1, s5
                  sltiu        gp, a6, 218
                  mulh         s7, zero, t6
                  addi         zero, a6, -1437
                  andi         ra, a7, 13
                  srl          tp, a2, s4
                  mulhsu       t0, s6, t4
                  srai         a4, a3, 21
                  srli         t2, s1, 14
                  slli         s1, s10, 14
                  auipc        t4, 360505
                  sltiu        s10, s10, 1980
                  srl          s10, t1, gp
                  xor          t4, s7, s5
                  sltiu        s4, gp, 1678
                  lui          s11, 726394
                  sra          t1, a3, ra
                  ori          t3, t6, 1244
                  sll          s0, t4, t0
                  slti         zero, t5, 1317
                  slli         s8, t3, 6
                  nop
                  div          s1, s1, t5
                  auipc        a3, 208390
                  mul          t1, s4, s8
                  sltu         a3, a6, s0
                  remu         s4, a6, a1
                  div          a3, ra, t5
                  div          a3, a6, a2
                  slti         s7, s11, 1177
                  nop
                  ori          a4, s0, -1174
                  xori         a5, a3, -337
                  mulhu        zero, a2, a7
                  rem          s4, t4, s0
                  remu         zero, s10, a6
                  srli         t5, s11, 20
                  sub          a2, t0, a7
                  sra          a4, s5, t0
                  lui          s2, 129360
                  divu         t1, s1, a7
                  mul          a3, s1, tp
                  divu         s8, t2, a3
                  sltu         s3, s7, a7
                  xor          s7, s3, s9
                  xori         sp, s8, -495
                  rem          a7, a2, t2
                  srli         a3, sp, 4
                  and          s4, t3, s4
                  sub          s10, ra, s3
                  div          s1, s10, sp
                  xor          s2, t0, s5
                  sltu         zero, s1, a6
                  divu         s7, sp, zero
                  xori         t2, a4, -1357
                  slti         s2, a3, -625
                  rem          s11, s3, tp
                  ori          a5, s1, 1969
                  nop
                  or           sp, a4, t6
                  nop
                  mulhsu       a3, s4, s6
                  slti         s9, ra, -1013
                  xor          s5, t4, t3
                  slti         a2, a5, -1950
                  srli         ra, a6, 0
                  mul          s1, s8, a3
                  srl          t5, s8, t5
                  addi         a7, s6, 448
                  slt          t1, s7, s3
                  mulh         s8, s0, t2
                  sll          a3, a0, s11
                  mulhsu       tp, gp, gp
                  ori          t5, s5, 448
                  divu         t1, s10, zero
                  remu         a4, s9, a5
                  slt          zero, t5, s2
                  sltiu        s2, t1, 1181
                  sub          s0, a6, a5
                  lui          s2, 200714
                  mul          gp, gp, zero
                  mulhu        s5, t6, a3
                  slt          s5, t5, s2
                  sltu         tp, zero, a4
                  div          a5, s4, a2
                  divu         tp, s1, s0
                  nop
                  nop
                  or           s3, s0, s6
                  xor          ra, t6, t2
                  slt          s8, t3, a1
                  xori         gp, a0, 321
                  auipc        s4, 995053
                  slt          zero, a6, a7
                  srl          s7, t3, a6
                  slli         s7, a2, 22
                  sll          sp, a0, s9
                  div          t1, t0, t6
                  mulhsu       s8, s2, gp
                  nop
                  auipc        zero, 155850
                  srai         ra, sp, 30
                  slli         a2, s7, 3
                  lui          zero, 359685
                  andi         a3, a6, 611
                  or           a7, sp, zero
                  srai         t5, s1, 6
                  addi         t0, a3, -853
                  andi         t4, ra, -688
                  srli         s2, s3, 11
                  slti         s9, t5, -355
                  and          t2, s9, a5
                  mulhsu       sp, s11, a3
                  srai         s4, a5, 18
                  sll          s4, a0, a5
                  and          t1, tp, s1
                  remu         t2, a5, t6
                  mulhsu       s8, t5, t6
                  srli         a7, s1, 1
                  slti         t3, a0, 275
                  xor          t4, s0, sp
                  lui          s7, 992178
                  div          s10, a7, ra
                  mulhu        tp, t1, a7
                  divu         t1, a7, s6
                  srai         s1, ra, 19
                  and          t5, s8, t1
                  andi         s1, a0, -1172
                  slti         s1, a7, 290
                  sra          s10, t5, s6
                  sll          s3, sp, t6
                  and          s4, t1, s8
                  mulhsu       a7, t0, gp
                  sub          s3, a5, a5
                  mul          ra, gp, zero
                  sltiu        s5, s7, 835
                  nop
                  sra          a4, s11, a6
                  srl          s8, t1, a6
                  xori         s7, s9, -1085
                  mul          t6, zero, s8
                  div          s4, a1, s4
                  add          zero, a2, t0
                  or           a1, s10, s5
                  srai         t0, t4, 15
                  srli         t3, s9, 23
                  add          s8, a2, s0
                  mulhsu       s2, t1, a5
                  slt          s3, t3, s10
                  and          s9, sp, s9
                  slti         s11, a2, -1584
                  rem          s10, t6, s8
                  sra          a2, t6, t2
                  divu         a5, s10, t5
                  mul          t0, a7, sp
                  sltiu        s11, t6, 1149
                  srli         s8, s9, 30
                  div          t2, a6, a3
                  slt          t0, t0, s8
                  andi         s2, gp, 700
                  auipc        a3, 579749
                  auipc        zero, 588362
                  lui          a2, 535641
                  or           s4, gp, s2
                  add          a1, a2, a3
                  andi         s4, t2, -1773
                  srai         s10, a7, 23
                  andi         s9, s11, 616
                  add          s11, t4, s2
                  srai         a5, sp, 7
                  or           s9, t6, a7
                  or           zero, s7, s4
                  mulhu        t4, t4, s4
                  slti         t3, a5, 1640
                  slli         s10, ra, 21
                  nop
                  xori         t1, t4, -932
                  rem          s10, a7, t2
                  mulhsu       s10, t0, s7
                  andi         a1, a5, -1469
                  and          s11, gp, s10
                  remu         t4, t3, a2
                  sltu         a3, s6, s11
                  sltiu        a7, a6, 320
                  ori          ra, t2, -1718
                  sra          s8, s6, a4
                  slli         t0, a3, 16
                  and          t5, t0, s7
                  div          t3, t1, s5
                  srli         sp, t1, 22
                  or           ra, s0, a7
                  sub          s1, t3, s0
                  xori         t4, s5, -391
                  add          t5, a5, s10
                  lui          gp, 800928
                  sub          s3, a1, a7
                  ori          zero, a7, -1234
                  andi         zero, t5, -1030
                  lui          s0, 787244
                  addi         t4, t1, -431
                  mulhu        s2, t1, t6
                  add          t5, s9, s5
                  add          t1, s1, s1
                  srli         a1, s4, 20
                  xor          t5, t2, t0
                  nop
                  and          t5, s4, s5
                  mulh         t3, s7, a2
                  addi         s4, a7, 1910
                  srai         a1, a2, 10
                  lui          t2, 357845
                  mulh         s9, a0, a4
                  mulhu        s2, a4, a4
                  auipc        t6, 89988
                  add          t3, ra, t2
                  srli         gp, ra, 7
                  srai         s1, s8, 12
                  slt          s9, s5, s2
                  and          s10, a6, tp
                  mulhu        t5, t4, t2
                  lui          t6, 697777
                  srai         t3, a3, 0
                  lui          sp, 882011
                  mulhsu       t1, tp, zero
                  sra          s10, s10, s3
                  srli         s5, s9, 13
                  addi         a3, a7, -1729
                  addi         zero, t0, 1178
                  mulh         s7, tp, s2
                  srl          s4, s8, gp
                  slli         t2, t0, 25
                  srai         a1, a5, 31
                  or           s0, gp, a3
                  mulhsu       t5, t6, s5
                  slt          sp, s2, gp
                  sltu         s5, s9, s10
                  auipc        t0, 599820
                  add          a1, t4, a6
                  slt          s3, t3, tp
                  mulhsu       t1, t2, zero
                  nop
                  sltu         s7, s8, a1
                  rem          a1, zero, a7
                  sltu         a2, a2, tp
                  xor          a1, a0, t0
                  mulhsu       tp, s7, a2
                  xori         a4, gp, -1486
                  mul          s9, s4, a4
                  sltiu        s9, a7, -1065
                  mulhu        s5, t0, s9
                  mulhsu       ra, t0, s7
                  mul          s11, s6, s11
                  nop
                  sra          s11, a3, t5
                  lui          s9, 176382
                  div          s4, gp, a1
                  lui          a7, 466687
                  addi         s1, s3, -1041
                  srai         sp, a7, 5
                  auipc        t5, 281122
                  sltu         s8, s11, s10
                  auipc        s1, 52742
                  mulh         s9, a3, t3
                  or           tp, s7, s4
                  lui          a4, 453539
                  xor          a4, t6, s11
                  srl          zero, s3, t2
                  mulhu        s0, a0, s5
                  sll          s10, a2, t0
                  slti         s2, t1, -55
                  xor          sp, t2, s9
                  sub          s7, a2, a7
                  slt          s3, a7, zero
                  srli         zero, tp, 14
                  mulhsu       s8, t4, sp
                  andi         s0, a4, 300
                  auipc        t3, 191489
                  divu         s7, s5, s6
                  ori          a4, s0, -1986
                  mul          s8, s8, a3
                  sltiu        s3, s6, 1623
                  lui          ra, 512648
                  xori         s5, zero, 1926
                  nop
                  xori         a5, s4, 1124
                  xori         tp, t5, 1847
                  auipc        t5, 2225
                  rem          s4, zero, t2
                  andi         s3, t5, 497
                  sll          a7, s11, t6
                  sltiu        t1, a0, -1869
                  andi         t5, s9, 1298
                  div          s4, t4, a4
                  ori          t5, a6, -1228
                  sub          gp, s1, s5
                  srl          s1, s4, a2
                  div          tp, t2, s3
                  srai         s1, s3, 24
                  mul          a7, t2, t5
                  slti         s0, t4, -1508
                  slti         a2, a5, -1867
                  srl          s0, s9, s11
                  add          a1, t2, a6
                  remu         a3, t4, ra
                  mul          tp, t0, s9
                  sll          t6, s7, tp
                  srl          s8, s11, s11
                  xor          a2, t6, a7
                  addi         zero, a0, 1454
                  sra          t4, a6, s4
                  sltu         a4, t3, t4
                  mulhu        a2, t5, a1
                  remu         a1, zero, t4
                  sltu         a5, s6, s1
                  add          s4, t6, s2
                  mulhu        s9, a7, s5
                  sltiu        s5, s8, 2019
                  slt          s0, t5, s3
                  srl          s7, a4, a5
                  srl          a4, ra, t5
                  lui          sp, 401983
                  xori         s2, t2, 1424
                  andi         s8, ra, 453
                  slli         s2, s10, 7
                  srl          s2, s10, s8
                  ori          t0, s9, 1667
                  mulh         s8, t2, a7
                  slti         s9, a7, -1435
                  ori          s4, sp, 497
                  slt          s7, gp, sp
                  mulh         a5, s2, s11
                  rem          a3, s7, a5
                  sra          s4, t6, a5
                  sra          t6, s4, s3
                  ori          s8, s5, 599
                  mul          s4, s11, zero
                  ori          tp, a7, 279
                  auipc        s0, 605840
                  rem          s10, tp, s11
                  slli         a7, t4, 8
                  sltiu        zero, s10, 217
                  nop
                  slti         s8, t4, 1046
                  auipc        ra, 26518
                  xor          s10, s1, a5
                  mulhsu       s8, s4, s10
                  addi         zero, s10, -1842
                  lui          s0, 939923
                  srl          a7, t2, gp
                  auipc        zero, 768266
                  slli         s7, sp, 16
                  auipc        s5, 463505
                  div          a7, t6, zero
                  nop
                  sll          t4, a0, s10
                  sll          s5, s3, s5
                  nop
                  ori          s10, t1, -881
                  addi         s10, s4, 1157
                  ori          a4, s4, 1002
                  div          a7, s8, s8
                  rem          sp, s7, zero
                  slt          a7, s5, s1
                  mulhsu       s5, t3, t3
                  srli         zero, a4, 7
                  slt          t1, a4, s9
                  divu         t3, s7, a6
                  addi         a4, tp, 1501
                  addi         zero, s1, -428
                  rem          s4, s10, a5
                  mulhu        s8, a5, s6
                  sll          sp, a7, s1
                  sltu         s10, ra, a3
                  remu         sp, sp, t4
                  rem          t1, s3, s9
                  sll          t1, ra, ra
                  sltiu        a5, s6, -1460
                  slli         s7, t0, 16
                  rem          sp, tp, t2
                  lui          s2, 518985
                  ori          s7, s10, 1215
                  xori         a5, s10, -373
                  mulh         zero, s10, s2
                  rem          s3, gp, a0
                  srl          t1, s3, a6
                  andi         a7, s5, -653
                  srl          a4, t5, a2
                  or           ra, t3, ra
                  andi         a3, t6, -688
                  ori          s2, sp, -667
                  addi         sp, t4, 550
                  div          a7, s0, s3
                  sltiu        a7, s6, -1203
                  slli         zero, a3, 5
                  or           ra, a7, s1
                  divu         s3, s0, s4
                  divu         s0, s4, s8
                  addi         s2, s8, -792
                  slti         t1, t5, -398
                  nop
                  sltu         zero, a2, tp
                  remu         s7, s3, s6
                  sltu         a7, s3, a6
                  divu         a1, t0, s6
                  slli         s10, s0, 2
                  slt          s1, s5, a4
                  add          a3, s5, s5
                  or           ra, s4, sp
                  divu         ra, s9, ra
                  divu         s8, ra, ra
                  div          s9, t5, t4
                  mulhu        a7, s0, gp
                  srl          t6, ra, s0
                  sub          s4, tp, s8
                  add          t3, s6, gp
                  add          t4, a6, a1
                  sltiu        s9, zero, -1020
                  mulhu        s11, s8, s6
                  rem          a3, s1, s1
                  and          t6, s2, s5
                  nop
                  srai         s9, a2, 23
                  andi         s1, tp, -1578
                  lui          a1, 212104
                  rem          s8, tp, sp
                  remu         t1, a0, t5
                  sltu         t2, t4, t6
                  sub          s0, a7, gp
                  sra          t3, a2, s10
                  srli         sp, s6, 27
                  sltiu        a5, s10, -1418
                  nop
                  auipc        t2, 917707
                  and          s7, s9, a4
                  and          a7, s0, s10
                  ori          s2, a3, 195
                  addi         ra, s1, 1185
                  div          gp, a6, t1
                  sltiu        a4, s11, -1808
                  sltiu        gp, s3, 677
                  nop
                  and          t1, a7, s5
                  sub          s3, s4, t2
                  mul          s9, t3, t3
                  lui          sp, 568834
                  add          s7, sp, tp
                  or           gp, tp, s9
                  sra          s3, a7, t2
                  lui          a3, 147122
                  divu         t1, t4, s7
                  and          s5, a6, s2
                  divu         ra, gp, t4
                  sll          s0, a5, a0
                  rem          s11, gp, zero
                  or           s8, s5, s0
                  remu         s4, s3, s5
                  mulhu        s4, a0, t5
                  or           s9, gp, s11
                  div          s2, a7, s6
                  mulhsu       zero, t5, ra
                  mulhu        sp, ra, s4
                  slti         a1, sp, -1478
                  nop
                  rem          a4, s2, s7
                  sltiu        t5, s5, -385
                  sltu         a3, s1, a0
                  div          s11, s11, s3
                  divu         a2, zero, a1
                  or           zero, t3, s1
                  addi         s4, s9, 1744
                  addi         a4, s8, -374
                  sra          t0, t5, sp
                  slti         t3, s10, -1014
                  sll          s10, s10, t1
                  sub          ra, s9, s0
                  mulhsu       s3, t0, s11
                  slti         zero, a1, -1981
                  mulh         ra, tp, s8
                  divu         s10, t6, s8
                  mul          t5, s7, s2
                  sltiu        s4, s7, -1634
                  sltu         s4, s0, t5
                  slti         s10, s0, -1021
                  addi         t0, s4, 884
                  xori         ra, s9, 305
                  div          s9, t5, tp
                  mulhsu       tp, s0, a3
                  slti         t4, a7, 1878
                  sub          s5, s10, a0
                  mul          t6, t1, s0
                  ori          t3, a7, 235
                  slt          s5, s8, s5
                  mul          s7, a1, a7
                  mulhsu       s0, t4, s1
                  addi         t5, a3, -956
                  or           zero, a0, t5
                  add          sp, s7, a7
                  slt          s1, a0, t0
                  sll          t5, s10, a6
                  srai         t5, s3, 20
                  add          t5, t4, t1
                  add          s11, t6, s7
                  srai         a4, tp, 25
                  add          s3, t6, t1
                  divu         s9, s9, zero
                  mul          tp, s5, a1
                  srai         t0, a5, 15
                  rem          zero, gp, t3
                  mul          s0, s4, a6
                  rem          t0, a2, s10
                  div          s9, tp, t5
                  slti         tp, a4, 1638
                  nop
                  slt          s3, s5, s9
                  auipc        a7, 937227
                  slt          s10, t4, s2
                  sub          t2, s7, s0
                  mulhu        t4, s10, s9
                  rem          s8, s0, a3
                  and          t4, sp, s3
                  sltiu        s5, sp, 1264
                  srli         a2, s8, 15
                  andi         s8, a1, 1395
                  slli         s2, s2, 11
                  srli         t0, s2, 22
                  mul          zero, s7, gp
                  slli         s0, s2, 10
                  sub          s8, a0, a0
                  sub          s0, s7, t5
                  xor          ra, a0, gp
                  sra          t1, ra, s9
                  slti         a4, a3, 372
                  addi         t6, a0, -431
                  lui          s10, 252466
                  and          s8, s0, a1
                  sll          a3, s5, a6
                  srli         zero, a6, 0
                  mul          t4, a0, a4
                  srl          sp, s3, zero
                  slli         s8, a2, 30
                  add          s2, t1, a2
                  rem          s1, t6, t6
                  srai         s7, a4, 13
                  sltiu        t1, t0, 1985
                  mul          s8, a3, t2
                  sltiu        s1, s7, -297
                  srl          a3, a4, s5
                  mulh         s10, t3, s8
                  auipc        gp, 60531
                  rem          s8, t4, s6
                  slt          t1, t0, t4
                  remu         t0, ra, s6
                  sltu         a7, a6, a3
                  slt          s3, s10, s5
                  srai         a2, t5, 22
                  sub          a3, s9, s11
                  ori          t6, s11, -338
                  srl          s2, t2, s9
                  sub          a3, t0, a5
                  srai         s1, s4, 27
                  add          sp, a0, a1
                  andi         s8, t5, 885
                  slt          s4, t5, zero
                  mulh         sp, s1, a3
                  sltiu        t4, t1, -1227
                  srli         t3, s8, 26
                  sltu         s1, s2, zero
                  mulh         s4, s1, s3
                  xor          s5, a1, t6
                  mulh         s5, s1, t0
                  lui          ra, 283083
                  sra          t6, a2, a6
                  auipc        ra, 505765
                  sll          s9, a7, t2
                  or           t5, a4, s0
                  mulhsu       s9, a0, t2
                  add          t3, a2, zero
                  mulh         s7, t2, t3
                  nop
                  nop
                  lui          a4, 577036
                  addi         s4, s8, 1787
                  srai         s0, zero, 29
                  mul          t3, t5, t0
                  add          sp, a4, a0
                  srai         s10, s10, 23
                  auipc        s7, 888050
                  andi         s0, zero, 121
                  sltu         s9, s4, a2
                  srai         s8, s4, 12
                  sub          t4, t1, s2
                  mulhu        s8, zero, t4
                  sltu         t1, a1, a7
                  auipc        s4, 377568
                  sub          sp, a1, gp
                  srai         a4, s10, 31
                  sra          s7, t6, sp
                  addi         s11, s4, -22
                  xor          a1, s9, s2
                  srl          a1, s11, tp
                  auipc        s11, 32201
                  mulhu        s11, s4, a2
                  sra          s0, s0, s7
                  slti         t6, t1, -1736
                  srl          a5, ra, t6
                  xor          zero, t1, s10
                  or           s8, a0, s11
                  slt          t6, t3, ra
                  slt          sp, t5, s4
                  addi         s5, s8, -869
                  nop
                  sra          a4, s6, s6
                  xor          s8, a1, zero
                  mulhsu       s8, a7, s3
                  nop
                  addi         s1, t0, 1472
                  remu         a4, gp, s6
                  slli         s3, s6, 10
                  or           t2, s7, s6
                  mulhsu       a7, t5, a6
                  xori         sp, s11, 173
                  div          sp, t4, zero
                  div          t5, t1, s1
                  div          gp, t2, s11
                  ori          s3, s10, -1572
                  slti         t1, s2, -568
                  or           t3, s2, s3
                  xor          a7, a2, t1
                  andi         a4, t6, -791
                  andi         s7, s2, -559
                  add          a5, tp, tp
                  lui          t5, 195818
                  sltiu        t3, gp, 2024
                  nop
                  slt          ra, a3, s5
                  sra          zero, a5, s1
                  auipc        a1, 717198
                  sll          ra, t6, t2
                  mulhsu       a4, gp, zero
                  mul          tp, s7, t3
                  mulhu        s3, s5, tp
                  nop
                  srl          a2, ra, sp
                  srli         s5, t0, 17
                  addi         s3, a1, -760
                  mulhu        s11, a0, zero
                  auipc        s11, 577791
                  mulhsu       tp, s3, s7
                  remu         s3, t1, tp
                  srai         s0, s0, 6
                  divu         s10, s8, s8
                  slt          s0, s7, s3
                  and          t6, s5, sp
                  xor          tp, t2, t0
                  ori          t6, a0, 235
                  xor          a4, sp, t3
                  lui          a5, 234862
                  nop
                  mul          a5, s8, s0
                  mulhu        a1, a3, a1
                  srli         t3, s7, 29
                  andi         a3, a2, 2027
                  divu         s0, s7, tp
                  divu         t2, a1, t5
                  addi         t0, a5, -1134
                  sub          t5, s0, t2
                  mulhu        a7, a3, s8
                  mulhu        tp, t1, s9
                  sltiu        s5, s6, -1284
                  div          s3, t4, tp
                  div          s5, t5, a6
                  mul          t1, s8, t6
                  and          s0, t0, s9
                  xor          a4, gp, s9
                  add          a1, a2, s8
                  sltu         a3, a3, t0
                  andi         s2, a4, -713
                  srl          ra, s11, t6
                  andi         s10, s10, 2039
                  auipc        s11, 831096
                  srli         t4, t4, 14
                  sra          sp, a5, t6
                  nop
                  sltu         s11, a4, t2
                  xor          ra, s3, ra
                  slli         ra, s7, 9
                  srli         s4, s5, 22
                  auipc        s3, 46462
                  xor          s5, s2, s11
                  ori          s1, s10, -1214
                  or           sp, a4, s4
                  and          s8, s9, s3
                  sra          ra, s0, s1
                  slli         sp, s6, 20
                  mulh         s3, a3, t1
                  addi         a4, t1, -1885
                  xor          a7, t1, s6
                  mulh         sp, a6, s2
                  srai         gp, a2, 3
                  mulhsu       s5, ra, s7
                  xor          s0, zero, zero
                  mulhu        tp, s5, tp
                  srl          t3, t5, s10
                  slli         s10, t6, 12
                  sra          s9, s6, a6
                  xor          s1, t2, s0
                  srl          s7, t2, s1
                  or           a1, s10, a4
                  sltiu        s4, a1, 1
                  div          s7, gp, t2
                  slt          a3, a7, tp
                  slti         s0, s3, -679
                  div          s0, s2, tp
                  slt          t5, s6, a6
                  sll          t6, a7, a0
                  rem          s4, s7, a3
                  slt          s3, s2, s8
                  addi         t0, t2, -567
                  sll          tp, gp, s0
                  rem          s2, t4, a7
                  srl          zero, t6, zero
                  slt          s10, a0, s6
                  sub          s11, a2, t6
                  add          s1, s10, s0
                  srai         s10, a0, 15
                  xori         a3, s1, -349
                  div          a7, t5, s0
                  mul          a5, s8, a2
                  or           t4, s6, s6
                  mul          t6, a1, t3
                  slti         t1, s10, 196
                  srai         s0, s11, 17
                  xor          gp, tp, a3
                  add          a2, a5, s7
                  xor          sp, zero, s3
                  slti         s10, t1, 2011
                  auipc        s4, 48408
                  xor          s2, a2, tp
                  mulhsu       a5, a5, a2
                  sra          s8, a3, s8
                  add          s0, a4, t1
                  sub          ra, t2, a2
                  andi         s0, a6, -1371
                  andi         a5, s6, 783
                  or           s5, gp, s9
                  xori         a5, s3, -114
                  sltiu        a4, zero, -1137
                  lui          t6, 233978
                  sll          sp, t1, a1
                  remu         t4, a3, s2
                  or           ra, sp, zero
                  slli         s11, s6, 9
                  div          a2, a6, tp
                  nop
                  sltiu        t6, t4, -1677
                  srl          sp, tp, t3
                  nop
                  add          s1, a4, a5
                  mulhu        t1, t1, a7
                  srli         t0, s2, 10
                  or           s10, s8, s10
                  rem          t4, s3, s2
                  addi         a5, a1, -725
                  rem          s0, a3, t1
                  sltu         s4, s7, tp
                  sra          s2, gp, t2
                  lui          t1, 837637
                  lui          ra, 468298
                  addi         s5, s3, -1970
                  mulh         t4, a6, a3
                  andi         s5, s7, -1998
                  mulh         zero, s5, a3
                  srl          a7, t3, s2
                  mulhu        s9, sp, a1
                  or           gp, s1, s10
                  lui          a4, 606558
                  mulhu        tp, zero, tp
                  add          ra, a4, a7
                  sltiu        s9, s9, -98
                  mulhu        t0, s9, sp
                  addi         a4, s2, -1545
                  sltu         t0, a0, tp
                  mul          s4, s9, t1
                  lui          t0, 552232
                  ori          s2, s7, 1734
                  mul          gp, a6, gp
                  slli         s10, s4, 3
                  sub          t1, s5, s1
                  nop
                  slti         a5, t2, -807
                  andi         s2, a5, 578
                  mul          t1, t6, s1
                  srl          t2, s11, t3
                  sll          s11, s9, s9
                  xor          gp, s5, s11
                  divu         a4, sp, sp
                  andi         s7, t4, -844
                  auipc        zero, 128877
                  ori          a5, a4, -1190
                  xor          s2, t5, s3
                  slt          a5, t2, s5
                  mulhu        s10, a7, s3
                  srli         ra, ra, 14
                  or           a5, t0, t0
                  mul          s2, ra, t2
                  mulhu        s8, a5, t0
                  or           a2, a4, t6
                  andi         a3, s11, -1757
                  auipc        t0, 898991
                  div          gp, s9, t3
                  mul          s11, a6, s10
                  nop
                  remu         t4, a0, s8
                  lui          s11, 718266
                  mulhu        t3, t4, a0
                  mul          t5, a1, a6
                  or           s3, tp, sp
                  ori          a2, zero, -1593
                  xor          s10, t3, a2
                  and          t3, s10, s5
                  sra          s3, t5, a6
                  xor          ra, s8, s9
                  mulhsu       t1, t1, a3
                  ori          s7, s2, 1026
                  auipc        s1, 347767
                  divu         s5, s1, t1
                  sltu         t5, a5, s5
                  sltiu        a1, s7, -410
                  remu         s2, s0, s4
                  div          s1, a7, s7
                  xor          t2, s1, s5
                  or           t3, a5, s11
                  mulhsu       t5, t4, a7
                  slt          s1, s2, a1
                  srli         s4, a4, 30
                  addi         s10, t3, -260
                  or           s2, s4, gp
                  auipc        t5, 6541
                  sra          a3, a0, t3
                  and          t6, s11, s1
                  remu         s1, s4, t2
                  rem          a5, s5, a6
                  xor          a3, a6, a3
                  srl          t0, s8, s6
                  remu         s9, s8, t6
                  sll          tp, ra, t4
                  srl          sp, t6, s3
                  mulhsu       sp, s6, t0
                  div          t6, a3, a4
                  srai         s8, t3, 29
                  slt          t2, tp, ra
                  auipc        gp, 617010
                  divu         s11, s0, a3
                  and          t6, sp, ra
                  slti         s4, s5, 789
                  sra          t5, a0, ra
                  mulhsu       a5, s9, t2
                  mulhsu       sp, s3, s8
                  mulhu        gp, t6, a5
                  ori          a2, a1, 379
                  div          a2, a2, gp
                  srl          s4, gp, t2
                  sub          t1, t2, s0
                  sra          a2, a7, a5
                  div          a3, s7, s1
                  sltiu        sp, s5, -831
                  srli         gp, a5, 12
                  xori         t2, s7, -2033
                  andi         t2, s5, -1014
                  slt          s9, s6, t1
                  lui          s4, 752609
                  sltu         s7, s7, t0
                  sub          t2, a2, gp
                  div          s3, s9, a6
                  div          s7, t2, t1
                  sub          t1, t3, t0
                  slli         gp, zero, 2
                  sub          a3, a5, s2
                  rem          s4, zero, s4
                  ori          sp, tp, -1548
                  srli         s4, t4, 16
                  nop
                  or           s4, s8, a2
                  sltu         t3, s9, a6
                  lui          a5, 827572
                  add          s4, s8, s0
                  slt          t3, a2, s5
                  srl          a3, ra, a7
                  srl          s0, s4, t2
                  or           a4, a1, s6
                  auipc        s4, 112048
                  mulhsu       s0, tp, zero
                  mul          t2, ra, s6
                  sltiu        s10, t6, -273
                  ori          s7, a0, 279
                  addi         t6, s9, 608
                  addi         s5, a0, -1477
                  rem          s3, a0, s2
                  sltiu        a5, s2, -39
                  div          s10, t4, s11
                  mulh         s3, s0, s3
                  add          a5, s10, t6
                  sll          gp, s0, tp
                  or           t0, t6, a5
                  sltiu        gp, s9, 483
                  sltu         a3, s3, t6
                  add          s7, s1, a6
                  or           tp, ra, a6
                  rem          sp, t6, s2
                  divu         s8, s6, t0
                  rem          tp, a0, t1
                  sll          s1, ra, a4
                  slli         s9, a0, 8
                  and          t3, s6, gp
                  nop
                  add          s4, t4, a2
                  addi         s9, s6, 1625
                  slti         s1, t5, -249
                  mulhu        s4, a2, s10
                  slt          t6, a0, sp
                  rem          s8, s10, t0
                  nop
                  srai         s8, a1, 14
                  sltiu        t3, s4, 1964
                  rem          sp, s6, t3
                  ori          zero, a6, 1230
                  mulhsu       s4, s10, s6
                  slli         a2, t0, 1
                  sub          gp, a0, a0
                  rem          t3, a4, t0
                  srl          s3, zero, a3
                  add          s5, zero, a4
                  xor          sp, s1, t0
                  div          a3, t5, a3
                  sltiu        a2, sp, -1127
                  sltiu        s8, a7, 1841
                  slt          s8, s7, s10
                  lui          zero, 972476
                  or           s11, t5, t2
                  ori          gp, a5, -971
                  rem          s3, s9, a1
                  sub          s8, s11, tp
                  auipc        a1, 512493
                  srli         a7, sp, 13
                  divu         tp, t2, t5
                  andi         a1, s8, 552
                  lui          s0, 893689
                  addi         s8, s10, 144
                  slti         a7, a5, -1090
                  rem          sp, t4, t6
                  sub          t1, s0, s1
                  slli         s4, tp, 2
                  sra          a7, a3, tp
                  div          t4, tp, t5
                  slli         t5, s5, 15
                  sll          a4, s10, s10
                  remu         gp, gp, sp
                  addi         s8, s1, -964
                  xori         t1, t4, -152
                  slti         s5, s6, -1495
                  slti         t2, s1, -864
                  mulhsu       s11, s2, t1
                  sltiu        s3, s1, -1734
                  srl          s2, s7, t6
                  nop
                  srl          gp, s7, s3
                  mulhsu       zero, a5, a7
                  slli         s3, tp, 7
                  sltu         s4, sp, s1
                  add          t5, t4, s5
                  and          a2, s10, a0
                  mulhu        sp, gp, a0
                  mul          s0, s9, ra
                  sll          zero, a2, sp
                  slti         s0, t0, -454
                  div          s10, s5, s0
                  add          ra, t2, t4
                  mulhu        s10, a3, t5
                  mul          gp, t3, s0
                  xori         t0, t5, 1087
                  ori          a7, t3, -1174
                  srli         sp, a5, 16
                  slt          s10, a4, s3
                  xor          ra, s5, s11
                  sra          s10, ra, a1
                  mul          a7, s3, a7
                  lui          t3, 313993
                  mul          t1, a6, zero
                  lui          a2, 133722
                  add          s4, a6, tp
                  rem          a7, s4, ra
                  sltiu        s3, s4, -1099
                  mulhsu       s2, a3, sp
                  srai         zero, s9, 25
                  sltiu        t2, t6, -55
                  srli         s2, s5, 2
                  remu         ra, sp, tp
                  srai         t1, a5, 0
                  divu         gp, s6, t5
                  xor          s10, s6, a5
                  divu         s8, t2, t2
                  and          t3, a1, a0
                  sub          s7, gp, s11
                  sltiu        t0, t4, 1498
                  remu         a5, s8, t6
                  addi         s7, ra, 1415
                  nop
                  sra          s2, sp, a4
                  nop
                  slti         a7, t0, -1007
                  and          s2, s10, tp
                  lui          a7, 316167
                  addi         s10, t1, -926
                  srai         s11, sp, 28
                  or           a4, t0, zero
                  ori          zero, sp, 621
                  and          s4, t1, s7
                  ori          s4, a3, 220
                  sltiu        a3, s8, -2041
                  mul          t3, s11, t5
                  nop
                  mul          sp, t2, s9
                  sltu         s1, a3, t3
                  rem          t3, a7, s10
                  auipc        s0, 690894
                  sub          t5, a3, s11
                  mulh         s10, s6, a2
                  andi         s4, ra, 1894
                  ori          a4, a4, 908
                  xor          a4, t5, gp
                  and          a1, t5, t3
                  slli         t1, a6, 0
                  addi         zero, gp, 823
                  lui          a2, 1025450
                  mul          s4, a6, s0
                  slli         t0, s7, 19
                  sll          t3, a5, s10
                  sra          a2, s1, s5
                  xor          s7, s0, tp
                  slli         s7, zero, 2
                  add          tp, s0, a4
                  divu         s3, s3, sp
                  and          s4, a2, s2
                  auipc        s2, 751823
                  and          tp, sp, a6
                  sll          a5, ra, s2
                  sra          ra, sp, a0
                  mul          s10, t0, s2
                  div          t3, t5, s0
                  slti         s10, s9, -890
                  mulhsu       gp, s9, s2
                  sll          s10, ra, zero
                  add          sp, a7, s4
                  sll          a5, ra, t1
                  sltiu        a4, sp, -857
                  sra          s4, t4, a6
                  andi         t2, a6, -299
                  mulhsu       s3, t4, s5
                  mulhsu       a2, t3, a7
                  slti         s8, a0, 852
                  nop
                  srli         a3, a4, 23
                  andi         s1, gp, 1098
                  mulhu        t0, t5, t5
                  divu         t2, t1, t1
                  mulh         s3, a7, a4
                  sra          s10, t2, s4
                  sll          s1, t0, t0
                  sltu         s5, s6, sp
                  sltu         tp, t2, s10
                  xori         s0, s1, 944
                  xori         a5, s7, 967
                  lui          t0, 617268
                  xori         s7, a3, 642
                  mul          t6, s6, a7
                  srli         zero, t5, 28
                  sub          s3, t0, s11
                  slti         t5, t0, 1042
                  auipc        s2, 265914
                  mul          s4, a4, s7
                  mulh         t3, gp, a5
                  slli         t4, a0, 3
                  sub          s0, a2, tp
                  ori          a7, gp, 1216
                  mulhu        s2, s4, s7
                  or           t1, t4, t5
                  or           s10, s7, s0
                  auipc        s9, 598543
                  srli         zero, ra, 17
                  xor          s5, t4, s0
                  rem          a5, sp, sp
                  xor          s2, ra, t2
                  lui          s10, 506918
                  sll          zero, zero, s10
                  divu         s7, a7, s5
                  sra          t5, t1, t1
                  sltu         s8, s11, s4
                  sra          s3, s9, s6
                  slti         a7, s0, -1196
                  or           a7, a0, t4
                  mulhu        s2, sp, s11
                  slti         s0, s4, -454
                  and          s1, s3, t1
                  nop
                  xori         s7, a6, -1751
                  addi         a7, t2, 1066
                  sra          s8, zero, s7
                  divu         s0, zero, tp
                  mulhsu       t6, s0, ra
                  rem          s5, ra, ra
                  slli         t5, t5, 4
                  mul          s7, t0, t2
                  or           a1, t0, ra
                  slti         s7, ra, -1459
                  srai         s3, s7, 7
                  xor          s10, s3, s1
                  rem          zero, t4, t3
                  sltiu        s5, a7, 994
                  mulh         s9, a5, s11
                  slli         s8, zero, 4
                  ori          s9, s10, -698
                  andi         gp, s5, -1463
                  sltiu        s2, zero, 486
                  remu         a3, gp, s8
                  divu         s4, s0, a0
                  remu         s1, t0, t4
                  divu         s5, s7, s10
                  slti         s10, a5, 1536
                  sltu         s1, a1, s10
                  xor          a2, t1, t6
                  slt          sp, a4, t3
                  sll          tp, t4, s1
                  addi         s9, a0, 18
                  sltu         a7, a4, ra
                  divu         a3, s5, zero
                  slti         s3, t5, -769
                  xori         s9, s3, 1157
                  andi         s4, tp, -602
                  sub          s7, a3, gp
                  ori          t5, zero, -1849
                  xori         s8, t5, 1565
                  sltiu        t1, s2, -1202
                  add          t5, s3, s6
                  srli         s7, ra, 2
                  slti         s2, t0, 914
                  slt          s11, a1, t4
                  mul          zero, a1, ra
                  sll          t3, s11, t0
                  rem          gp, sp, t6
                  ori          t3, s4, 1279
                  sltu         sp, t2, a2
                  auipc        t4, 1005988
                  xor          a2, s8, t2
                  srli         t5, s11, 14
                  auipc        s4, 420934
                  mulh         s10, a1, a0
                  mulhsu       s0, s3, s6
                  ori          s3, s6, -133
                  andi         t1, t0, 1778
                  divu         tp, s5, t2
                  slli         s4, s2, 30
                  addi         t3, t6, 1406
                  or           a2, s1, tp
                  auipc        s10, 444427
                  sll          s3, a3, zero
                  addi         s1, a3, 570
                  mul          s5, a3, zero
                  mul          s0, a5, s11
                  andi         a1, s4, 1711
                  divu         a4, t6, t0
                  andi         s11, t6, 627
                  srli         t3, s1, 18
                  sll          s8, a2, s6
                  and          s11, a0, s2
                  slt          s11, a2, a5
                  srli         s7, t5, 14
                  and          a4, s11, s11
                  addi         a5, s0, -1210
                  srai         a1, a1, 21
                  and          s7, s4, t6
                  rem          s7, s11, a1
                  mul          s8, s8, s7
                  slt          s8, t5, sp
                  auipc        t1, 632222
                  andi         a1, s11, -1739
                  div          a1, s3, s1
                  sltiu        t6, a2, -406
                  sltiu        s9, a6, 1869
                  andi         s7, s7, -65
                  and          a7, s1, zero
                  srli         s2, t1, 28
                  add          a2, t6, tp
                  divu         s10, t1, s11
                  nop
                  sll          t2, s1, t0
                  remu         s2, s5, t4
                  slli         t2, a2, 9
                  remu         s2, t0, s5
                  addi         t3, t1, -720
                  or           t3, sp, s1
                  slt          s7, t2, gp
                  mulhsu       a2, t0, s8
                  or           a3, s6, t0
                  slli         tp, t4, 12
                  remu         gp, a3, a3
                  slti         a4, ra, 1631
                  mulh         tp, s1, t4
                  lui          s11, 262177
                  slt          s4, a5, t4
                  ori          t0, a3, 716
                  slli         s9, s3, 28
                  nop
                  srli         s1, t4, 15
                  sra          s3, s9, t3
                  srl          s4, ra, gp
                  slti         zero, a1, -1021
                  rem          s4, t5, t5
                  addi         a7, s4, 314
                  slt          t1, s2, s8
                  rem          a3, a7, a1
                  and          tp, sp, tp
                  slt          a7, s5, s9
                  lui          tp, 847407
                  srai         ra, s0, 17
                  srai         t4, s11, 9
                  mul          t1, sp, s7
                  mulhu        a3, a2, t4
                  auipc        s8, 215035
                  auipc        s2, 316718
                  sltu         ra, ra, s1
                  mulhu        s2, a6, a4
                  mulhsu       s1, a6, t4
                  andi         s2, t3, -621
                  addi         s4, ra, -1959
                  divu         tp, s7, s3
                  xor          a3, s11, t1
                  slt          s10, s11, s2
                  slti         s10, s7, -1201
                  addi         s10, t3, 1245
                  sub          gp, s1, zero
                  addi         s5, t0, -1230
                  remu         sp, s5, a6
                  lui          s7, 202045
                  mulhsu       gp, s7, a5
                  div          t0, s11, a4
                  slli         s0, t4, 16
                  slti         s5, zero, 1735
                  div          t5, s5, a0
                  sltiu        s10, a2, 1386
                  sub          a3, s5, s5
                  slt          a5, s1, ra
                  sltiu        s8, a4, -1597
                  srli         s2, a0, 11
                  nop
                  slti         a4, a2, -1444
                  srli         a3, a7, 12
                  sltiu        s10, a6, 397
                  mulhu        s0, s6, tp
                  slti         a4, s6, -1178
                  srai         tp, s6, 21
                  addi         t4, a0, 237
                  srli         a2, t0, 2
                  ori          a5, gp, -1015
                  sub          a5, sp, gp
                  sll          s9, a6, t5
                  sltu         s4, t2, ra
                  ori          s1, a6, 879
                  nop
                  nop
                  sra          zero, t6, s10
                  andi         zero, s10, 184
                  sub          a1, s10, s7
                  srai         tp, t2, 20
                  auipc        a5, 363307
                  or           a5, s7, t0
                  srl          s4, a1, s5
                  sltiu        a5, t1, 574
                  sltiu        s9, t6, -1011
                  xori         s2, s2, -21
                  srl          s11, a2, t1
                  div          s5, gp, sp
                  lui          t3, 950013
                  sll          tp, t4, gp
                  sltu         a3, s7, t2
                  sub          zero, t5, s8
                  slt          t2, s9, a6
                  mulhu        s4, a2, sp
                  addi         gp, s5, 1116
                  div          a4, s2, t6
                  addi         s9, t3, 1704
                  sll          s10, s3, a0
                  rem          a1, s1, a0
                  slti         t6, a7, 1484
                  mulhsu       s10, s0, a5
                  slt          s10, s0, s11
                  or           s2, s3, t1
                  mulhu        s9, a4, s3
                  or           t5, s9, s1
                  mulh         t1, s11, s4
                  rem          s3, s8, s6
                  srli         t4, s11, 7
                  mulhsu       t3, a2, gp
                  slli         s7, a2, 2
                  sll          a7, t3, s3
                  mulhsu       s8, t2, s6
                  add          s4, t0, s9
                  slli         s11, a4, 5
                  xori         zero, gp, -9
                  add          a1, t2, t4
                  xor          s5, a4, s11
                  div          a1, s1, s10
                  auipc        t2, 677455
                  srli         tp, s10, 14
                  add          sp, t1, s2
                  addi         s3, t3, -173
                  andi         s3, s2, 13
                  mul          s5, s7, a2
                  andi         s11, a5, -795
                  mulhu        t4, s4, s1
                  srli         s11, t4, 6
                  sub          s1, t0, a6
                  lui          s2, 819942
                  lui          t6, 615
                  div          s7, a3, s6
                  slli         a4, t6, 30
                  slt          gp, s11, t3
                  divu         t1, t1, gp
                  sltu         a3, s7, t6
                  slti         a2, t1, -1287
                  sll          a5, s7, a2
                  ori          a5, s11, 2007
                  srai         s3, t1, 14
                  xor          t3, ra, a2
                  slt          s9, a1, a0
                  srl          s7, tp, s5
                  rem          a1, a1, a7
                  rem          zero, t6, gp
                  addi         gp, ra, -611
                  srl          a5, t1, a0
                  ori          sp, s9, 1947
                  srai         t3, a0, 25
                  mulh         s4, s3, s9
                  ori          t1, s1, 1654
                  or           t0, s6, s7
                  addi         t1, a6, -1380
                  mul          s1, t6, s3
                  and          t5, s1, gp
                  sltu         sp, t1, s7
                  xor          sp, s6, t4
                  mulhsu       t6, gp, s8
                  srai         a3, sp, 8
                  mulhu        t0, s7, s0
                  remu         t3, a3, a5
                  addi         a7, s4, 123
                  sub          sp, s11, t0
                  slti         t5, s5, -604
                  and          t3, gp, a2
                  sltu         a4, s5, t5
                  add          t5, s11, s10
                  sub          s10, ra, s2
                  xori         s0, s8, -306
                  mulh         a1, a0, zero
                  slt          s10, s1, s6
                  srl          s4, a1, t1
                  srl          s7, a1, tp
                  sra          s5, zero, a0
                  sltu         t4, tp, a0
                  slti         t0, a7, -1355
                  div          s2, gp, a3
                  sub          s11, s4, tp
                  ori          s9, s5, 1140
                  srl          a1, ra, zero
                  andi         t5, tp, -507
                  remu         s7, tp, s3
                  slti         s2, a1, 1646
                  mulhsu       a7, a5, a3
                  ori          gp, zero, -704
                  nop
                  and          a1, gp, s1
                  lui          tp, 706810
                  divu         t6, s8, a4
                  sra          s9, a6, a3
                  lui          s11, 984275
                  slli         s8, gp, 15
                  and          t2, s11, t1
                  auipc        t0, 214779
                  xor          sp, s0, a1
                  sltiu        s5, a6, 715
                  slti         zero, s5, 924
                  sltu         s10, s4, t6
                  addi         a2, s1, -536
                  srli         a5, a2, 14
                  and          a7, s2, s0
                  mulhu        t6, s4, t0
                  auipc        sp, 768721
                  srai         a1, a1, 3
                  mulhsu       sp, gp, t0
                  srl          ra, a0, t6
                  addi         s0, sp, -1986
                  sltiu        s10, s5, 1557
                  mulh         t0, t6, t0
                  addi         t1, t4, -1784
                  lui          t4, 161897
                  sra          t4, t3, zero
                  sll          t1, t4, t4
                  srli         s4, a4, 1
                  srai         a3, s4, 25
                  nop
                  auipc        zero, 484105
                  auipc        s0, 61068
                  slt          t0, t1, sp
                  xor          a2, sp, s2
                  xor          t1, s9, a3
                  auipc        s10, 819553
                  sltiu        s4, s3, -595
                  slti         t3, a5, 1341
                  addi         s5, a1, 1091
                  mulhu        t4, a7, s9
                  slti         tp, a3, -164
                  addi         t4, s3, -914
                  ori          s7, a5, 683
                  nop
                  sltiu        t2, a1, 482
                  andi         s4, t3, -223
                  ori          s0, a3, 1015
                  sra          a3, s1, s4
                  add          s9, s10, ra
                  xor          t6, a0, s0
                  xor          s7, a1, s2
                  addi         zero, ra, 1386
                  remu         gp, ra, ra
                  slti         t0, tp, 847
                  sub          a2, a5, s1
                  rem          t2, ra, ra
                  sub          t5, s6, s2
                  add          sp, s1, a5
                  lui          s10, 450070
                  lui          t3, 644193
                  xori         a1, a5, 237
                  srl          t1, gp, t1
                  addi         t2, s9, -723
                  lui          zero, 417011
                  mul          t2, s9, s0
                  or           t4, a7, s9
                  sltu         t0, a5, s9
                  rem          tp, a6, a0
                  slt          s7, s2, s7
                  mulh         s9, s0, s5
                  addi         zero, s1, 677
                  srl          sp, sp, s0
                  srai         tp, gp, 4
                  and          a5, s10, gp
                  addi         a2, s11, 736
                  mulh         s8, s9, s5
                  slli         a2, t4, 0
                  remu         s3, sp, s10
                  lui          s10, 870115
                  mulhu        s8, zero, s5
                  mulhsu       a1, s2, s4
                  sll          t6, s3, s9
                  or           a3, s7, s10
                  mul          s9, s0, a7
                  divu         a5, a5, t0
                  sltiu        s10, s5, -331
                  sub          s11, t2, s8
                  mulhsu       zero, a1, s9
                  and          tp, s1, sp
                  nop
                  sub          sp, t3, t1
                  ori          zero, s9, -1330
                  mulh         a1, a7, a3
                  srli         t5, s0, 3
                  xori         a4, s1, -1309
                  xori         s10, s5, 924
                  srai         s3, t2, 23
                  addi         s3, t6, 1189
                  divu         t4, zero, t1
                  div          s0, t1, s11
                  sltiu        t1, s7, -1353
                  sra          a1, s1, a3
                  srl          s11, t5, tp
                  sltiu        tp, a1, 215
                  sltu         s7, s7, s1
                  and          s0, s7, t3
                  ori          s8, zero, 1932
                  mul          ra, t4, s2
                  xor          s10, s5, s3
                  mulhsu       gp, t3, a2
                  ori          t0, tp, 1230
                  andi         s8, t2, -731
                  rem          s4, a0, a3
                  rem          s5, t3, s11
                  srl          s10, a2, s0
                  or           s3, t0, t0
                  sub          zero, s11, s0
                  lui          t6, 721212
                  mulhsu       s8, t5, a7
                  ori          s10, s2, 446
                  remu         s4, t5, ra
                  mul          t0, a2, a6
                  slli         t6, s9, 26
                  sltiu        ra, s4, -783
                  mulh         s8, t0, t2
                  and          zero, a1, t6
                  and          sp, sp, a3
                  auipc        s0, 575456
                  mulh         s3, gp, a7
                  slti         a4, a7, 1404
                  andi         a1, s6, -1331
                  xor          s1, s4, a0
                  nop
                  divu         s3, a5, s6
                  sra          sp, t1, a2
                  sra          s1, s9, a4
                  addi         a1, gp, 1003
                  andi         zero, s3, -1506
                  nop
                  mul          s10, a1, t2
                  ori          t3, a4, 397
                  div          t5, gp, a1
                  srli         t6, s9, 5
                  addi         sp, t3, 1717
                  add          s0, a0, a0
                  xori         a1, t1, -1443
                  sltu         a7, s4, s6
                  srl          a3, t0, a4
                  srl          s10, t4, ra
                  slli         s11, a1, 13
                  or           s1, s6, t1
                  xor          sp, s5, t1
                  andi         s11, s4, 628
                  and          a4, t1, s10
                  slt          s7, t4, a0
                  lui          t3, 400461
                  srl          a2, s3, s4
                  slti         a1, zero, 324
                  div          s5, t1, a5
                  divu         s11, sp, s8
                  divu         s1, tp, a0
                  sra          s0, sp, s0
                  sub          t5, a1, s11
                  mulhsu       a3, a6, ra
                  remu         s10, t2, a5
                  srai         a5, a3, 6
                  remu         s2, s11, t3
                  sll          gp, t1, s2
                  andi         a4, s1, -869
                  nop
                  slti         s4, a2, 1685
                  div          t6, s10, s8
                  andi         a4, s9, 1623
                  ori          zero, gp, 70
                  divu         a5, s5, t1
                  remu         t1, a7, t6
                  xori         s2, a0, 1454
                  mulhu        a1, a3, s10
                  addi         s1, s0, -361
                  div          s5, ra, a3
                  srli         zero, s7, 21
                  rem          t2, s2, s11
                  sub          s0, ra, a0
                  sltiu        a2, s11, -564
                  sra          s3, a2, s5
                  sub          s8, s9, a2
                  srai         tp, ra, 0
                  and          s1, ra, ra
                  nop
                  sltu         t6, s1, s1
                  sra          t4, t3, a0
                  remu         t5, tp, s5
                  lui          t5, 518073
                  mulhsu       a1, t6, t3
                  sltiu        s8, t2, 1208
                  lui          ra, 107473
                  slli         s7, a6, 10
                  sub          a3, t6, s8
                  or           t5, a6, sp
                  nop
                  add          t3, a6, zero
                  andi         s11, a5, 1974
                  srai         s2, a4, 20
                  ori          s3, s0, 26
                  srai         s4, ra, 20
                  sub          a7, s8, a5
                  sll          s5, gp, tp
                  rem          s11, s2, s11
                  mulh         zero, s2, tp
                  slli         s3, a2, 26
                  xor          s8, s8, sp
                  div          s8, a1, a4
                  slt          s9, zero, s10
                  nop
                  srai         t4, a3, 10
                  slt          a1, s4, a1
                  lui          s2, 194074
                  slt          s4, s8, a6
                  xori         s11, t0, 1961
                  slli         t4, a6, 11
                  add          t2, t2, a0
                  rem          s2, s3, s6
                  mulhu        tp, s4, s0
                  mulhu        a5, t3, sp
                  divu         ra, s7, a4
                  slti         a3, gp, 730
                  or           s7, s3, s5
                  slt          a7, zero, t3
                  mulhsu       s8, gp, s6
                  sltiu        tp, s5, 1205
                  slt          a4, s2, ra
                  mulhu        t4, a4, t5
                  slli         s8, zero, 26
                  add          a2, t3, t4
                  slli         s10, s10, 7
                  sltiu        t1, s10, -392
                  sub          s9, gp, s5
                  nop
                  slt          s5, s4, a1
                  sll          t4, t2, s1
                  sltu         a5, a7, t1
                  srli         tp, s4, 25
                  slt          t1, t5, s10
                  srai         a4, a0, 8
                  divu         a1, sp, t1
                  remu         a3, s4, zero
                  slli         t0, zero, 2
                  nop
                  sra          a1, t5, tp
                  slti         t3, a2, -1605
                  sra          s11, ra, s3
                  slti         a4, s1, -1842
                  mulhu        s4, s3, a6
                  xori         s9, zero, -1127
                  sltiu        s7, t3, 1932
                  nop
                  rem          t5, ra, tp
                  sub          sp, zero, s11
                  srai         sp, t2, 16
                  srai         s10, a5, 19
                  srli         t1, t4, 1
                  mulh         a1, t1, sp
                  addi         s5, a1, -230
                  div          sp, s0, t6
                  sltiu        s8, s5, 749
                  andi         s7, s7, 241
                  srli         s0, t5, 29
                  sltiu        t5, t2, -344
                  mulhu        s1, s7, s10
                  add          s7, a4, a3
                  slti         s0, a5, -875
                  lui          sp, 719476
                  addi         sp, s9, -1014
                  sll          s8, s7, t2
                  sltiu        a3, t0, -1104
                  mulhu        s10, s11, s8
                  rem          s2, t3, s6
                  slti         t1, t1, 1593
                  sll          gp, a2, tp
                  mulh         t0, t6, a1
                  mulhsu       s3, a5, a0
                  andi         gp, t3, -59
                  lui          a2, 682780
                  mulh         s4, t0, t0
                  and          s3, t1, a1
                  ori          t3, a6, 14
                  srai         s5, gp, 23
                  ori          s2, s1, 23
                  slti         gp, a0, 22
                  divu         t4, s5, s6
                  divu         gp, s11, t3
                  mulhsu       tp, t4, t3
                  mulhsu       s1, t6, t3
                  ori          a4, tp, 433
                  slli         s2, a4, 30
                  auipc        s10, 948725
                  add          t2, s11, t4
                  slli         t6, s2, 10
                  xori         t3, t5, -1445
                  mulhu        s2, t2, s8
                  sltiu        tp, s1, 383
                  lui          a3, 635153
                  lui          sp, 169500
                  sra          a7, s0, s10
                  slti         a1, t6, 1301
                  rem          a5, a0, gp
                  rem          sp, t2, s0
                  remu         ra, a1, t6
                  mulh         s10, s3, s10
                  divu         t5, a6, t2
                  nop
                  slt          t4, s11, t1
                  remu         t5, s11, sp
                  mulh         s4, s8, s7
                  ori          a2, t4, -1897
                  xori         a4, t6, 935
                  divu         s4, a7, s8
                  xor          s2, s9, a2
                  sub          s11, a1, a1
                  sll          s8, s9, tp
                  mulhsu       s3, a4, s6
                  sll          t0, s4, s5
                  xor          t6, a6, t4
                  nop
                  mulh         a2, t3, s4
                  mul          a1, a5, s0
                  nop
                  srl          a1, gp, tp
                  div          s8, s8, zero
                  nop
                  ori          s0, s4, 315
                  add          t5, s2, a0
                  auipc        s4, 778457
                  divu         s8, a6, t5
                  xori         t6, s4, -1423
                  mul          t2, s3, t1
                  sltu         t0, s10, a1
                  xori         s3, s7, 189
                  ori          a3, s10, -1370
                  ori          sp, a5, 558
                  mulhu        s11, t3, s10
                  lui          t5, 759575
                  ori          s4, a5, 1644
                  mul          t3, t5, t5
                  sub          s1, s9, gp
                  sll          s11, sp, a1
                  and          t3, s9, a4
                  mulhsu       zero, t4, t1
                  add          t3, s10, s8
                  mulh         s1, gp, zero
                  mulh         s10, ra, t5
                  add          a3, s6, sp
                  sll          s10, a2, s8
                  lui          ra, 846271
                  slt          a4, t1, zero
                  mulhsu       s5, tp, s4
                  mulh         a7, s7, s11
                  nop
                  mulhu        t2, a5, a5
                  addi         t5, a0, -1322
                  slli         a2, sp, 9
                  mul          a5, tp, a5
                  sll          s9, s1, s4
                  slli         t5, a0, 23
                  mulhu        t0, s3, s11
                  divu         s10, s11, t4
                  div          s3, t4, a7
                  mulhu        t6, tp, s5
                  nop
                  add          tp, s7, a4
                  divu         ra, t2, t5
                  sub          s10, a4, t1
                  slt          s8, s3, t5
                  mul          t3, gp, t2
                  srli         s5, t0, 20
                  sll          a3, a0, zero
                  sub          t4, s5, s2
                  lui          ra, 273935
                  sltu         ra, s5, s7
                  rem          tp, s7, s3
                  srai         a7, tp, 20
                  sltiu        t2, s8, 251
                  divu         s4, t2, s11
                  auipc        s2, 101912
                  lui          s3, 194376
                  sltu         ra, sp, t1
                  srl          a1, t6, t6
                  and          s11, a7, tp
                  sltiu        t1, a6, -90
                  mulh         s8, sp, s5
                  rem          s11, a0, gp
                  mulhsu       s11, s2, s3
                  sub          t3, s11, a0
                  slli         t3, s10, 25
                  lui          tp, 699533
                  slli         a5, s9, 1
                  srl          s10, t4, s7
                  slti         a1, zero, -914
                  div          s5, s3, s1
                  addi         s10, t1, -874
                  mulhsu       a4, t3, a7
                  lui          gp, 193058
                  sub          a4, s8, zero
                  divu         t2, s3, t0
                  and          t1, a7, s0
                  xor          s8, s6, t2
                  add          sp, t2, tp
                  sltiu        t0, sp, 58
                  mulhu        ra, sp, a2
                  div          t2, t1, t5
                  ori          gp, s9, 1004
                  slti         s5, t2, -1840
                  srl          sp, s8, a7
                  and          sp, s0, sp
                  div          s7, s1, s9
                  srai         s1, s7, 30
                  xori         zero, s10, -1925
                  nop
                  slli         s8, a6, 11
                  srli         a5, t0, 30
                  srli         t2, a4, 6
                  mulhu        ra, s9, t0
                  and          s0, s3, t6
                  sra          s11, s8, a0
                  sra          s10, t4, s7
                  sub          s9, a7, t6
                  mul          t4, a0, s1
                  and          t6, a5, t2
                  slt          a7, t0, a7
                  ori          s2, s2, 166
                  and          tp, a7, t4
                  xori         s10, zero, 243
                  addi         ra, t5, -413
                  sltu         a2, a2, a6
                  and          s11, s9, t6
                  sltiu        s9, s7, 1322
                  sll          s4, s9, t0
                  sltu         ra, ra, s7
                  nop
                  add          a5, a2, s5
                  or           s7, s6, a6
                  sra          ra, s6, s7
                  sltiu        a4, a1, -1357
                  and          ra, tp, a2
                  auipc        a1, 443724
                  mulhu        s4, s5, s5
                  mulhsu       s11, a2, s11
                  slli         sp, gp, 29
                  srai         s0, s2, 17
                  srai         s4, s7, 8
                  sll          s4, s2, a2
                  slt          zero, zero, t2
                  sltu         t2, a6, s4
                  mulhsu       s7, s8, tp
                  sub          a4, a6, a1
                  divu         t2, s4, s7
                  add          a1, s0, s11
                  and          s10, gp, a3
                  mulh         s4, s8, t0
                  and          t5, s7, a7
                  sltu         s2, a5, t2
                  and          a7, t0, a2
                  sra          s10, s5, t2
                  xor          t5, t2, sp
                  mulh         a7, t1, s9
                  slt          tp, s11, t5
                  remu         a3, a1, t4
                  lui          a7, 705503
                  mulhsu       s1, a0, a3
                  ori          s2, a3, -434
                  sra          s5, s1, a1
                  divu         t2, a1, s4
                  sub          a4, a5, zero
                  mulhsu       a7, t5, s1
                  remu         t5, sp, a1
                  sll          s3, a7, tp
                  mulh         s9, gp, s1
                  remu         a4, zero, t6
                  srai         ra, gp, 29
                  div          s5, t4, t1
                  rem          t5, s10, t2
                  divu         sp, t1, t2
                  divu         a3, a4, a7
                  sltu         a2, t5, s2
                  rem          a7, s2, s7
                  mul          a1, zero, t1
                  lui          t1, 70860
                  mul          a2, a4, s0
                  remu         a2, t3, s4
                  addi         t0, t1, -345
                  add          s3, t5, a5
                  auipc        a2, 590719
                  andi         t4, s7, -1850
                  divu         zero, gp, s0
                  ori          a7, t4, 1679
                  slti         s0, s3, 1362
                  srl          a4, s1, s9
                  addi         t1, s0, -449
                  srl          t4, tp, a2
                  slti         a5, zero, 207
                  xori         s1, s7, -1083
                  xor          s0, t0, s1
                  mulhu        t5, tp, t0
                  divu         t2, t4, tp
                  add          a1, s10, a6
                  srli         s2, t5, 12
                  auipc        s10, 251005
                  lui          a1, 234287
                  sll          s9, s1, gp
                  remu         s2, s11, s9
                  divu         sp, s6, s1
                  add          s8, a0, s8
                  srai         s0, s4, 9
                  sra          t2, t6, s4
                  mul          sp, t4, s9
                  slt          a7, zero, a7
                  xor          zero, a2, s6
                  addi         a1, a3, -1761
                  divu         s9, s6, a7
                  lui          a7, 203028
                  srl          a3, a7, s3
                  ori          s1, s10, -805
                  srl          sp, t3, s0
                  sub          s3, s10, tp
                  sll          t1, a7, s9
                  andi         t0, a2, 845
                  srl          s8, s3, a6
                  mulh         s11, t3, zero
                  addi         t2, t2, 1782
                  slti         a5, ra, -1075
                  add          s11, t6, a1
                  rem          sp, t2, a1
                  sll          t2, s10, tp
                  sltu         gp, a6, s1
                  addi         s3, gp, -877
                  sltiu        s4, gp, -1311
                  slli         a7, t3, 23
                  slti         t4, s0, 480
                  auipc        zero, 284335
                  mulhu        s4, t2, s4
                  srli         ra, s9, 16
                  sub          gp, ra, a4
                  divu         a4, s3, s8
                  srai         a1, s0, 12
                  or           t5, t6, s0
                  sltu         tp, s5, s3
                  auipc        zero, 1022246
                  sltu         a7, ra, a3
                  sra          s1, s0, s11
                  lui          a1, 680309
                  div          s3, t5, s9
                  srai         a7, a1, 2
                  sltu         s3, s0, a4
                  mulhsu       a3, s0, a5
                  sub          s0, s8, t3
                  sra          s3, t2, t2
                  addi         a4, tp, 1967
                  or           ra, a4, s2
                  divu         s1, t4, sp
                  sll          t4, s5, s5
                  auipc        t1, 780510
                  div          s11, s5, s11
                  sltu         s11, sp, s6
                  divu         sp, t3, s0
                  sra          t2, a1, s8
                  sll          a1, a6, sp
                  addi         s3, tp, 1170
                  xor          gp, a7, a7
                  or           s4, a7, t2
                  auipc        tp, 180529
                  mulh         ra, a4, t6
                  nop
                  mul          gp, a6, a4
                  sra          a7, t2, s11
                  lui          s2, 918526
                  or           s7, s5, s2
                  slti         tp, zero, -1843
                  or           tp, a5, tp
                  mulhsu       s1, s5, s10
                  andi         a3, t1, -634
                  sub          s3, sp, a4
                  addi         s5, a2, 92
                  srl          tp, zero, a7
                  slti         a1, a0, -748
                  addi         a4, sp, -148
                  addi         s3, s6, -1361
                  rem          a1, tp, t0
                  or           a5, ra, a6
                  andi         s8, a0, -1723
                  xori         s3, t6, -1346
                  xori         a1, zero, -446
                  ori          t4, s0, -1493
                  srl          t2, t1, s7
                  andi         t1, s4, -747
                  remu         zero, s1, a7
                  mul          t3, s7, gp
                  sll          t1, t6, s0
                  srl          t3, s10, tp
                  sub          s4, a3, s7
                  sll          t3, a3, a2
                  sub          a2, a3, a7
                  xori         a2, a0, -326
                  slti         s9, t2, -759
                  srli         t0, t2, 12
                  rem          s2, s0, a2
                  sra          a7, sp, a5
                  srl          s11, t0, a0
                  xori         s2, ra, 664
                  slti         s1, tp, -892
                  mulh         tp, s3, t2
                  auipc        t1, 926408
                  add          tp, s9, t2
                  rem          s2, tp, s11
                  ori          gp, zero, -1313
                  mulhsu       s4, s7, t3
                  sll          s0, s11, ra
                  mulhsu       t4, t3, tp
                  slli         s9, t1, 27
                  and          gp, t6, s4
                  addi         gp, s3, 1183
                  div          a3, a3, t0
                  slti         a1, s10, -771
                  divu         a7, s2, s6
                  srl          a5, a7, s1
                  remu         s5, a5, s2
                  slti         a5, s5, 985
                  rem          t4, a2, a3
                  srli         s8, s4, 1
                  slt          gp, s10, t0
                  slli         t6, t1, 17
                  add          s10, tp, t2
                  mulhsu       a7, s9, s0
                  srl          t4, t2, s6
                  sltu         t5, t2, s3
                  andi         s7, s10, -271
                  ori          t6, a0, -99
                  rem          s11, t1, gp
                  or           s4, s6, s8
                  mulhu        gp, s7, a4
                  sltu         a2, t1, a2
                  srli         gp, zero, 1
                  add          sp, a2, zero
                  mulhsu       s10, s1, t0
                  srl          s3, t0, a1
                  add          a3, s5, a3
                  ori          s3, sp, -671
                  divu         a5, t3, s10
                  sltiu        s9, a7, 1624
                  slt          t0, s5, t4
                  slt          t2, a1, a4
                  sll          s7, a7, a4
                  mul          t3, s7, a4
                  and          s3, s1, a2
                  mul          s2, s1, a2
                  and          s5, s5, a7
                  remu         t4, s1, a4
                  slli         a1, gp, 13
                  slli         a4, s8, 14
                  or           s2, tp, gp
                  sltu         t1, t4, t4
                  rem          s8, a1, s6
                  ori          s4, a2, -1380
                  sltiu        a5, t2, -768
                  srl          s2, sp, t3
                  sltu         a2, t2, a2
                  nop
                  divu         s0, a4, s11
                  mulh         a7, s7, t1
                  mulhu        a1, a4, tp
                  srl          zero, a1, s2
                  and          tp, s10, tp
                  sra          s10, sp, s8
                  sra          ra, s4, tp
                  ori          s11, a4, 943
                  ori          s2, t1, 1911
                  sll          a7, s9, sp
                  div          ra, a2, s11
                  divu         s4, a7, a5
                  mulhu        a5, s6, sp
                  srl          a4, s11, a2
                  auipc        a3, 113322
                  divu         t1, ra, t3
                  or           t0, s8, tp
                  slli         t4, gp, 13
                  nop
                  slt          s10, tp, a3
                  rem          a2, s9, zero
                  mulh         sp, a2, a1
                  sll          s9, s5, s8
                  srl          s3, a4, s6
                  srli         s2, s5, 21
                  srai         ra, sp, 29
                  slt          t3, t6, a6
                  auipc        a1, 934685
                  sltu         t1, s4, s0
                  srli         t0, a3, 10
                  andi         s3, s0, 1116
                  auipc        t2, 121627
                  sll          ra, s9, s4
                  sub          s2, t3, s1
                  sltu         a1, tp, t0
                  and          zero, s1, s4
                  auipc        s11, 562213
                  sltu         t3, t0, a6
                  andi         s10, s1, 1627
                  xori         s4, s3, 1841
                  nop
                  divu         sp, a5, s5
                  auipc        s4, 316297
                  divu         a3, ra, tp
                  lui          s10, 896962
                  add          s7, sp, s3
                  srli         t5, s10, 29
                  or           a4, t6, s9
                  mulhu        a4, a1, a1
                  slti         gp, a2, -934
                  srai         s2, a7, 26
                  divu         s9, t2, a5
                  mul          gp, s6, s2
                  sll          zero, a5, s0
                  mulhsu       s5, t4, tp
                  slt          t0, s8, t2
                  ori          s2, s1, -1709
                  div          s0, s4, ra
                  divu         s11, sp, a4
                  andi         t0, a5, -993
                  lui          s7, 90258
                  andi         s11, t5, -649
                  nop
                  sub          a4, a5, t0
                  addi         t5, s11, -979
                  addi         a1, s1, -772
                  slti         sp, t2, -1413
                  srli         ra, s5, 1
                  addi         t4, t1, -774
                  srl          a2, zero, t1
                  xor          t2, s5, a7
                  srl          a4, t2, ra
                  mulhsu       s9, s2, a2
                  auipc        a3, 837796
                  addi         a5, t2, -1201
                  srai         s3, gp, 5
                  andi         s2, t4, 334
                  divu         s3, s5, t4
                  sll          s10, a5, t6
                  xor          t1, ra, zero
                  slli         s11, s11, 5
                  rem          t0, s11, t0
                  sub          t1, s7, t2
                  sltu         s9, s4, s9
                  add          a3, s4, a7
                  addi         t2, a6, -1821
                  lui          a5, 221684
                  slt          t4, s10, s7
                  srli         tp, s4, 25
                  sra          s10, t4, ra
                  slli         s2, t6, 24
                  nop
                  sub          t1, ra, s9
                  mulhu        a4, t6, t1
                  slt          s8, s3, a1
                  xori         t0, s9, -1665
                  addi         tp, sp, -638
                  sra          s10, s2, s1
                  mulhu        s10, zero, t2
                  mulh         a2, s0, s5
                  srli         s8, t0, 30
                  ori          t0, ra, -1041
                  sltu         t6, a2, s6
                  andi         s7, t5, 728
                  and          s3, tp, sp
                  addi         a1, t5, -698
                  addi         zero, s6, 914
                  div          tp, s3, t0
                  srai         s10, t2, 24
                  or           a5, s9, sp
                  addi         s0, sp, -170
                  and          s10, ra, s9
                  mulh         s2, s9, s9
                  or           t0, s5, ra
                  slti         s2, a7, 620
                  mul          s7, s1, s4
                  slti         s0, a3, 272
                  xor          t5, s10, a5
                  srli         a4, gp, 25
                  mulhsu       s3, a6, tp
                  slt          s11, a6, a4
                  slli         s5, a3, 5
                  rem          s7, a4, a2
                  auipc        sp, 899749
                  sra          a3, s8, ra
                  add          a1, a1, s6
                  rem          gp, a1, t1
                  remu         s5, tp, s11
                  div          s9, sp, a2
                  xor          t4, s4, s1
                  div          s11, t1, t6
                  add          s5, a3, ra
                  slli         s8, ra, 14
                  and          sp, a2, s0
                  divu         a5, a0, gp
                  sltu         a3, s7, s1
                  srli         a3, a7, 8
                  addi         sp, a6, -161
                  slti         a4, a2, 1986
                  nop
                  srl          s8, tp, gp
                  div          s10, t4, s3
                  rem          s1, a3, s9
                  xor          a1, s7, zero
                  srli         a3, a1, 16
                  sltu         t1, s3, t4
                  andi         s4, s4, 589
                  remu         a5, s5, a4
                  sll          s0, zero, s3
                  rem          t4, t3, t5
                  auipc        t0, 206295
                  remu         t3, s9, s4
                  sll          s2, a1, s1
                  remu         s3, s2, t3
                  remu         sp, a6, t0
                  rem          s0, t2, a5
                  sub          s2, s7, a6
                  xor          a2, t5, t4
                  xori         s4, s6, 443
                  or           t1, t1, s4
                  ori          t0, t0, 1267
                  or           ra, s8, a7
                  sltu         a2, ra, s0
                  mulhsu       t2, s0, s8
                  lui          zero, 497990
                  sltiu        s10, t0, 435
                  mulhsu       t5, s5, s8
                  srai         a4, ra, 24
                  sub          s5, s9, ra
                  auipc        a4, 56696
                  mulh         a7, sp, s6
                  sll          t4, s9, s2
                  slt          s2, a3, ra
                  sltu         s0, s7, s9
                  srl          s10, a4, a1
                  rem          a7, s2, s7
                  sub          zero, s1, tp
                  mulhu        s0, s3, sp
                  mul          a2, ra, s6
                  slli         s4, t2, 23
                  mulhu        s8, tp, t0
                  sltu         zero, a4, a1
                  or           s4, t1, a3
                  nop
                  sltiu        a7, s6, -2029
                  slli         s4, t1, 10
                  srl          s10, s3, t2
                  or           t1, s9, s10
                  rem          sp, t0, t4
                  sll          s4, a6, tp
                  divu         zero, t4, t2
                  sll          a3, t4, s11
                  xori         a2, t2, 11
                  slt          a3, a0, a6
                  srl          sp, zero, a3
                  auipc        s9, 744782
                  sra          gp, a1, ra
                  nop
                  sra          t0, s7, a4
                  srai         a2, s1, 26
                  xor          s1, s10, s11
                  rem          s0, sp, a2
                  auipc        t6, 656845
                  addi         a1, s10, -1545
                  nop
                  sltu         a4, a4, t3
                  sll          tp, t1, t5
                  xori         a2, s10, -648
                  srl          gp, t4, gp
                  or           s7, t4, a1
                  remu         a3, s11, gp
                  mul          s1, s1, zero
                  sll          t5, s7, s0
                  lui          t0, 736869
                  auipc        s4, 1037705
                  nop
                  mulhu        s4, gp, t6
                  div          t2, t3, zero
                  sll          s3, s3, t4
                  srai         t4, s10, 9
                  divu         s2, s7, s8
                  nop
                  or           t2, a4, ra
                  xor          sp, a1, s0
                  rem          a7, t4, s4
                  xori         s3, s1, -257
                  and          a1, s2, t1
                  div          a7, a5, s8
                  and          s8, s8, s4
                  sltu         t2, t4, t4
                  andi         s0, s1, -311
                  sltiu        a4, a7, -1595
                  srai         ra, t3, 9
                  lui          s0, 557944
                  mul          s11, s9, gp
                  mulhsu       s10, s10, t0
                  mul          s11, a7, t6
                  srai         s8, t6, 25
                  and          a2, s1, t0
                  div          a4, t0, a7
                  mul          t6, a1, s1
                  sll          a7, gp, gp
                  rem          a5, a0, s1
                  lui          tp, 859640
                  sub          gp, s1, s10
                  and          t5, a0, a2
                  ori          a4, tp, 1773
                  srl          t6, s6, s3
                  andi         t6, s11, 846
                  sltu         s1, t6, s9
                  add          a3, s2, a6
                  and          s8, t2, t1
                  slt          s9, s2, t4
                  sll          s1, zero, a2
                  slt          t3, t6, s4
                  sub          t0, s1, s0
                  slti         s10, s2, -105
                  div          s3, a0, t5
                  srai         a5, t1, 29
                  and          s2, s3, a5
                  andi         a3, s4, 1197
                  div          s9, s9, t3
                  sltiu        a2, s6, 1719
                  sra          a1, s3, ra
                  andi         t4, a4, 1241
                  add          sp, s2, a3
                  sltiu        tp, s7, -733
                  nop
                  sltiu        t4, s7, -943
                  mulhu        s10, s9, s8
                  ori          a1, t0, 1061
                  sra          t2, t0, s7
                  nop
                  divu         a4, t3, tp
                  and          a5, zero, a4
                  mul          a4, zero, t5
                  lui          s4, 421653
                  div          tp, s4, t6
                  slli         s4, s8, 21
                  slli         s1, a7, 10
                  lui          a5, 595618
                  remu         t2, s5, s9
                  mulh         t3, zero, s11
                  mulhu        a4, gp, a6
                  nop
                  remu         a1, s11, s7
                  xor          s1, s5, gp
                  divu         sp, s4, s2
                  slli         a2, t2, 10
                  sltiu        a3, ra, -1354
                  sub          t6, a3, a0
                  srai         t4, t5, 3
                  xor          a7, s8, t4
                  srai         t2, t6, 9
                  sltu         t6, a5, t2
                  sub          ra, s8, zero
                  sltu         a7, t2, s11
                  rem          zero, a5, tp
                  remu         ra, a3, t6
                  remu         tp, ra, s3
                  andi         s1, sp, -279
                  srl          a4, t1, a0
                  addi         a5, s8, -1257
                  xor          a5, a3, tp
                  mulhsu       gp, ra, s6
                  nop
                  lui          a4, 453886
                  div          s3, s11, t4
                  srl          t6, a6, a1
                  lui          a5, 356808
                  mulh         a5, a3, s7
                  slli         s7, s10, 11
                  addi         gp, a3, -1057
                  sll          s11, t0, a2
                  srli         gp, t4, 0
                  div          a3, ra, a4
                  mulhsu       t3, t3, t3
                  sltu         s5, t3, gp
                  srai         a3, a4, 8
                  rem          a4, t2, a5
                  slti         t4, a3, -614
                  srai         t4, a7, 13
                  mulh         t1, s11, a4
                  or           s0, s9, gp
                  mulh         gp, t6, t3
                  and          a4, a0, t5
                  slti         t1, s2, -415
                  remu         t5, a2, s0
                  andi         s5, a3, -1522
                  auipc        a3, 448276
                  addi         s8, s2, -574
                  slli         s1, t4, 23
                  and          a7, s9, s11
                  div          s7, s4, a4
                  sra          t3, sp, ra
                  slti         a2, s0, 1258
                  mulhsu       t2, s2, s8
                  mulhsu       s11, t5, a4
                  sltiu        ra, t5, -1749
                  remu         a5, a4, s10
                  srai         ra, a1, 19
                  slti         t6, t2, 209
                  srli         s8, s10, 17
                  srai         a4, s6, 1
                  slli         s4, ra, 11
                  mulhsu       sp, a4, a3
                  mulh         zero, gp, t0
                  mulh         a3, s9, s0
                  slti         t0, ra, 306
                  ori          s11, a0, 1748
                  and          a1, s11, tp
                  slti         a2, t3, 1066
                  divu         s10, s6, t5
                  sub          t1, s8, a7
                  div          s2, t6, t0
                  srl          a2, s3, a5
                  rem          a7, tp, a1
                  sra          s5, ra, s3
                  sra          s4, s3, sp
                  srl          s9, t1, s4
                  ori          a2, s1, 913
                  ori          t4, a0, 1861
                  nop
                  addi         s7, zero, -1341
                  srli         s1, s0, 8
                  slt          s4, tp, sp
                  srl          t6, ra, t4
                  lui          sp, 600068
                  addi         s10, s11, 485
                  slti         a5, s8, -1171
                  divu         s1, s10, s8
                  sub          s11, t2, a4
                  mulh         tp, ra, a1
                  andi         t1, a4, -1706
                  mul          s0, s4, s1
                  slt          a3, t4, a3
                  sra          s7, a3, a1
                  auipc        s9, 493465
                  slt          a2, t0, a5
                  xor          tp, s0, s10
                  srl          s8, s11, s7
                  lui          a1, 731440
                  sll          sp, s9, s1
                  srai         a7, s3, 19
                  nop
                  or           ra, t5, t3
                  sll          sp, s10, t5
                  ori          s3, t2, -1279
                  ori          a3, s10, 652
                  remu         a4, s7, s8
                  sltu         a7, t6, a4
                  xori         ra, s7, -1627
                  sub          t3, s3, s10
                  sltu         t4, a7, s1
                  nop
                  add          gp, tp, s9
                  sra          s5, ra, ra
                  lui          a4, 830597
                  srai         a3, a3, 28
                  slt          s5, s7, a7
                  srli         tp, a1, 0
                  mulh         s0, t6, s2
                  sra          t2, s7, a2
                  xor          s0, a1, t2
                  sll          a7, t0, s6
                  sra          s1, a4, s9
                  ori          t6, a5, -533
                  srli         t5, s11, 23
                  nop
                  sub          a3, t5, tp
                  rem          s10, s4, a2
                  srl          a7, a6, s4
                  sltiu        s0, t2, 1218
                  mul          t3, a3, s0
                  srli         ra, a1, 9
                  sra          a3, zero, t3
                  or           t5, a5, a5
                  remu         t4, s9, s6
                  sll          s11, ra, t3
                  xori         t6, t5, 433
                  remu         a2, gp, s2
                  slt          t6, t5, a5
                  srai         gp, t1, 24
                  slti         s4, a2, 569
                  andi         a2, t2, -1121
                  mulhsu       t0, sp, s7
                  divu         t0, s9, a0
                  sltiu        t6, t1, -833
                  srli         s0, s11, 21
                  sltu         a7, gp, t6
                  slt          a5, t2, a5
                  mulhsu       a2, zero, s6
                  lui          s1, 543562
                  sltu         zero, s8, s11
                  sltu         a4, ra, s1
                  remu         a5, s9, t5
                  mulhsu       ra, s10, t6
                  xor          a5, s10, t5
                  andi         s4, s3, -906
                  xori         zero, zero, -1465
                  and          s2, t3, s3
                  sll          t6, a2, s4
                  mulh         t4, s6, a4
                  lui          s1, 846990
                  andi         a1, t1, -150
                  sltu         tp, a5, s10
                  slt          a3, a0, zero
                  mulhu        a7, s1, sp
                  remu         s3, s3, s6
                  xor          gp, s9, a0
                  ori          s4, s9, 1744
                  andi         s9, t0, 1438
                  xor          a5, gp, a6
                  sltu         a1, zero, s9
                  or           s10, s1, s3
                  sra          a2, s10, a2
                  and          s9, gp, t2
                  slt          s8, t2, s0
                  sll          t5, s2, s0
                  srai         s8, s6, 4
                  div          s2, s4, ra
                  mulh         s10, a4, tp
                  or           s9, t6, a6
                  mulhsu       zero, a1, sp
                  sub          t1, a3, t3
                  sra          s3, s0, a5
                  remu         s10, s7, t2
                  auipc        s8, 353885
                  mul          s2, s2, t0
                  auipc        s2, 355069
                  sltu         t2, s1, a0
                  slt          t4, a7, zero
                  rem          t4, t5, s11
                  add          t1, t3, a2
                  addi         s0, s6, 639
                  xori         ra, a4, 17
                  srl          t0, t6, ra
                  addi         s3, tp, 2021
                  sra          s10, ra, tp
                  remu         t6, a3, s7
                  sltiu        tp, s6, -1668
                  sra          s11, s11, s3
                  divu         s1, a2, ra
                  auipc        s7, 367673
                  sltu         zero, s1, t0
                  or           s10, a2, a3
                  srl          s10, s4, ra
                  and          s7, a6, a1
                  addi         a4, a1, -1528
                  rem          s7, t0, t4
                  slt          a4, a6, s7
                  andi         s0, s6, 1182
                  nop
                  div          t6, s4, s5
                  and          a2, ra, a2
                  slt          s4, t6, s9
                  nop
                  ori          s4, a5, -1373
                  auipc        s4, 667678
                  add          s7, a7, s7
                  add          s3, t5, a7
                  mulh         t1, t4, tp
                  mulh         a4, t3, a2
                  ori          s8, s10, -509
                  nop
                  sll          s11, s9, a4
                  ori          s10, a7, 1140
                  addi         s4, s8, 239
                  ori          s11, a6, -1879
                  add          s10, a7, t6
                  lui          s5, 900532
                  mulhu        t5, a5, a4
                  and          s4, t1, s10
                  xori         t3, s0, -297
                  remu         zero, t2, a2
                  slt          s2, s1, a7
                  divu         a5, a6, t6
                  remu         s4, s8, s1
                  xori         t4, t6, 1946
                  and          s1, s9, s9
                  nop
                  srl          s10, a5, s6
                  slli         t6, s0, 21
                  slt          a1, t0, a3
                  nop
                  slti         s8, s9, 1820
                  nop
                  lui          s11, 14584
                  mul          t5, gp, s0
                  sll          a1, a4, s1
                  sra          a2, zero, t5
                  lui          t4, 404479
                  slt          t2, s7, s0
                  mulhu        a4, s10, s8
                  ori          s8, a7, 906
                  remu         s8, t6, a4
                  remu         s7, s9, t0
                  srl          s10, s11, t2
                  nop
                  or           s5, s4, zero
                  slt          a3, s6, s7
                  ori          ra, a6, -1701
                  xori         t0, s4, -607
                  auipc        s2, 237227
                  sltiu        t0, a6, 1855
                  sll          tp, s1, t5
                  lui          s2, 52591
                  auipc        t2, 913885
                  mul          t2, a6, gp
                  slt          a3, t0, a0
                  rem          a1, s9, a3
                  srai         a1, tp, 23
                  auipc        s3, 971067
                  remu         t1, a1, t5
                  sltu         t6, s6, a2
                  andi         t4, a6, -1790
                  addi         s10, a0, -1926
                  xori         s9, s4, -825
                  or           s0, t6, a1
                  or           t0, s4, t2
                  andi         s5, tp, -1819
                  sltiu        t1, sp, -752
                  sra          s7, zero, sp
                  and          ra, s6, t5
                  xori         s11, a1, 303
                  remu         t1, s1, gp
                  srai         t1, a5, 31
                  auipc        s5, 719377
                  remu         t4, a4, t5
                  mul          s0, a0, a7
                  remu         a2, sp, s6
                  sll          t5, a6, zero
                  add          s0, a7, tp
                  slti         t1, t2, 904
                  addi         sp, s4, 142
                  mul          a1, s7, zero
                  xor          t1, t2, a4
                  srai         tp, a3, 13
                  sltu         ra, t0, t5
                  srli         s2, t1, 3
                  and          t2, a5, a6
                  lui          s0, 195896
                  andi         s10, a7, -1096
                  sll          s9, t6, a6
                  ori          t6, s2, -783
                  div          sp, s2, s2
                  mulh         t1, s4, s9
                  auipc        s2, 17676
                  and          s9, s11, s2
                  slti         s0, t2, -292
                  remu         s9, t5, s10
                  remu         s2, a7, gp
                  slli         t3, gp, 8
                  mulhsu       t1, s2, s6
                  add          t1, s8, t4
                  remu         s4, t1, tp
                  add          gp, s9, t0
                  auipc        s3, 349878
                  mul          s10, tp, t2
                  xor          s7, tp, a6
                  add          sp, a4, s5
                  nop
                  xor          t2, t4, s7
                  srli         t3, a2, 8
                  sub          a1, s5, s3
                  xor          s1, s8, s8
                  slti         s2, ra, 1566
                  ori          a3, a3, 1768
                  mulh         gp, t5, t4
                  addi         tp, s11, -1632
                  sltu         t0, tp, a6
                  or           s7, s1, s7
                  rem          t6, a1, s9
                  addi         t3, a3, -1842
                  mulhsu       t4, a4, s1
                  nop
                  add          t6, zero, s5
                  andi         zero, s0, 1162
                  and          t6, s11, s1
                  rem          s11, a7, s11
                  or           s7, a2, s0
                  sll          a5, s9, zero
                  div          s5, a5, t5
                  sltiu        tp, s4, 137
                  sltu         zero, a4, t5
                  srl          t1, s11, a1
                  sll          a7, s8, tp
                  rem          a3, gp, s3
                  sll          s2, s2, zero
                  sltiu        a7, s1, 1309
                  sra          s10, a2, zero
                  add          s0, ra, sp
                  add          t2, s2, a1
                  sltiu        tp, a6, -1804
                  slti         s1, s6, 142
                  rem          a7, t4, a6
                  mulhu        t3, zero, s1
                  sll          tp, t5, t2
                  sub          a5, a0, tp
                  auipc        s2, 394777
                  srai         a1, a2, 17
                  lui          a1, 887891
                  rem          ra, ra, s0
                  divu         zero, s10, s5
                  slli         s7, sp, 31
                  sltu         s4, s2, t5
                  and          t0, s2, s2
                  sll          a1, s0, a5
                  mul          gp, t6, a0
                  remu         a5, ra, s3
                  mulhu        s9, t5, tp
                  srli         s9, sp, 31
                  sltiu        a4, a2, 682
                  remu         a5, t5, zero
                  lui          gp, 771236
                  srli         s8, a0, 23
                  ori          t3, s3, 1100
                  sra          t1, gp, a7
                  sub          a7, s8, s6
                  auipc        s7, 688193
                  sltiu        t5, gp, 880
                  mulh         t5, t6, t5
                  mul          sp, tp, s1
                  ori          gp, s6, -609
                  srai         ra, gp, 11
                  add          s4, s5, s6
                  sltu         s9, t6, s3
                  andi         a3, s0, -908
                  add          s1, s4, s1
                  addi         s5, s8, -1262
                  andi         s9, ra, 1217
                  mulh         a5, a0, t6
                  srai         s10, ra, 31
                  sub          s2, a2, s1
                  rem          a4, tp, s9
                  and          sp, a0, s3
                  or           s10, ra, t4
                  mulhsu       s3, s8, zero
                  mulhsu       a2, a7, s6
                  add          sp, t4, a0
                  sltu         gp, s8, s8
                  slt          a4, a7, a2
                  div          a1, s10, s4
                  or           ra, s8, s6
                  or           t6, s4, a3
                  mul          a3, a2, s0
                  mulhsu       ra, a6, s1
                  sltiu        zero, t1, -1441
                  mulhsu       a7, a4, s1
                  andi         a1, a3, -1646
                  addi         t0, s11, 1110
                  remu         s10, t5, a1
                  sltiu        a7, s8, -304
                  ori          s7, ra, 1366
                  or           s1, t1, s11
                  remu         t2, s3, t0
                  andi         a5, t4, 733
                  addi         a4, t1, -964
                  and          tp, gp, s4
                  mulh         ra, t2, t4
                  sll          tp, s2, s2
                  add          s10, t3, a5
                  lui          t2, 519417
                  sltiu        s11, a2, 712
                  srai         gp, s11, 3
                  srai         zero, t4, 30
                  srl          a4, t1, s7
                  andi         s5, zero, -1614
                  addi         a2, s11, -269
                  slli         a1, s4, 18
                  divu         t5, t1, a7
                  xor          zero, t2, a6
                  or           s1, t4, a1
                  and          s8, s11, a6
                  srli         t1, s11, 6
                  auipc        s1, 604723
                  lui          t4, 792448
                  srli         s9, a6, 2
                  add          zero, a6, a6
                  mulhsu       s1, a2, s11
                  xor          a7, t6, s2
                  slt          t6, a5, t6
                  nop
                  mulh         t4, a0, a3
                  slti         s7, gp, -1631
                  or           s4, s9, a2
                  xori         ra, a1, -68
                  div          s8, sp, t1
                  lui          a1, 969652
                  sltu         t0, a5, a2
                  lui          s0, 391851
                  and          zero, t1, t0
                  nop
                  and          a2, s9, t3
                  srli         t5, ra, 17
                  xori         s9, s11, 1196
                  sltu         t0, t1, t6
                  ori          s3, a2, -1978
                  xori         ra, t2, -230
                  sltiu        t4, s9, -682
                  srl          s0, t0, s8
                  slli         s10, a3, 25
                  srli         a2, s10, 15
                  srl          a5, t0, a6
                  nop
                  slt          s0, s6, t0
                  or           zero, a1, gp
                  rem          a5, sp, s9
                  xor          s4, tp, a3
                  and          s11, s3, a6
                  or           t0, a3, t5
                  sra          zero, a1, t3
                  nop
                  xor          s4, s8, s11
                  rem          a5, a3, t2
                  xor          ra, s9, a5
                  srli         t2, s5, 23
                  srai         a2, a2, 20
                  slt          sp, a2, a3
                  ori          a4, s1, -1965
                  srli         t6, ra, 4
                  slt          t3, tp, sp
                  xori         t0, tp, 556
                  srli         t3, a6, 27
                  mulhu        t4, s1, a1
                  sub          sp, a0, gp
                  divu         s5, s3, gp
                  slt          t6, t2, a3
                  and          zero, a0, a4
                  mulh         a5, t6, t1
                  sltu         a3, a4, tp
                  divu         s10, t1, t3
                  remu         t0, tp, s7
                  sll          a2, s9, t1
                  add          s1, a1, t2
                  or           s5, a4, t5
                  slt          s1, a2, t0
                  auipc        t3, 367403
                  rem          s4, ra, a6
                  nop
                  lui          t4, 995698
                  xor          t4, s7, a3
                  sll          a5, s5, a7
                  xori         t0, s1, -1517
                  auipc        gp, 903066
                  sra          s9, t2, t2
                  sra          s9, a0, a2
                  nop
                  srl          s7, zero, a3
                  sltiu        s2, t3, -2021
                  srai         a2, t4, 0
                  srl          zero, tp, a5
                  xori         s4, t3, 650
                  sra          t1, zero, sp
                  divu         s3, a1, s9
                  lui          zero, 149341
                  slt          t1, t1, s2
                  or           t2, t6, a4
                  add          s9, s6, gp
                  sub          t3, a4, s9
                  sll          ra, a1, t4
                  mulhsu       s10, a4, s7
                  sub          s8, s8, a6
                  mulh         sp, a4, t2
                  mulhsu       a7, s6, s3
                  srli         gp, a7, 27
                  mulhsu       t2, s8, s5
                  sltu         t1, s4, s8
                  mulhsu       a2, s9, gp
                  lui          s2, 362692
                  srli         s5, s11, 5
                  slt          t0, a0, gp
                  srai         t3, t3, 6
                  mulh         s9, s6, a1
                  mulhu        a3, t0, s5
                  sltiu        s7, a1, -1679
                  rem          t3, zero, s9
                  srli         ra, s2, 11
                  xor          t3, a1, s10
                  div          s8, a7, a4
                  add          s3, s5, t1
                  slt          s9, t5, s10
                  auipc        s7, 522524
                  ori          s7, s10, 1904
                  srl          s3, a4, t4
                  srai         sp, ra, 11
                  auipc        a1, 419694
                  div          ra, a3, t5
                  slli         s2, t4, 22
                  sltu         a7, s4, s11
                  or           a4, a5, t0
                  ori          t6, t5, -452
                  addi         t3, t4, 2029
                  and          zero, a7, zero
                  auipc        t6, 299871
                  or           a2, s9, s2
                  or           s11, s5, a0
                  or           t3, gp, s4
                  sra          t2, gp, a5
                  rem          s10, s11, t6
                  xori         s2, t5, -1477
                  ori          t3, t0, 1416
                  divu         s5, s9, t3
                  and          s8, a1, t1
                  srli         s3, s5, 21
                  sra          t2, s7, a4
                  mul          s8, t5, tp
                  srl          a7, s9, tp
                  sltiu        s11, s1, 1786
                  srl          a1, t6, t1
                  sub          a5, s9, a0
                  srai         s9, s9, 10
                  add          a3, s5, s11
                  slt          s2, s2, t0
                  srl          s8, s2, sp
                  sll          s1, s3, s7
                  addi         t4, a3, 1847
                  mulh         s2, s1, a2
                  or           s9, ra, zero
                  add          sp, a3, t0
                  sll          s4, a6, a2
                  auipc        s10, 919692
                  or           a2, s0, s4
                  sra          zero, a0, t0
                  auipc        s7, 751864
                  div          tp, s2, a1
                  remu         t3, s7, s3
                  mulhu        s3, s10, s2
                  add          a1, ra, t4
                  mulhu        s5, s5, t1
                  ori          s8, s3, -1214
                  div          s9, t5, s0
                  slli         s11, a2, 14
                  sltu         t5, t3, s7
                  mulhu        s11, s10, t5
                  div          sp, tp, t0
                  ori          a1, s0, 1740
                  slt          sp, s9, zero
                  addi         s4, s2, -1938
                  slt          sp, t3, sp
                  and          s4, ra, tp
                  srl          s1, s3, t3
                  lui          s4, 743458
                  add          t4, s10, s9
                  auipc        gp, 1036166
                  slti         t0, s11, 234
                  srl          a1, s2, zero
                  ori          s9, s6, -902
                  remu         zero, s1, t2
                  div          t5, s7, a1
                  addi         ra, zero, 399
                  and          s9, s10, s9
                  rem          s10, tp, t3
                  remu         s5, s1, s6
                  srai         a2, t5, 10
                  auipc        t4, 778030
                  sltu         s8, a2, t0
                  mulhu        t6, tp, t2
                  xor          s9, a6, s2
                  sltu         s4, s9, t1
                  sra          sp, s2, s1
                  mulh         t1, s2, sp
                  sltu         a1, s2, t5
                  sub          s8, s3, s8
                  divu         s7, sp, s6
                  or           s3, t5, a7
                  srli         t1, a1, 16
                  xori         t4, a3, 354
                  xori         s9, s0, -1593
                  mul          a3, a3, t1
                  andi         a2, s7, 205
                  sra          sp, a1, tp
                  add          s4, a6, s8
                  ori          a3, ra, -1675
                  srl          a7, s2, s4
                  srl          s4, gp, t4
                  or           ra, a1, s11
                  slti         a5, s1, -673
                  srl          s4, zero, gp
                  xor          s3, s8, s0
                  mulhu        tp, a3, sp
                  srli         s3, s0, 16
                  mulhsu       s11, a6, s3
                  mulh         sp, s5, s8
                  xor          s9, s1, s5
                  sltu         s4, a1, s6
                  mulhu        s4, s4, a6
                  remu         tp, s7, t3
                  or           s8, gp, a5
                  div          s8, a1, s4
                  add          gp, t1, sp
                  srli         a4, s3, 5
                  srli         t0, zero, 22
                  srai         s4, t0, 15
                  mulhsu       s1, t0, t2
                  mulh         gp, a1, ra
                  sub          t3, sp, a7
                  auipc        a5, 222206
                  sra          a2, sp, s3
                  slti         a1, s9, 855
                  mulhu        t4, s3, a3
                  slti         t2, t5, -1294
                  div          t6, a6, s10
                  slt          t1, a7, ra
                  mulhsu       tp, s7, a7
                  nop
                  srl          t5, t2, t2
                  srai         a5, gp, 21
                  srai         s8, t3, 15
                  addi         s8, t5, 197
                  xor          t2, t5, zero
                  nop
                  sltiu        s8, t3, 230
                  srai         s7, ra, 28
                  sll          a7, s8, s8
                  divu         s10, t0, s0
                  sltu         a3, s5, a5
                  divu         s3, a0, t6
                  lui          a4, 23060
                  mul          a7, t0, t3
                  auipc        gp, 60207
                  mulh         s2, t0, s6
                  auipc        s9, 197650
                  addi         t4, a3, 265
                  srli         t2, a7, 14
                  srai         s11, gp, 14
                  sub          s11, t3, a4
                  sltu         a2, t6, s6
                  sltiu        a7, s3, 1540
                  sltiu        s4, a0, 1859
                  and          s10, s6, a1
                  xor          sp, ra, a1
                  andi         t0, t3, 421
                  nop
                  mulhsu       a4, t6, s2
                  andi         s3, t3, 1685
                  ori          s11, t2, -1165
                  remu         gp, tp, t6
                  remu         sp, zero, a3
                  srai         s5, s0, 5
                  andi         s8, tp, -1245
                  mulhu        a2, s5, t3
                  srl          s4, s10, t6
                  add          ra, a0, gp
                  rem          t4, s7, gp
                  srai         s10, s0, 23
                  or           s4, s5, a3
                  xori         t5, a4, -473
                  mulhu        t3, a1, s9
                  rem          a5, a4, s6
                  auipc        ra, 388494
                  slti         t5, gp, -146
                  srli         s2, t5, 28
                  and          zero, s8, t6
                  slti         zero, s8, 376
                  remu         s11, a5, s3
                  andi         a5, a7, -1898
                  lui          a3, 262090
                  addi         t0, t1, 1039
                  slt          t3, t6, t6
                  ori          s3, s1, 928
                  andi         a4, t2, 1272
                  andi         s0, s3, -1990
                  srl          s3, ra, s0
                  sltu         s5, s11, tp
                  divu         a1, sp, s10
                  mulhu        a4, s8, s10
                  add          t0, s3, s11
                  xori         s2, t1, -1459
                  and          s9, t2, s10
                  mulh         t5, s4, t5
                  xori         s3, a1, -468
                  slti         t1, t2, 1687
                  auipc        a1, 482550
                  srai         a1, s6, 10
                  auipc        gp, 859656
                  sll          s8, s10, t5
                  srli         gp, t5, 26
                  slt          a4, s2, a1
                  lui          t6, 54236
                  xori         s4, s4, -546
                  andi         s7, tp, 1907
                  slti         t5, a2, -522
                  andi         s4, t1, 491
                  lui          s7, 143014
                  mul          s3, s0, a4
                  sltu         gp, s4, a1
                  andi         zero, t1, -1640
                  addi         s1, s1, 1616
                  mulhsu       s2, s1, a6
                  remu         a7, a4, s10
                  sll          a4, s2, t0
                  xor          a1, a6, s0
                  srl          a4, s3, t1
                  div          a3, a5, a1
                  ori          a2, ra, -1111
                  andi         a2, t3, -1011
                  xor          t4, a0, gp
                  ori          a5, s1, 2027
                  xori         ra, s10, 131
                  sra          t6, a2, a0
                  sub          t5, s1, a7
                  xori         sp, s5, 159
                  slli         s7, a0, 24
                  srai         t6, a3, 27
                  add          t3, s0, a6
                  slt          s5, s8, s8
                  div          a7, t3, ra
                  rem          s2, s6, t6
                  addi         s2, s4, 1721
                  and          gp, gp, s9
                  xor          s8, a6, tp
                  ori          a1, a2, -964
                  mulhsu       a1, gp, s9
                  mulhsu       s9, s11, a2
                  sltiu        s7, a1, -1578
                  slt          t4, s5, s6
                  rem          s10, a7, ra
                  divu         sp, s6, zero
                  ori          a3, t5, 1831
                  auipc        tp, 285213
                  slli         t2, s0, 18
                  sub          ra, t5, t3
                  srai         s4, a2, 9
                  srli         s0, s3, 31
                  sltiu        s3, zero, 666
                  xori         a3, s1, -1962
                  sub          a3, t1, a6
                  mulhsu       s7, a4, s9
                  slli         t1, s0, 6
                  sra          t3, s10, s5
                  sra          a4, a1, s4
                  sub          s3, s10, s9
                  sub          t3, s5, a1
                  and          tp, zero, ra
                  ori          gp, s0, 1867
                  nop
                  xori         a5, s5, 1601
                  andi         t0, s7, 1749
                  mulhsu       s3, t5, a0
                  srai         s0, a2, 15
                  rem          s1, ra, s4
                  xori         a1, t6, 1670
                  slti         t3, t0, 954
                  sltiu        s8, tp, -850
                  and          s10, s5, s9
                  mulhsu       s10, gp, s6
                  rem          s2, a1, gp
                  ori          s1, s10, -433
                  sltiu        s5, tp, -715
                  sll          t4, s5, a6
                  srl          t2, a7, s2
                  remu         s9, gp, s11
                  lui          ra, 208744
                  slt          t2, a4, t3
                  auipc        ra, 759881
                  slli         t3, s4, 16
                  add          t1, t1, tp
                  mulhu        sp, a0, s5
                  and          s7, t3, t2
                  xor          t6, t6, tp
                  slt          a5, s0, ra
                  lui          s3, 715357
                  mulh         s2, s0, ra
                  mulhsu       a3, zero, s7
                  slli         zero, a7, 25
                  xor          sp, t6, s3
                  slt          s7, ra, s9
                  nop
                  mulhu        t1, s10, s7
                  srli         s9, a0, 13
                  srai         s2, t2, 17
                  auipc        a7, 90681
                  lui          s7, 761419
                  nop
                  auipc        t2, 329701
                  mulhsu       s9, s5, s8
                  remu         s9, s7, a7
                  mulhsu       s0, t0, s7
                  mul          s7, a6, a4
                  lui          t4, 187334
                  ori          a7, a4, -958
                  nop
                  add          t1, sp, t0
                  srai         t0, s0, 2
                  mulhu        t6, a1, s4
                  remu         a2, a1, gp
                  ori          s2, tp, -1674
                  srli         tp, s8, 10
                  sltu         s0, t2, s2
                  lui          ra, 809448
                  sra          s11, s0, gp
                  srli         s2, a3, 6
                  slt          s4, s0, t3
                  sra          a1, s7, t5
                  mul          a4, s9, gp
                  sra          s5, a5, s3
                  mulh         t3, a3, gp
                  andi         a1, t0, 124
                  mulh         s1, s7, t1
                  sll          ra, zero, a2
                  srl          a4, s10, a0
                  srl          s5, t3, a5
                  srl          s8, tp, sp
                  mulhsu       s8, s10, a3
                  ori          ra, zero, -1693
                  sltiu        a1, s5, 2010
                  mulhsu       a7, t3, t4
                  xori         a5, s1, 1206
                  sub          s8, s3, t3
                  srl          tp, a2, s8
                  sll          s1, t2, t5
                  sub          t1, t1, s5
                  auipc        sp, 64274
                  mulhu        ra, a2, s7
                  sltu         a4, s4, s7
                  divu         a2, s2, a5
                  divu         s4, a7, ra
                  sra          s7, t6, a6
                  mulhsu       s3, a0, s4
                  srl          zero, t3, s8
                  srli         s8, s1, 20
                  or           s9, a4, a1
                  auipc        t6, 610654
                  xor          a7, a5, ra
                  srli         zero, ra, 24
                  divu         t6, a6, s2
                  sub          s0, s10, t5
                  sra          sp, a4, a5
                  remu         s4, a0, t2
                  addi         s11, t0, -1956
                  mulhu        a7, s3, t3
                  sll          t3, t4, s0
                  sll          s3, a5, a1
                  or           s9, t0, a7
                  addi         a7, s5, -1990
                  slli         s9, s9, 1
                  sra          t0, t6, t5
                  slt          s0, s10, s10
                  nop
                  xori         s2, ra, 633
                  slli         t5, a6, 20
                  auipc        t4, 526904
                  and          s11, a6, t2
                  add          t5, a7, a6
                  xor          s7, s6, gp
                  srli         a7, t4, 25
                  nop
                  xori         s1, a4, 1005
                  add          gp, s2, t3
                  sltiu        t4, a4, -916
                  add          a3, s6, t2
                  srl          ra, a4, t1
                  sltu         ra, a7, s9
                  addi         a7, s10, 446
                  sll          t5, s3, t4
                  mulh         a2, s1, s2
                  slt          t2, tp, s8
                  sltu         t2, gp, s10
                  ori          t6, ra, -584
                  div          s7, t3, s10
                  mulhsu       sp, s9, a6
                  sub          sp, t4, t3
                  sltu         s4, t0, s1
                  nop
                  srai         s10, s9, 19
                  mulhsu       ra, s6, a3
                  slt          s5, s5, a5
                  xori         s7, gp, 1226
                  slli         s10, a7, 18
                  sll          gp, t5, s11
                  xori         s0, t4, -911
                  ori          a2, s3, -1653
                  mulh         s1, s4, s4
                  andi         s2, s3, -859
                  slli         s1, s5, 27
                  mulhsu       t4, s7, s11
                  nop
                  or           a5, sp, t2
                  mulh         s1, a2, s2
                  add          s7, zero, s3
                  xori         s7, t1, -407
                  slti         a5, t4, -1540
                  xor          a4, t2, a1
                  mulhu        zero, a5, zero
                  ori          tp, a5, 156
                  sub          zero, t0, a5
                  xor          s7, t1, t3
                  mulhsu       s7, a7, s4
                  slli         s8, a7, 30
                  sll          t1, a1, s9
                  sub          t6, s10, s8
                  mulhu        a4, s2, gp
                  and          zero, ra, a5
                  auipc        sp, 949959
                  sra          zero, s6, gp
                  nop
                  slti         t6, s2, -1462
                  lui          s8, 694502
                  addi         s11, a4, 1581
                  sra          t4, a4, gp
                  sra          a7, t3, s0
                  or           t0, a6, s9
                  lui          a2, 1003033
                  slt          s2, t5, a2
                  sll          a2, s2, a1
                  divu         s8, a4, t1
                  nop
                  mulhsu       s2, t1, sp
                  sra          a1, s7, sp
                  srai         a2, a2, 17
                  mulhu        s3, ra, t3
                  slli         s4, s11, 4
                  slti         t2, s8, 1629
                  remu         s5, t1, s7
                  auipc        a2, 1015237
                  div          gp, s10, t0
                  divu         s0, t0, a6
                  rem          s1, a5, s11
                  nop
                  addi         gp, tp, 25
                  auipc        s3, 966954
                  or           ra, s0, s1
                  mul          t4, s3, a4
                  rem          t1, s3, a2
                  mulhu        a7, s5, s7
                  rem          s7, a7, a7
                  sll          t4, a4, s10
                  srl          s7, tp, s2
                  div          t2, a2, s5
                  remu         s3, t1, t0
                  sub          t6, t3, s7
                  or           s8, t6, s11
                  slt          t4, sp, s7
                  nop
                  slti         sp, a2, -676
                  mulhu        s0, s6, s9
                  sll          s2, s4, a7
                  sltiu        s7, s4, 1801
                  slt          t4, a3, s5
                  lui          a4, 952612
                  sll          s2, s2, a1
                  nop
                  divu         t4, ra, s3
                  xor          s11, s10, zero
                  addi         s0, a7, -535
                  mul          a2, a2, t4
                  or           s3, a0, t3
                  sra          s4, a0, a4
                  nop
                  rem          s1, s10, s1
                  srli         t6, s6, 28
                  auipc        s5, 553468
                  mulh         gp, a1, gp
                  slt          a1, s8, s10
                  addi         s9, s10, 463
                  div          a5, t1, t6
                  srl          a7, s8, a5
                  mulh         s9, s9, s11
                  srl          a2, a6, t3
                  srai         s0, t5, 1
                  addi         s7, a7, -404
                  srai         s11, s0, 2
                  sltiu        t2, s1, -239
                  andi         t1, a6, 851
                  srli         s10, s0, 9
                  slli         sp, a0, 22
                  div          s11, a3, t2
                  divu         t3, t5, t3
                  addi         s2, sp, -698
                  sltu         a2, gp, ra
                  slli         ra, a1, 8
                  ori          s8, a7, 1028
                  srli         t4, a5, 1
                  ori          ra, sp, 1968
                  sll          s3, s3, s10
                  slli         t1, s9, 2
                  mul          ra, s11, t5
                  srli         a3, tp, 1
                  mulhu        s11, t1, t5
                  sra          gp, tp, s8
                  addi         s1, t3, 1255
                  xori         ra, s9, -1371
                  slt          s5, a2, a3
                  or           a5, t4, t6
                  sltiu        s5, s11, -1586
                  divu         s3, s3, s2
                  xori         s9, s4, 2031
                  add          a7, s1, sp
                  nop
                  sra          a7, t1, s4
                  nop
                  sra          t6, s6, t1
                  mul          s7, a6, t6
                  sub          sp, a5, a7
                  rem          t1, s9, s7
                  xor          s5, a6, a6
                  rem          t0, s6, a4
                  xori         s0, s5, 163
                  auipc        t5, 1010431
                  add          t3, t4, s7
                  srai         t6, a6, 24
                  srai         t2, s0, 1
                  lui          s10, 454905
                  sub          a5, s10, s0
                  slti         s10, a2, 611
                  sub          tp, s0, t4
                  srl          s10, t2, s10
                  xori         s3, s8, 41
                  slt          t5, a0, s3
                  slt          t2, t0, s11
                  slli         s8, a0, 6
                  sltu         s5, a7, a3
                  sltiu        t4, s11, -1781
                  srli         s2, s10, 25
                  nop
                  add          t5, a0, gp
                  xor          s10, s3, t5
                  slti         t4, s7, -56
                  rem          zero, t4, s9
                  srai         ra, s3, 21
                  ori          t1, a1, 1198
                  mulhsu       t4, s8, s10
                  sub          t6, t6, s9
                  slti         a7, t3, -1936
                  div          s4, a5, a3
                  slt          a3, s3, ra
                  or           s0, t3, a1
                  mulhsu       s11, a1, sp
                  addi         t2, t5, 87
                  add          zero, s0, a1
                  sltiu        s9, t3, 160
                  xor          a1, a5, t4
                  rem          s9, tp, s5
                  xori         t6, a3, 1961
                  mulh         s3, s8, a2
                  ori          t2, sp, 133
                  add          a3, s11, tp
                  slt          gp, ra, s11
                  addi         t6, s2, 1148
                  lui          t3, 562382
                  or           a7, s8, t2
                  sll          a7, tp, gp
                  sltiu        a7, a3, 886
                  xor          s5, zero, t3
                  add          s0, t4, s2
                  ori          a3, t0, 1229
                  div          s11, s0, a6
                  sll          t5, a2, s2
                  ori          s2, a0, -1763
                  srli         a7, s7, 27
                  mul          t2, gp, a5
                  addi         a7, s1, -58
                  rem          t0, a6, s10
                  mulhsu       a1, s7, s10
                  srl          t1, a2, a1
                  srai         s3, s9, 30
                  sub          t5, zero, zero
                  sltu         s5, t1, a7
                  ori          s3, t0, 1746
                  srl          a5, s7, t5
                  slli         sp, a4, 21
                  rem          t0, s7, zero
                  remu         t5, s4, s9
                  srai         zero, s4, 11
                  andi         s4, s7, 493
                  sub          s8, t0, s5
                  sltiu        s10, s1, -1241
                  div          s8, a2, a1
                  slli         sp, s5, 31
                  divu         t1, s0, a5
                  rem          a2, s1, s6
                  mulhu        t1, s10, s0
                  sltu         s8, a5, a6
                  auipc        s9, 285517
                  div          t6, t5, t4
                  mulh         a3, t3, t5
                  sltiu        t6, t0, -707
                  remu         a7, s4, s7
                  and          s9, t2, t6
                  div          s11, a7, s6
                  srl          s2, tp, a2
                  mulh         s3, s7, a0
                  remu         t4, t1, s2
                  rem          s2, s2, tp
                  mulhsu       zero, s2, t4
                  remu         s10, tp, a6
                  mulh         ra, s4, s1
                  srl          s9, s11, sp
                  ori          s8, s8, -647
                  srl          s10, s1, gp
                  add          s10, a0, t5
                  and          s7, t5, a1
                  lui          a3, 194015
                  lui          sp, 760654
                  div          s9, s3, t1
                  sub          ra, t4, s11
                  sltu         s0, a4, zero
                  andi         s2, s8, -1136
                  sll          s10, s10, s2
                  sltiu        s7, a6, -1563
                  divu         sp, s4, t1
                  div          t4, t3, t3
                  slti         gp, t3, -595
                  slt          a7, a2, s4
                  andi         gp, s2, -16
                  divu         zero, zero, zero
                  slli         s2, a3, 16
                  ori          t2, a6, 1405
                  remu         a7, t1, s2
                  remu         t1, a7, gp
                  rem          zero, s8, a3
                  sltu         s7, s11, a2
                  srl          s0, s8, s7
                  divu         sp, t0, t2
                  lui          a2, 291423
                  sltu         a7, tp, tp
                  divu         t3, s9, a1
                  andi         ra, t3, -1741
                  mulh         a7, t3, a0
                  srli         s1, s5, 28
                  xori         gp, s1, -756
                  ori          t2, s3, 1355
                  nop
                  sub          a1, s4, s6
                  ori          t1, s2, 921
                  rem          t3, t5, tp
                  xor          ra, t0, t3
                  divu         s0, a0, s4
                  mul          gp, s11, s7
                  rem          s11, s8, sp
                  and          t6, s4, a1
                  sll          t3, s8, t6
                  mulhu        zero, a6, ra
                  xori         t5, a4, 654
                  addi         t0, s1, -1227
                  mulh         a2, s9, s7
                  mulh         s1, s4, t1
                  slli         s4, sp, 10
                  add          a7, t4, t5
                  slt          s1, ra, t3
                  andi         a3, s3, 986
                  sub          a5, s9, sp
                  add          t1, ra, a4
                  xori         zero, t6, -1616
                  mulh         tp, a6, s7
                  slli         a7, a0, 8
                  sub          s10, gp, s6
                  mulhsu       a7, t4, zero
                  srl          a1, t4, a7
                  sltu         tp, s1, s3
                  slti         s7, s9, -54
                  srli         t0, ra, 14
                  mulhsu       s10, t2, a1
                  remu         s4, s8, t0
                  mulhu        ra, s4, s10
                  sra          sp, a1, t3
                  and          s4, t0, t0
                  srai         a4, t3, 18
                  div          t3, zero, t6
                  sltiu        t4, s2, 1380
                  sltiu        a2, sp, 1987
                  slti         a5, tp, -677
                  lui          s2, 210913
                  rem          t1, a7, a3
                  lui          a3, 179720
                  slli         sp, s3, 12
                  divu         a5, t6, s4
                  add          t5, s3, zero
                  xori         s10, ra, 1546
                  slt          t2, s2, a0
                  sll          a1, ra, zero
                  auipc        ra, 185583
                  slli         a4, a4, 10
                  lui          s2, 863279
                  mul          t6, s10, sp
                  slt          t3, t1, t4
                  mulhsu       s4, a5, s5
                  mulh         s8, t1, s2
                  mulhu        a3, s7, s8
                  mulhsu       a2, s2, a3
                  sub          s8, a1, zero
                  slti         s11, t0, 75
                  srai         s0, s6, 14
                  sll          s11, t6, s5
                  mulhu        s8, a2, s1
                  mulhsu       s7, zero, t0
                  sll          zero, a1, s11
                  mulhu        a5, t6, a1
                  lui          t5, 502088
                  or           s4, a1, a7
                  srai         s0, a7, 16
                  add          s11, a6, a6
                  sltu         s10, t2, s8
                  mulhu        s3, s3, zero
                  rem          a7, zero, t3
                  sra          t4, s0, s11
                  srai         s4, a4, 3
                  srli         s11, zero, 3
                  srai         s7, s10, 22
                  mulh         s11, a2, s9
                  srl          s2, t1, t6
                  mulhu        s2, s8, t4
                  slli         tp, ra, 23
                  mulhsu       t3, t0, t5
                  mulhu        t2, t0, s1
                  xori         s10, s2, 391
                  mul          s10, t0, s11
                  sll          a4, tp, a7
                  sub          t2, t0, t5
                  xori         s3, t5, -745
                  div          t5, tp, s3
                  remu         t3, s2, t0
                  sra          t0, sp, a0
                  sub          t5, tp, t5
                  and          sp, s7, s11
                  mulhsu       a3, a3, a3
                  sub          ra, t6, sp
                  add          zero, t3, a1
                  add          s4, s3, s3
                  mul          s8, a3, tp
                  sltu         t3, t2, tp
                  and          ra, a7, s4
                  remu         s11, ra, s0
                  and          s7, s7, a7
                  xor          t0, t2, sp
                  remu         s4, s8, s3
                  ori          gp, a3, -735
                  andi         a4, t4, 586
                  nop
                  divu         a1, gp, a6
                  ori          s0, a6, -749
                  srl          s5, s0, a3
                  andi         t5, sp, -1073
                  mul          gp, t4, s2
                  auipc        ra, 189531
                  auipc        a5, 658871
                  slti         t6, t4, -1356
                  slti         t3, s2, -1614
                  slti         a3, t1, -441
                  sub          a2, s5, a3
                  xor          a4, t3, a7
                  divu         s5, t4, t3
                  mulh         t3, a4, a0
                  xor          s0, sp, gp
                  xori         a3, t5, 1996
                  divu         t6, t4, s11
                  remu         ra, t5, a4
                  srli         s3, s10, 29
                  andi         t4, t1, -1522
                  sltiu        s9, a3, -1079
                  srl          zero, s10, a0
                  mulhu        t5, a2, s7
                  remu         s11, tp, s3
                  sll          a2, t0, t1
                  rem          a7, t3, sp
                  mulhu        s9, a2, s6
                  sra          sp, ra, s4
                  mulh         a5, t3, a4
                  mulhu        s2, t2, t0
                  div          s11, s5, a3
                  add          sp, a5, s11
                  xor          s9, s4, a1
                  and          t0, a5, t0
                  auipc        t1, 18873
                  rem          ra, s0, t3
                  sltiu        t5, s1, -1740
                  srli         s4, t6, 26
                  sltiu        s10, t5, 1439
                  srai         t3, tp, 16
                  sltu         a5, t0, s0
                  mulh         s0, sp, t2
                  sltu         a3, s11, a4
                  lui          s0, 703011
                  lui          s1, 278367
                  ori          a7, gp, 1688
                  sltu         s8, s6, s0
                  andi         s7, s11, 169
                  auipc        s9, 137055
                  add          s0, a5, sp
                  srai         t5, s7, 0
                  rem          a4, a2, t4
                  remu         s8, s11, s11
                  add          a7, tp, t4
                  add          s3, a3, s2
                  sra          s4, zero, a5
                  sub          t0, t4, a6
                  nop
                  addi         a2, a2, 780
                  xori         s11, s8, -133
                  auipc        tp, 699923
                  add          a5, s7, t2
                  slli         sp, gp, 11
                  slt          s2, a6, zero
                  lui          s8, 927405
                  mulh         t0, sp, ra
                  slli         t3, t2, 16
                  slt          ra, s1, sp
                  slt          s0, s4, s5
                  auipc        a5, 568316
                  mulhsu       a5, s7, ra
                  mulhsu       t2, s5, tp
                  and          t0, s5, s7
                  andi         s8, sp, -734
                  auipc        s8, 565652
                  xor          a3, t4, a1
                  xori         t1, a6, 1493
                  sltiu        a4, a4, 1756
                  mulhu        t1, sp, tp
                  lui          t0, 157979
                  addi         s5, s7, 1726
                  mul          s8, s1, s3
                  nop
                  sltu         s3, a7, tp
                  mulhsu       ra, a2, s8
                  mulh         a4, s5, t6
                  slt          s7, s0, s1
                  slt          s1, a4, s4
                  sra          t6, t5, s0
                  nop
                  sll          sp, tp, ra
                  mulhsu       s7, a5, s5
                  mulhu        ra, s2, a1
                  xori         a1, a7, -94
                  and          a1, s0, gp
                  nop
                  xor          s4, gp, s0
                  slli         s11, a0, 22
                  addi         s9, s7, 1521
                  sra          s8, a0, a5
                  srli         s8, t4, 12
                  divu         t4, s10, a4
                  xor          s10, s4, s3
                  sltu         s2, s11, t0
                  sub          a2, t6, s0
                  mulhsu       t6, t3, zero
                  addi         s8, t6, 1934
                  auipc        t3, 870656
                  lui          s2, 596252
                  sll          t3, t0, s6
                  slt          t2, s0, s10
                  or           t0, s4, a4
                  slli         s3, a0, 10
                  slt          s1, gp, a1
                  auipc        s5, 697630
                  sra          t1, a4, a4
                  sltu         s8, t2, s8
                  slti         a7, a0, 581
                  nop
                  ori          a4, sp, -807
                  sll          a1, t2, tp
                  srai         s1, a1, 30
                  srli         sp, t5, 18
                  mul          t5, sp, t2
                  xor          s3, t0, s11
                  mulhsu       zero, a2, ra
                  slt          a3, a3, s5
                  div          t5, a2, s5
                  ori          t4, t1, -285
                  rem          sp, s2, s11
                  auipc        s11, 907374
                  sltiu        s4, a0, -1252
                  add          t4, t6, s8
                  rem          gp, t3, a5
                  sub          s1, ra, s2
                  or           s7, t5, t6
                  sll          ra, s2, tp
                  mulh         ra, s8, s10
                  nop
                  srli         s0, t2, 16
                  sra          t6, sp, ra
                  div          s2, t0, a7
                  srai         s5, a4, 22
                  auipc        a4, 948783
                  srl          s4, t5, a6
                  mulhsu       t6, a0, a2
                  mul          a5, a7, a4
                  rem          s10, s5, s6
                  add          s11, s9, a0
                  xor          ra, s3, s2
                  auipc        tp, 1022473
                  andi         t1, t4, -127
                  mul          s3, s1, t6
                  sltu         s0, s4, tp
                  slt          s4, ra, t6
                  srli         t2, t2, 8
                  remu         t0, s1, t4
                  sltiu        s11, s4, 591
                  mulh         s4, a5, gp
                  sub          s11, s1, s10
                  remu         s1, s6, gp
                  and          gp, a1, t5
                  andi         t6, s2, -1620
                  sltiu        t1, a3, 1254
                  mulhu        s7, s11, s7
                  divu         a7, s1, zero
                  mulh         s5, a5, a0
                  remu         s11, a6, t4
                  remu         a4, t1, a1
                  mulh         a1, t2, t2
                  xori         s10, t2, 416
                  add          t1, s7, s11
                  slli         s2, a1, 1
                  xor          s5, s8, s6
                  slti         a7, s3, -369
                  srai         sp, a2, 30
                  ori          t5, s7, -1680
                  sra          s2, s11, a6
                  sll          t5, a6, s3
                  slti         tp, t1, -1590
                  add          a1, s0, gp
                  srai         t5, s10, 8
                  sltiu        s0, s1, -1094
                  rem          sp, sp, t2
                  nop
                  ori          a4, s1, 1164
                  andi         s0, zero, 1371
                  rem          s1, s5, s4
                  slt          tp, s6, t4
                  mul          t5, ra, s0
                  ori          s0, gp, -1048
                  divu         s10, s7, a7
                  div          s7, s0, s8
                  and          a3, gp, sp
                  slt          a7, s5, t2
                  srai         t0, s8, 21
                  slli         a2, a5, 31
                  remu         s10, t1, t1
                  srai         gp, gp, 7
                  divu         t5, s4, a6
                  nop
                  addi         s11, s4, -877
                  sub          t6, s2, s3
                  or           t5, s4, gp
                  addi         s1, gp, 1914
                  ori          t5, s1, 714
                  rem          ra, s3, t1
                  and          t5, t3, t4
                  sll          t2, a4, s0
                  xori         s9, a0, -1590
                  sll          s2, s0, s9
                  ori          s5, a4, -1485
                  sub          a1, t2, s8
                  divu         t3, s4, s2
                  mulhu        s4, a3, s3
                  mulh         tp, a2, a4
                  sltu         t2, s5, s1
                  and          zero, a4, s11
                  mul          a7, a4, t3
                  sltiu        t4, a2, -1821
                  mulhsu       t2, s10, s7
                  xor          t1, a5, s3
                  mul          a3, a3, a4
                  sltu         s7, s8, t6
                  andi         t6, a4, -1002
                  sub          s7, sp, a0
                  rem          a7, s2, ra
                  divu         s2, a2, s2
                  ori          t4, zero, 1526
                  ori          s2, a3, -1852
                  slt          t2, t6, s3
                  srl          a7, s9, t2
                  mulhsu       t2, s6, a4
                  slti         zero, s7, -1174
                  divu         s1, a4, s4
                  srli         s3, s11, 3
                  xori         s3, t0, 745
                  mulhu        s9, t3, a3
                  xor          s11, sp, s4
                  sltu         t2, a6, t1
                  srl          s9, t1, s8
                  lui          a3, 367557
                  divu         t5, a0, a2
                  srl          a1, tp, s2
                  mulh         a7, s5, a1
                  or           a2, a3, a4
                  slti         a2, s9, 182
                  ori          s11, a7, -1781
                  lui          sp, 611247
                  srai         t3, a3, 18
                  or           sp, t4, tp
                  div          s4, s1, s11
                  auipc        tp, 711324
                  srai         s0, gp, 22
                  add          ra, s4, ra
                  srl          t0, s3, s8
                  slt          s3, tp, s5
                  divu         s0, s2, s4
                  slt          s3, tp, zero
                  remu         a2, a3, s4
                  lui          a1, 13896
                  mulh         tp, s4, s4
                  div          tp, s6, a1
                  addi         s11, a5, 1157
                  srai         s1, s10, 3
                  srl          a2, t4, t1
                  mulh         t5, a5, s11
                  sll          s8, gp, a5
                  sltu         a1, t5, a0
                  rem          tp, zero, a4
                  srai         s2, s9, 18
                  and          s2, s5, s8
                  sltiu        t0, t1, -270
                  mulhu        s11, t6, s0
                  auipc        t6, 517701
                  lui          a7, 237459
                  auipc        ra, 560817
                  srl          t1, s9, a6
                  remu         t2, a5, a7
                  addi         zero, tp, 1751
                  xor          t5, zero, ra
                  srl          s3, a6, a2
                  or           t6, a4, t4
                  andi         t2, sp, -1522
                  nop
                  remu         a2, s6, t2
                  divu         zero, s5, s6
                  ori          t5, t4, 918
                  lui          t5, 561601
                  add          a2, s8, a7
                  rem          t5, sp, t6
                  andi         s8, gp, -621
                  ori          t6, a1, 982
                  sub          s8, a1, a3
                  sll          s5, a7, t3
                  sub          s9, gp, a6
                  sll          tp, s1, s5
                  sll          t4, t4, s0
                  srl          s0, s3, s11
                  slti         t3, s10, -543
                  srli         gp, t1, 1
                  xor          s3, s5, a0
                  mulhsu       a4, s11, a4
                  ori          s8, t1, 1263
                  slti         s1, t0, 157
                  slt          s7, a4, a2
                  add          t1, t5, t3
                  lui          s4, 943625
                  slt          t2, s8, s5
                  ori          t1, s1, 1185
                  srli         t3, a2, 20
                  mulhsu       s5, t2, a6
                  sub          a1, t2, a0
                  andi         t0, a2, -1977
                  add          t4, t2, s8
                  nop
                  slli         sp, s8, 13
                  srl          s1, t5, a5
                  mulhsu       s5, zero, t4
                  sra          t3, s3, ra
                  slt          t5, gp, t1
                  slti         a2, a3, -1130
                  or           a4, t5, s7
                  mulhu        s7, s7, ra
                  slt          a3, t2, s8
                  andi         t2, s3, 1008
                  mulhu        s3, t3, a0
                  sll          s4, s11, s5
                  mulh         a1, s10, s5
                  xor          t3, a1, gp
                  ori          s5, a0, 1258
                  andi         zero, a5, -764
                  sltiu        t2, s4, -187
                  srli         a1, tp, 28
                  srl          t5, sp, s7
                  or           t0, t1, gp
                  sltiu        sp, t5, 1381
                  sub          a3, tp, a5
                  mul          s3, t2, s0
                  remu         s3, s10, a4
                  mulh         a3, gp, s7
                  mul          t3, s2, a4
                  lui          s5, 1027173
                  sll          s4, a0, gp
                  mulh         ra, t3, t2
                  andi         t0, s10, 1532
                  sll          a4, a0, t1
                  slli         s3, a6, 23
                  mulhsu       t1, t5, t4
                  div          s7, t3, a7
                  divu         ra, s7, t2
                  sltiu        t3, t2, -1987
                  slt          ra, a6, t5
                  sra          a5, tp, t0
                  sra          sp, t3, s2
                  andi         a2, s1, -707
                  sub          a1, s6, a1
                  ori          s7, a6, -1298
                  mulhsu       s1, tp, s4
                  and          s0, t0, a0
                  ori          s4, s6, -1246
                  addi         s1, sp, 1354
                  add          a4, a5, s3
                  slt          s8, s4, a3
                  xori         t0, s0, 894
                  and          t5, t5, s0
                  mulhsu       s4, s3, s4
                  auipc        zero, 181861
                  lui          s11, 221884
                  sll          a7, s8, s1
                  xori         sp, a3, 40
                  srl          sp, a4, s5
                  sll          s7, s6, s3
                  srai         a1, sp, 4
                  sltiu        gp, a7, 1555
                  addi         a7, tp, 1890
                  nop
                  slt          a5, s1, s5
                  sll          s3, a1, a1
                  sltiu        tp, s5, 1318
                  sra          s5, a2, a2
                  srai         a7, t1, 10
                  xori         a1, s2, 1997
                  auipc        a7, 98955
                  addi         a3, s2, -833
                  rem          s4, s1, t3
                  slti         a1, s1, -1100
                  mul          a2, a6, t2
                  sltiu        s2, s2, -1513
                  srl          t6, s2, t1
                  nop
                  srai         s9, s4, 4
                  mulhsu       s2, tp, s2
                  xori         s0, zero, 531
                  sltu         a5, a6, a4
                  lui          ra, 324144
                  divu         t4, s7, s0
                  andi         s8, ra, -1962
                  srl          t1, s9, s3
                  srli         a7, s6, 10
                  sub          t5, s8, s6
                  lui          ra, 218923
                  xor          s7, a0, s6
                  mulhsu       a5, s7, t4
                  srai         a7, s7, 14
                  sra          t1, s11, s1
                  xori         a3, s2, -1562
                  rem          s1, a4, t2
                  nop
                  add          a5, t1, a7
                  srli         tp, s5, 7
                  slt          a3, s6, s8
                  xori         a4, ra, 358
                  add          a2, s9, a5
                  xor          s1, s11, sp
                  mulhsu       s9, s2, a1
                  mulhu        sp, t1, a6
                  lui          tp, 1046509
                  mulhu        s8, a5, s2
                  rem          t1, s11, zero
                  addi         t2, s8, 1544
                  ori          a2, a4, -1426
                  nop
                  slt          s11, t1, t3
                  sll          a1, s11, s8
                  lui          a5, 478356
                  xor          t3, t5, s11
                  sll          t5, s0, a6
                  sltiu        s5, t6, -347
                  andi         t4, s9, 1724
                  srai         s0, ra, 11
                  lui          gp, 198731
                  lui          t0, 481524
                  srl          s2, tp, s4
                  and          s11, s0, a2
                  rem          tp, a7, a6
                  sltu         s3, a2, t2
                  srli         s8, a0, 15
                  andi         tp, t5, -862
                  sll          s1, a6, s0
                  div          s0, sp, a0
                  xor          t6, t4, s6
                  or           tp, t3, zero
                  ori          a3, s1, 1843
                  div          a7, a7, gp
                  sll          s2, a4, s4
                  sll          ra, s5, s1
                  xor          t0, a6, s0
                  mulh         s8, s2, s11
                  mulhsu       a5, sp, zero
                  lui          a7, 21510
                  ori          tp, ra, -1296
                  remu         t6, a1, s10
                  slti         a5, s1, 1549
                  nop
                  sltiu        sp, ra, 185
                  slti         ra, tp, -429
                  srli         t4, s11, 10
                  xor          a3, a5, a3
                  or           t0, s2, t3
                  srl          tp, zero, tp
                  srai         a7, zero, 4
                  add          gp, a1, sp
                  remu         t4, tp, s0
                  sll          s4, t2, s9
                  slt          s7, a5, s8
                  mulh         t4, s6, t3
                  andi         ra, gp, -1036
                  srai         zero, sp, 28
                  and          t0, sp, a5
                  sll          t3, tp, s8
                  lui          a4, 86198
                  xor          s1, s10, sp
                  addi         t3, s9, 30
                  srl          s2, t2, a3
                  mulhsu       a5, t1, s0
                  rem          ra, t1, a6
                  divu         sp, a6, s9
                  lui          s0, 99531
                  auipc        s2, 237095
                  add          s2, s4, a4
                  mulh         s9, a0, s1
                  divu         a7, s3, s8
                  sra          s10, s7, s9
                  or           s3, t0, s5
                  sltu         s7, sp, s7
                  sltiu        s8, a2, -1737
                  and          t0, a4, a3
                  and          s8, s0, a0
                  mulhsu       t2, s11, a3
                  sltu         t6, tp, t5
                  sll          s10, t2, s9
                  or           t4, s6, a2
                  auipc        ra, 1017544
                  addi         tp, t5, 39
                  srl          s5, s7, a7
                  xori         tp, s8, 6
                  auipc        s9, 474601
                  xori         t1, t4, -603
                  srl          s9, t4, t2
                  add          s1, s5, s5
                  mulhsu       t2, a2, t3
                  div          a7, t4, s4
                  andi         a3, t6, -1130
                  slti         s9, tp, -1956
                  slt          a7, t1, zero
                  or           s10, zero, sp
                  sra          a4, t1, s8
                  remu         a5, s5, t4
                  srl          s9, a0, sp
                  xor          sp, s9, s4
                  sltiu        t1, s4, 1127
                  xori         zero, t4, 1669
                  xor          s1, s3, s3
                  xori         t4, a3, 1467
                  remu         s7, a2, t0
                  add          s11, zero, t4
                  srai         a4, s4, 16
                  nop
                  srli         s11, s7, 16
                  srai         s11, tp, 27
                  and          s4, s5, t0
                  nop
                  mulhu        a7, s8, t5
                  div          a7, ra, a7
                  srl          s7, s9, gp
                  div          s10, tp, a3
                  mul          ra, a3, t4
                  slt          s0, s11, a1
                  sll          t6, s7, a7
                  srl          t0, t1, a3
                  sub          t2, t4, s8
                  srl          a2, s11, ra
                  ori          a7, s0, -1928
                  mulh         zero, t3, s3
                  srli         a2, a3, 2
                  mulhsu       s10, s0, a7
                  or           s7, s8, t1
                  divu         t5, t5, t2
                  sub          t1, t3, s3
                  xori         zero, t4, 309
                  rem          a7, t1, gp
                  xor          s4, t1, s11
                  ori          s8, t4, 1693
                  mulhsu       sp, tp, s8
                  rem          tp, s10, s11
                  sll          t1, s4, zero
                  slt          s3, t1, s8
                  sll          s5, a4, t1
                  slli         zero, s8, 24
                  slti         a7, s7, 604
                  add          s10, gp, t2
                  add          ra, s10, s0
                  mulhsu       t6, t4, t0
                  srli         t0, a7, 29
                  auipc        t2, 141165
                  sra          a1, s8, zero
                  slti         s9, a7, 2017
                  sltiu        tp, a7, -850
                  sra          s8, t6, t3
                  lui          s7, 623303
                  addi         t3, t2, 1963
                  slti         s8, s0, 418
                  sltu         a7, s11, s2
                  xori         a5, s4, 1109
                  slli         s5, s11, 23
                  srli         t6, t5, 15
                  xor          s9, t4, a2
                  srl          t6, sp, s9
                  slli         s11, s2, 28
                  sra          sp, t4, ra
                  add          s1, a7, s1
                  ori          a7, s2, 331
                  slt          a1, a1, s6
                  mul          a2, gp, a7
                  mulhu        s7, sp, s4
                  slli         zero, s2, 23
                  remu         s10, gp, a7
                  slti         a2, a0, -1676
                  srai         t3, a2, 8
                  sltiu        s1, t5, 36
                  mulhsu       t5, sp, sp
                  sra          s3, a0, a7
                  andi         gp, t1, -650
                  add          a2, s8, a2
                  xor          a7, a0, t6
                  sltiu        s4, s11, -1168
                  srl          s9, a1, tp
                  div          s3, s9, a0
                  slti         s8, a5, 947
                  mulhsu       a2, t6, t2
                  slt          t4, s4, s1
                  lui          s5, 329882
                  slli         s7, zero, 11
                  mul          a4, s1, a7
                  sltiu        a4, a4, -1945
                  xori         s4, a6, 212
                  ori          sp, t2, -1288
                  auipc        s7, 721362
                  srli         a7, s5, 23
                  lui          s0, 115398
                  xor          gp, s9, a2
                  nop
                  slli         t1, a4, 30
                  sltu         tp, a6, s2
                  mulhu        t2, s6, t3
                  srai         s3, s6, 6
                  sll          a7, t4, ra
                  slti         t3, s6, 339
                  sra          s5, t0, a1
                  div          s10, s1, a2
                  auipc        a3, 918735
                  sltu         s1, a4, s9
                  slt          zero, gp, a3
                  or           s7, s5, s1
                  sltu         a3, a4, s4
                  divu         s10, s0, s0
                  auipc        t2, 399613
                  slt          t0, s2, t5
                  andi         t1, t4, -69
                  remu         sp, a0, t1
                  slti         t6, s5, -316
                  mulhu        s7, t3, a5
                  addi         s3, t3, -1047
                  srli         t3, t0, 7
                  srli         a1, s2, 19
                  xor          s7, gp, s9
                  sll          a2, s2, t3
                  nop
                  slt          t4, s7, s2
                  andi         s4, s1, 2033
                  mulh         a2, s5, s8
                  sltiu        s5, s8, -689
                  add          a2, t6, s1
                  and          a1, a7, t3
                  slli         a1, t1, 27
                  xor          t0, a2, zero
                  sltiu        s3, gp, -1472
                  mulh         s8, s9, s4
                  auipc        t0, 646592
                  srl          t5, t2, s3
                  slli         ra, sp, 22
                  srai         zero, t1, 4
                  xor          s1, s8, a6
                  lui          t1, 86873
                  remu         s7, a7, s1
                  sll          s10, a2, s6
                  slli         t5, a0, 8
                  div          a4, t3, s9
                  nop
                  srai         a2, s1, 12
                  auipc        t3, 5136
                  divu         s8, s2, t5
                  sltiu        s9, sp, 7
                  div          a1, t5, a1
                  div          s8, a2, a1
                  srl          s7, a4, a0
                  ori          t0, s1, -790
                  mulhu        zero, gp, s0
                  or           a7, gp, zero
                  or           t6, tp, tp
                  remu         sp, s10, s6
                  slt          ra, s6, s4
                  sltiu        s0, s8, -851
                  add          t3, t6, s8
                  and          s3, s1, gp
                  addi         a3, s11, 1141
                  remu         s8, s0, a1
                  mulhsu       s7, s11, s0
                  sll          a7, a1, s3
                  mul          t2, t1, ra
                  mulhsu       t1, a3, s1
                  sll          s8, s5, t5
                  mulh         a4, s3, a0
                  srai         a4, t6, 28
                  srl          s1, t2, tp
                  srli         a3, s2, 7
                  xori         sp, a4, 1764
                  srai         t3, a6, 21
                  lui          a5, 1015544
                  mulhu        s0, s11, tp
                  xori         t1, t3, -1222
                  add          s4, a4, s5
                  mulhsu       t6, s3, s6
                  mulhu        sp, s10, a6
                  addi         s4, t5, 1175
                  sub          ra, t6, t5
                  sll          t1, a3, s7
                  add          s9, a0, t4
                  slti         s7, sp, 128
                  divu         t3, tp, t1
                  addi         tp, a6, 1054
                  mulhsu       s5, sp, ra
                  mulh         sp, a4, ra
                  slt          t2, s5, s4
                  or           s11, s6, a0
                  mul          s0, s5, tp
                  xor          a5, a3, a0
                  sub          ra, s1, s5
                  and          t1, a3, s1
                  divu         s11, a4, s7
                  addi         a1, t0, -1966
                  srl          t2, a3, s2
                  mulh         s4, s0, a0
                  divu         s4, s1, t5
                  mulh         a7, a3, s4
                  mulh         gp, t5, t5
                  sll          ra, s10, s3
                  remu         s1, a2, s11
                  sltiu        a3, t1, 930
                  mulh         a7, a7, s6
                  mulhu        t2, a1, t1
                  mulhu        a7, s0, t5
                  xor          zero, t4, a5
                  mulhu        s5, gp, a0
                  slli         t3, s7, 11
                  xor          s11, gp, s4
                  rem          s10, s11, t0
                  sltiu        s2, s7, 713
                  addi         a4, t5, 360
                  xori         s7, a2, 1058
                  slli         s11, t2, 29
                  mulh         t3, gp, tp
                  sll          t1, s5, t6
                  mulhu        s7, s5, s1
                  slt          s11, s8, t0
                  remu         ra, s9, t6
                  slli         a5, s7, 20
                  sltu         s5, ra, s9
                  mulh         s3, s4, a6
                  andi         t1, s1, 1668
                  auipc        s4, 679441
                  ori          a3, a4, -790
                  sltu         s9, s8, s8
                  slt          t1, ra, s4
                  div          t4, s2, a2
                  divu         a1, t4, ra
                  mul          s11, a2, t2
                  xori         zero, a7, 1133
                  mulhsu       s2, s4, s1
                  xori         s7, a3, -1055
                  slt          s0, a1, s0
                  ori          t1, sp, -1340
                  sll          s1, ra, s7
                  remu         a5, a7, s7
                  sub          a7, a5, s6
                  rem          gp, zero, s10
                  srai         a1, a3, 26
                  and          s5, s11, s1
                  and          t2, s5, s0
                  mulh         gp, s2, a2
                  sra          s2, t3, s3
                  xor          t6, zero, a7
                  slli         s7, a5, 12
                  sll          s7, s11, s3
                  sltu         s8, s5, s7
                  ori          a4, t3, -1914
                  nop
                  remu         s4, s1, t0
                  xori         s7, s10, -1877
                  xori         s4, a5, 49
                  addi         sp, t2, 159
                  sll          a1, zero, t1
                  sra          sp, a6, s3
                  remu         a1, s8, tp
                  slli         s8, a0, 3
                  mulh         a2, s0, s8
                  auipc        s7, 819928
                  divu         t4, ra, s7
                  sub          s2, t0, s5
                  ori          a4, t4, -11
                  addi         t3, s4, -1872
                  mulhsu       t0, a1, s3
                  auipc        t4, 587477
                  srai         s5, s0, 24
                  andi         t1, a0, -1224
                  xori         s11, s5, 360
                  slli         t3, a7, 15
                  mulhu        a2, a0, ra
                  div          s3, ra, s5
                  sra          s10, s2, a1
                  sra          tp, s3, t0
                  mulh         s11, tp, a0
                  sltu         s1, s9, gp
                  mulhsu       s4, s2, gp
                  mulhsu       ra, s5, s3
                  slli         sp, t1, 11
                  andi         a3, s11, -739
                  mulh         s10, s10, a5
                  and          t6, t0, s1
                  auipc        sp, 788125
                  mulhu        a7, s6, a0
                  srai         s4, s3, 18
                  ori          s0, t4, -1817
                  srai         s0, t1, 25
                  div          sp, t2, s6
                  sra          s10, s10, s7
                  mulhsu       tp, a5, t6
                  mulhsu       a3, a0, a0
                  and          a3, a0, a5
                  nop
                  xor          s1, s11, t3
                  srli         s9, a3, 12
                  ori          s10, a5, 1379
                  slt          t6, zero, zero
                  sll          s2, t0, s9
                  div          s4, sp, t1
                  mulhu        s10, s5, s11
                  sub          s7, a2, a7
                  divu         t4, s8, a1
                  slli         t6, s1, 19
                  slt          t1, tp, t5
                  mulh         a3, a7, a7
                  sll          t2, s8, t1
                  rem          sp, s11, tp
                  xori         t5, gp, -236
                  slli         s7, a2, 14
                  mul          s7, t6, s5
                  srai         s10, t5, 9
                  mulh         sp, t0, s4
                  remu         t3, s8, a7
                  addi         a3, sp, 1186
                  div          s8, t2, s8
                  divu         s7, a1, s3
                  mulhu        ra, s1, a6
                  add          ra, t0, t2
                  auipc        t2, 547900
                  srli         gp, t5, 19
                  auipc        s2, 781082
                  xor          tp, s3, s10
                  srai         a3, gp, 18
                  divu         s5, s9, t5
                  srl          s8, s9, a3
                  and          gp, ra, a4
                  div          s9, t3, t1
                  lui          t1, 32323
                  xori         s4, t5, -527
                  div          t5, s0, s9
                  andi         a2, a1, -1146
                  sltu         s2, a3, s5
                  auipc        t1, 513667
                  xor          t1, a5, gp
                  srli         zero, t1, 23
                  divu         t2, ra, t5
                  mul          s8, s7, s0
                  mulh         a1, s3, s10
                  slti         ra, s7, -1484
                  lui          s7, 216091
                  sltu         t4, t1, s3
                  mulh         s9, tp, sp
                  andi         t1, s3, -1647
                  add          t2, a6, a1
                  sltu         s0, s5, s10
                  nop
                  sub          a2, a1, ra
                  nop
                  addi         s7, s1, 659
                  divu         sp, s2, s1
                  lui          a3, 743269
                  slt          s4, t0, zero
                  sltiu        t4, gp, 1639
                  remu         tp, a5, gp
                  rem          s8, sp, s3
                  rem          s10, sp, a6
                  mul          a1, a5, s3
                  sll          s8, s5, t6
                  xori         s4, a0, 1958
                  auipc        s5, 500142
                  andi         s2, t5, 1276
                  nop
                  srl          a2, s6, s8
                  srli         t0, s2, 6
                  andi         a3, s11, 694
                  mulhsu       a4, gp, s0
                  mulh         s7, ra, a6
                  addi         sp, ra, 1334
                  slt          a5, ra, a0
                  add          s11, t0, zero
                  nop
                  mulhsu       s5, sp, a7
                  sub          a1, s11, t6
                  ori          s7, t5, -894
                  slti         s5, a3, -1535
                  ori          s3, s4, -267
                  rem          a2, a7, s9
                  divu         sp, a3, s0
                  lui          a1, 374695
                  or           s3, s11, a7
                  mulh         t6, gp, s4
                  srl          a7, s9, a2
                  div          t1, a3, t5
                  add          a3, s2, t4
                  nop
                  srai         a1, t1, 16
                  div          s2, s4, a0
                  srli         t3, zero, 27
                  srli         a2, s9, 0
                  xor          s4, t1, sp
                  auipc        t5, 135222
                  divu         s5, s9, s0
                  sltu         t2, t6, tp
                  auipc        a1, 395898
                  and          s0, tp, t1
                  sll          t4, a1, a3
                  sra          s2, s5, s9
                  div          s9, s0, s4
                  slli         t4, a7, 30
                  remu         a1, a3, s5
                  sltu         sp, s4, a0
                  srai         a5, s7, 13
                  divu         t5, s1, s2
                  addi         t1, a7, -123
                  nop
                  sltu         t0, t3, a0
                  slti         s7, tp, 418
                  sra          s3, s4, t5
                  sub          s5, a7, a6
                  auipc        t4, 386759
                  nop
                  lui          a4, 170900
                  sltu         a1, t3, gp
                  xori         s7, s5, -1420
                  slti         zero, gp, -1989
                  ori          s4, a2, 2024
                  slti         t5, s5, -370
                  sub          s4, s3, t2
                  ori          t0, s6, 678
                  slti         s11, sp, -1431
                  addi         a5, zero, 1489
                  rem          sp, s7, t4
                  ori          a5, s3, 790
                  srai         a2, t5, 22
                  xori         tp, zero, -481
                  remu         s3, a1, a6
                  or           s3, s3, s9
                  slli         a1, a4, 12
                  remu         t1, s4, t3
                  sltiu        gp, a1, -1741
                  divu         s8, zero, s3
                  sltiu        t0, sp, -1369
                  remu         gp, s8, gp
                  mulhsu       s9, zero, s9
                  srli         t2, a3, 27
                  sub          s8, a4, a6
                  or           a7, a6, zero
                  mul          s3, s7, a1
                  rem          zero, s10, a6
                  mulh         t3, s9, s5
                  rem          gp, s6, sp
                  nop
                  and          gp, s11, s3
                  nop
                  andi         s5, t2, 1161
                  and          s9, s10, a0
                  ori          tp, a4, -1967
                  div          s1, s5, a1
                  xor          sp, s0, t5
                  srai         sp, a5, 4
                  srai         s10, t6, 1
                  srli         t6, t4, 0
                  ori          s4, gp, -1967
                  and          s3, a2, a5
                  sltiu        gp, a7, 45
                  and          tp, s1, t4
                  and          t3, s10, a7
                  andi         zero, tp, 1035
                  rem          sp, t1, a5
                  slt          t1, zero, t0
                  sra          s11, a6, a0
                  div          s5, a6, t6
                  sltiu        s4, a2, -981
                  slli         s9, a6, 28
                  srai         tp, sp, 7
                  mulh         s7, s9, gp
                  xori         s4, a7, 2024
                  add          a7, t0, a0
                  rem          a7, s8, s3
                  and          a3, zero, a4
                  mulh         s9, a3, t5
                  mulh         ra, a6, gp
                  mulh         s8, gp, s1
                  sltiu        s3, t2, 1652
                  mul          s7, s4, s2
                  mulh         s3, a5, a6
                  nop
                  mul          s0, s3, s5
                  rem          tp, t6, gp
                  xor          sp, a5, a1
                  remu         zero, tp, a2
                  srl          s0, s9, t4
                  slti         s0, s4, -935
                  mul          s0, s11, s2
                  sub          s7, t5, s0
                  add          zero, t0, s8
                  sra          t3, t4, s11
                  srli         s5, s6, 0
                  srai         t1, a3, 25
                  rem          s8, s9, s8
                  rem          s7, s9, t6
                  divu         a4, gp, a1
                  remu         t6, s4, a3
                  mulhsu       s10, a0, s4
                  and          s2, s11, gp
                  div          s2, s1, s2
                  divu         s2, a2, a2
                  sub          a4, tp, a4
                  rem          a7, ra, s10
                  ori          t0, t2, 1335
                  lui          a4, 606112
                  remu         sp, s3, t0
                  sra          a7, a0, s1
                  sra          s9, a4, a5
                  mulh         s4, s6, t0
                  mulhu        s11, s7, zero
                  mulhu        t2, t2, a3
                  srai         tp, s10, 25
                  mulh         s3, a4, s7
                  srl          s10, a7, t1
                  srai         s0, s4, 22
                  sll          a4, s10, a5
                  srli         s10, a5, 0
                  ori          t0, s7, 887
                  divu         t2, a0, a3
                  ori          t4, t1, -587
                  mulh         s8, a6, s10
                  nop
                  sub          t2, t0, a0
                  srl          a1, sp, s9
                  div          zero, s6, a1
                  srli         s2, s3, 1
                  slt          t2, t4, t4
                  slt          zero, a3, s5
                  andi         gp, a6, 1373
                  andi         a4, s2, 1227
                  srai         t2, s0, 22
                  ori          s10, s4, 185
                  rem          gp, s8, gp
                  andi         zero, t4, 569
                  srl          sp, s9, s8
                  srai         t2, s10, 23
                  sub          t6, a4, a6
                  xori         s2, s0, -543
                  lui          s2, 870800
                  sltu         a4, zero, s1
                  sltiu        s2, t1, 1928
                  xori         gp, s8, -1248
                  sub          s2, t5, sp
                  addi         s9, s3, 629
                  add          zero, s4, a6
                  slt          s1, a7, s11
                  rem          a7, gp, t3
                  slti         t4, a0, 1405
                  xori         s7, s6, 1518
                  sub          a5, t5, s3
                  slt          s2, a4, ra
                  xori         tp, gp, -420
                  andi         zero, gp, -102
                  slt          s0, s7, t4
                  andi         s0, a6, -755
                  xori         s10, a5, 399
                  srli         tp, ra, 23
                  xori         s2, tp, 144
                  mul          a4, s6, a7
                  div          a1, s7, s9
                  srli         s4, t5, 0
                  mulhsu       t6, s0, s6
                  mul          gp, a0, s1
                  mulhu        t3, t3, s0
                  remu         gp, t1, a3
                  mulhu        s1, t2, tp
                  slti         s1, s5, 484
                  xor          zero, a0, s11
                  srl          s0, a0, a3
                  nop
                  addi         tp, tp, 1883
                  sra          s7, gp, t0
                  xori         zero, sp, 450
                  rem          zero, t5, t1
                  sltiu        tp, sp, 877
                  mulhsu       tp, a2, s2
                  addi         s10, a1, -1462
                  remu         t5, t5, s10
                  andi         s11, a0, -726
                  srai         s7, a1, 21
                  sub          t3, s11, a6
                  andi         a4, t0, 461
                  and          a7, a7, a4
                  sltiu        s4, ra, -935
                  auipc        s11, 525407
                  mulhsu       a3, s0, s6
                  sra          t5, s4, s4
                  mulh         a2, s4, a6
                  slli         a1, t2, 20
                  slt          t3, sp, t6
                  divu         t0, t2, a5
                  add          tp, s5, s6
                  srli         s1, ra, 7
                  and          s2, s7, s2
                  div          s4, s9, s3
                  div          s2, t5, a3
                  add          t0, s3, t3
                  or           t2, t5, s10
                  rem          a5, s10, a0
                  srl          s0, s11, t2
                  srli         zero, a6, 22
                  ori          s8, zero, -168
                  ori          s8, s4, -1428
                  mul          s5, tp, s2
                  lui          s0, 320544
                  mulhsu       a1, t1, s7
                  and          s0, a4, tp
                  divu         s2, s7, t1
                  mulhsu       sp, t1, a0
                  sra          s8, t2, t5
                  sltiu        t1, t2, -1505
                  mulh         s10, t1, a5
                  srli         ra, a5, 12
                  srli         t2, s7, 12
                  mulhu        s5, a4, gp
                  sltu         zero, gp, a0
                  sub          t0, s4, s10
                  slli         zero, sp, 29
                  slti         t3, s4, -1680
                  add          s7, t4, s1
                  mulhsu       t5, a7, t1
                  srli         s4, t5, 31
                  andi         ra, t5, -1486
                  div          s3, a0, a4
                  slli         s9, t5, 14
                  srli         a7, s1, 9
                  sra          a1, a7, t5
                  srli         s0, s1, 9
                  nop
                  srl          t6, s10, tp
                  nop
                  mulh         a5, a2, t3
                  slti         t6, a3, 1281
                  addi         s2, t6, -436
                  auipc        t5, 472436
                  mul          t2, a3, t2
                  divu         a1, a6, a2
                  srli         zero, s0, 27
                  divu         a7, a7, t3
                  slti         s3, s5, -38
                  and          a7, s6, a5
                  divu         s7, s2, ra
                  divu         a7, t1, a3
                  add          s4, s9, gp
                  xor          a2, s8, tp
                  rem          t0, a4, a0
                  sub          t3, s3, a6
                  addi         s11, t0, -367
                  or           a4, s3, tp
                  srai         sp, s8, 20
                  xori         a1, zero, 1843
                  nop
                  srli         s7, s6, 9
                  sltu         s8, t3, s7
                  sltiu        s2, t5, -629
                  slli         t1, s6, 3
                  sll          s10, a3, t2
                  add          t6, a3, s6
                  srai         s2, sp, 8
                  slli         t6, s5, 6
                  remu         s8, s11, t5
                  add          zero, s7, s4
                  mulhu        t0, ra, s8
                  slti         s3, gp, -781
                  slti         s2, t3, 1461
                  srai         t0, a1, 6
                  sra          s0, a3, a1
                  srl          t6, s3, s5
                  mulhsu       t0, gp, s0
                  srli         tp, s4, 19
                  auipc        s9, 41616
                  srli         s4, s7, 22
                  auipc        t5, 1043268
                  or           s1, s5, a4
                  lui          t5, 702433
                  ori          s10, s0, 103
                  xori         t2, t4, 466
                  sll          gp, sp, a3
                  slt          sp, tp, gp
                  addi         s8, t6, -1803
                  xor          ra, a2, t1
                  xor          a4, tp, a0
                  xor          t6, s6, gp
                  sltu         tp, s2, t3
                  slt          t3, a2, a2
                  rem          zero, t1, t4
                  sltiu        t2, sp, -380
                  sltiu        s2, s2, 1943
                  sub          s5, a5, t0
                  slli         s3, s9, 8
                  slti         a5, t6, 2008
                  slli         t0, t3, 0
                  srai         s3, t3, 8
                  sub          tp, s1, ra
                  mulh         a4, s1, s6
                  mulhsu       a7, t6, t1
                  mulhu        zero, s4, t6
                  or           a5, t2, t3
                  auipc        s10, 262648
                  remu         a3, t4, a7
                  lui          t3, 991864
                  sltiu        zero, s4, -1914
                  xor          s0, s9, s5
                  addi         t5, sp, 637
                  nop
                  sltu         s10, sp, t1
                  lui          sp, 47794
                  nop
                  slli         a7, s3, 29
                  mulhsu       s2, t6, s1
                  auipc        a5, 22632
                  auipc        t3, 985330
                  xori         sp, s4, 1849
                  andi         s9, tp, -722
                  sltu         a2, t2, s10
                  mulh         s11, a4, s3
                  srli         a4, t6, 26
                  mulhsu       a1, a0, a7
                  sra          sp, a0, s4
                  or           t3, s8, a3
                  rem          a2, s5, zero
                  mul          t5, t3, a4
                  addi         s10, s11, 329
                  sub          t4, t5, s9
                  xor          t6, a1, s7
                  rem          t3, ra, s8
                  slt          a7, t5, t5
                  addi         ra, t6, 160
                  andi         s9, s6, 1437
                  divu         s2, a1, tp
                  xori         s2, sp, 936
                  auipc        t4, 919295
                  remu         t6, a0, s6
                  slti         a7, s10, 827
                  ori          t4, s1, -1157
                  sll          t5, s8, s11
                  or           s0, s9, t5
                  sra          s11, s8, t5
                  slli         t3, t3, 14
                  remu         ra, t5, t1
                  sra          a4, a7, gp
                  srli         t2, s7, 13
                  sub          zero, s0, t6
                  nop
                  mul          sp, a3, s5
                  lui          s5, 724317
                  mulh         tp, a2, a1
                  mulhsu       a7, t1, a6
                  or           gp, a7, s0
                  srli         t5, s11, 10
                  sltu         a5, s7, a0
                  andi         a4, s3, -1018
                  remu         gp, zero, t4
                  slt          t0, t5, ra
                  slt          s2, a2, a1
                  srli         s0, s1, 7
                  slti         a7, gp, -880
                  or           sp, a3, s9
                  srli         s9, a7, 24
                  addi         sp, t1, 838
                  and          gp, sp, zero
                  srl          t1, t4, s5
                  lui          t6, 470659
                  sub          a3, gp, a7
                  sub          s5, s0, s6
                  srli         s8, s2, 5
                  mulhsu       s11, s2, t3
                  mulhsu       t6, s11, s10
                  slt          ra, t4, s10
                  remu         tp, s3, a4
                  slli         s9, a7, 11
                  divu         s5, s4, t2
                  remu         gp, zero, a3
                  sub          s11, s11, a7
                  divu         a1, a6, t0
                  slti         s2, s8, 672
                  sll          tp, s10, t6
                  sltiu        t6, a6, -1493
                  slti         sp, t0, -236
                  xor          s10, t2, zero
                  add          t1, a1, s5
                  mulhsu       t4, a0, t2
                  addi         sp, a3, -2041
                  sra          s11, s10, s8
                  srli         s5, t5, 5
                  srai         tp, s6, 6
                  mulh         a5, ra, sp
                  remu         gp, tp, a6
                  xori         s9, a6, -858
                  sltiu        s3, s10, -1151
                  sltiu        a4, t1, -368
                  auipc        zero, 903973
                  nop
                  andi         s0, s7, 1711
                  sltu         tp, ra, a7
                  divu         a5, a4, a7
                  mul          s0, s9, a5
                  lui          t0, 411455
                  sll          s4, a4, zero
                  slti         s9, ra, 1734
                  srli         t1, ra, 9
                  mulhu        t0, s11, a7
                  div          s3, s1, s5
                  sltiu        t5, s9, -1463
                  sltu         s9, tp, zero
                  auipc        t3, 325618
                  mulhu        t1, s8, a5
                  xor          tp, t5, s5
                  sub          a4, s2, s9
                  sll          tp, sp, s7
                  mulhu        gp, a2, t3
                  nop
                  lui          s5, 531299
                  or           a4, s8, a2
                  or           s10, zero, gp
                  slt          a4, a6, s5
                  auipc        s10, 417906
                  auipc        a2, 425673
                  mulhsu       s10, s2, t4
                  div          a5, t5, s5
                  divu         s4, gp, s9
                  sll          s9, s8, t0
                  slli         s3, s2, 6
                  srli         s1, a3, 19
                  mul          s9, s2, t1
                  lui          zero, 147631
                  andi         tp, t2, -1843
                  andi         s11, t3, -44
                  div          t6, ra, ra
                  srai         s8, t3, 19
                  mulh         s8, t2, s2
                  srli         t4, a3, 6
                  addi         s8, s10, -2007
                  srai         s8, s2, 14
                  srli         s0, s11, 13
                  srli         ra, s8, 19
                  sltiu        a2, t3, 561
                  sltiu        a1, a0, 1344
                  slli         a1, s10, 7
                  srai         s0, gp, 31
                  srli         a1, a3, 12
                  remu         t2, s5, s10
                  slli         s5, t6, 25
                  sub          t2, s10, a1
                  or           s4, a3, s2
                  xor          a5, a1, tp
                  slt          a5, s1, s2
                  add          ra, s4, s5
                  divu         s10, s9, s3
                  slli         t5, a3, 28
                  rem          s7, a3, s9
                  remu         a3, a1, s0
                  srli         ra, s10, 25
                  srli         t6, s9, 29
                  slli         zero, a7, 29
                  add          a1, a7, s5
                  lui          t5, 49376
                  sltiu        a4, s7, -909
                  divu         s4, gp, t5
                  or           a3, zero, a1
                  srl          gp, s1, a2
                  srli         tp, t6, 12
                  srli         tp, s7, 25
                  addi         sp, tp, 719
                  rem          tp, s9, tp
                  xori         a2, gp, -1344
                  and          gp, zero, t2
                  srli         s3, s9, 6
                  sra          s4, t6, s7
                  andi         zero, a0, 1079
                  sll          t0, s9, s7
                  ori          s10, t4, 606
                  mulhsu       tp, s5, s3
                  slt          s9, s0, a7
                  mulhu        t3, t3, a3
                  sltu         a7, t0, s0
                  sltu         s9, a1, a6
                  slli         t4, a0, 24
                  sltiu        s0, t3, -1556
                  srli         ra, a2, 21
                  lui          a2, 755497
                  sltu         a1, t0, ra
                  mulhsu       s7, t5, zero
                  remu         zero, s6, zero
                  andi         s7, s5, -1237
                  mulhu        t2, s3, a1
                  and          a3, tp, a6
                  ori          s2, s9, 1175
                  mulhu        a5, s11, zero
                  andi         t1, a2, 1753
                  lui          t4, 549975
                  slti         sp, t6, -1006
                  sll          a5, a7, s1
                  nop
                  lui          t4, 492639
                  auipc        s11, 829118
                  sltiu        s1, zero, 170
                  rem          s9, a2, s6
                  auipc        a3, 191617
                  rem          s10, s11, s5
                  xor          s3, zero, t0
                  divu         s5, a7, sp
                  srai         s9, s10, 30
                  mulhu        a7, s7, t6
                  addi         zero, s0, -1180
                  slti         s5, s5, 741
                  remu         s2, gp, s10
                  xor          s0, gp, a3
                  lui          a4, 755546
                  sltiu        s2, s0, -1875
                  rem          a7, gp, zero
                  auipc        s5, 312788
                  lui          s1, 447867
                  andi         t2, s9, -1377
                  divu         s4, t5, t5
                  slti         a2, a6, -15
                  sub          t3, s6, a0
                  xori         t5, a4, -1666
                  xori         s10, s6, -1005
                  or           s2, t6, zero
                  nop
                  srl          t5, a4, a0
                  xor          s0, a6, tp
                  addi         s9, t5, -115
                  srli         t1, s6, 28
                  sll          a4, t1, t6
                  sltiu        t0, s9, -1984
                  slli         t0, a4, 22
                  sltiu        gp, zero, -1686
                  sub          a4, gp, sp
                  divu         a1, a3, s0
                  lui          t3, 547718
                  ori          a3, a5, -1675
                  mul          t2, gp, s8
                  mulh         a2, a0, a5
                  lui          a1, 157062
                  mulh         a7, s7, s9
                  sltu         t5, t1, s9
                  divu         a4, tp, a5
                  sub          s2, s9, a3
                  xori         t1, t1, -295
                  remu         a4, s7, s9
                  xori         t5, t6, 1934
                  mulh         t4, s11, gp
                  mulh         t3, a2, t5
                  sltu         s9, s1, a2
                  divu         s7, s3, s0
                  add          s8, a6, a1
                  ori          s7, s3, 1177
                  sltu         a4, s11, s2
                  slti         s2, a6, -1197
                  srli         ra, s9, 31
                  auipc        t6, 414094
                  sll          zero, tp, a0
                  and          zero, s3, a1
                  mulh         t5, a5, a0
                  srai         t3, s0, 15
                  srli         t0, s6, 13
                  sltu         zero, s7, s6
                  srl          a4, s6, t4
                  srl          ra, s6, s7
                  auipc        a3, 171141
                  srl          t3, a5, zero
                  slti         zero, t6, 1611
                  srai         zero, a7, 2
                  rem          s3, a5, s4
                  sltu         s0, s1, a7
                  mulhu        a5, s8, a4
                  add          s11, a1, s2
                  lui          a7, 267279
                  sltiu        s11, s9, -1330
                  mulhu        gp, t3, s2
                  srai         t2, a5, 1
                  sra          s11, a4, a5
                  mulh         s2, t6, t6
                  remu         s4, t4, t2
                  remu         t1, t1, a2
                  mul          s10, tp, sp
                  slt          s11, s5, s7
                  rem          a1, a0, sp
                  andi         s7, zero, 807
                  sra          s11, a4, s0
                  srli         sp, s1, 0
                  or           t5, gp, a7
                  slti         zero, a7, -260
                  auipc        s2, 435378
                  div          t2, t0, t1
                  srai         zero, a1, 31
                  slli         s4, t4, 16
                  and          zero, t2, s5
                  slti         a7, sp, -898
                  mulhsu       tp, tp, sp
                  sll          a7, tp, s8
                  sltiu        t4, s3, 1160
                  addi         s0, s3, -884
                  nop
                  srl          t5, a2, s4
                  or           a4, s7, t1
                  rem          a4, a5, t6
                  slli         tp, a7, 15
                  divu         a5, a5, t1
                  sra          a1, a5, tp
                  andi         a1, tp, -1706
                  addi         s9, s1, 965
                  andi         t5, s11, 1115
                  sub          s8, tp, zero
                  sll          s11, s0, t4
                  auipc        zero, 184574
                  mulhsu       t0, s0, a1
                  and          t4, s0, zero
                  lui          ra, 826730
                  srl          a4, s1, t0
                  div          s10, a6, s1
                  sub          sp, s11, zero
                  sll          s4, s4, s10
                  mul          s11, s7, a2
                  mul          s2, s4, t3
                  divu         tp, a6, a3
                  mulhsu       s4, s3, s9
                  sltu         a2, t5, sp
                  lui          s4, 221737
                  slt          t2, a4, t4
                  or           s4, s1, a6
                  mulhsu       t1, t4, a7
                  slli         s11, s8, 12
                  xor          a4, t2, t5
                  sra          s0, tp, a6
                  srl          s1, a1, s3
                  addi         s5, a0, 776
                  slt          s10, a7, s3
                  remu         t5, a5, a6
                  addi         a7, s2, -468
                  sub          s3, a6, s2
                  slli         t0, ra, 29
                  remu         s8, s8, s11
                  xor          s8, s4, s0
                  rem          sp, a7, a1
                  remu         a5, a0, a3
                  mul          gp, s5, t0
                  slli         ra, s8, 4
                  nop
                  srai         a4, t3, 21
                  sltiu        s0, a3, -912
                  slti         t5, a0, 1631
                  lui          s4, 868670
                  andi         t5, tp, -1436
                  srai         a1, s9, 26
                  sll          s5, t3, t0
                  nop
                  xor          s2, t4, a6
                  ori          tp, s2, -2000
                  srl          t3, s0, s11
                  ori          s7, a0, -429
                  div          sp, t3, t1
                  xor          a7, a0, s8
                  and          t5, sp, t3
                  srai         ra, s1, 1
                  mulhu        sp, t0, a3
                  sra          s5, t5, ra
                  auipc        a1, 359
                  slt          t2, a6, s5
                  auipc        t0, 905780
                  mulhu        s4, s11, a5
                  xori         a3, s6, -1017
                  slli         t1, s6, 2
                  sub          s1, a2, a3
                  xori         a4, zero, 834
                  sub          sp, s9, s7
                  auipc        s9, 881470
                  mulhu        s10, a1, a1
                  srli         t2, a1, 24
                  auipc        t5, 640357
                  xori         s11, s8, 1313
                  slt          s5, t3, s10
                  divu         zero, s3, s9
                  div          a4, t3, s8
                  srai         s2, gp, 24
                  srli         sp, s8, 20
                  add          s4, s3, s5
                  srli         tp, a0, 8
                  divu         a7, s3, a6
                  srli         a1, a0, 5
                  xor          s9, s11, a6
                  ori          s3, tp, 2042
                  sll          a3, a1, s10
                  ori          s8, s2, 697
                  mulh         s0, a2, s8
                  and          t1, s0, t6
                  addi         s3, s8, 1386
                  andi         tp, a6, 127
                  mulh         t1, t4, a5
                  mulhu        a1, s5, s10
                  xori         s8, s0, 1067
                  addi         s2, s1, -292
                  slti         s7, s6, 663
                  rem          s4, t6, s6
                  mul          s3, ra, zero
                  mul          s10, a4, t2
                  nop
                  mulhsu       s2, s9, s0
                  xor          s4, s8, a5
                  sll          t3, s10, s1
                  lui          t2, 603616
                  rem          s4, t5, s3
                  rem          t1, s0, s2
                  nop
                  remu         t4, s0, s6
                  mulh         t3, gp, s8
                  mulh         a5, sp, a0
                  lui          s2, 76221
                  nop
                  add          sp, t4, gp
                  addi         s1, s4, -175
                  srai         tp, t2, 15
                  andi         t5, gp, 507
                  slli         a4, a4, 8
                  rem          t6, t1, s7
                  sra          t0, a0, s2
                  auipc        a4, 265958
                  srli         zero, t0, 24
                  mulhsu       sp, s8, t5
                  sll          s11, ra, gp
                  auipc        t0, 100294
                  add          t4, sp, a7
                  sra          t4, s9, s4
                  and          t6, zero, t2
                  xori         t2, t3, -1458
                  mul          a4, sp, a6
                  remu         ra, s7, t4
                  sltu         s0, a7, a0
                  or           a4, s5, s10
                  and          a3, s8, a6
                  srli         t0, s8, 12
                  nop
                  srli         s9, s0, 13
                  sll          s8, sp, s0
                  srl          zero, a1, s0
                  sub          s10, s6, ra
                  divu         s10, a3, s4
                  remu         s10, t4, t0
                  slti         t2, s4, 1160
                  mul          s5, tp, s7
                  srai         t4, a6, 18
                  slti         a5, a2, -775
                  srli         a3, s0, 29
                  sra          a5, s1, a2
                  sll          gp, a4, t2
                  rem          a5, a2, s10
                  srli         s10, t1, 16
                  remu         t1, s0, zero
                  nop
                  mulhsu       a3, a6, a1
                  mulh         s2, zero, s11
                  nop
                  or           s2, t0, a4
                  or           t0, gp, s0
                  auipc        t3, 109695
                  srai         t3, a1, 6
                  sll          s4, t3, s1
                  auipc        s4, 514748
                  auipc        s9, 438782
                  add          s8, s1, t5
                  mulhu        s11, t1, sp
                  addi         s11, zero, 1971
                  sub          s1, tp, s7
                  srai         a5, t6, 20
                  addi         a4, s6, 462
                  sub          t1, s4, s0
                  addi         a4, gp, -888
                  and          a3, t4, s9
                  and          t0, s9, s0
                  and          s2, t3, t2
                  sltiu        gp, t3, 1276
                  auipc        tp, 635826
                  mul          a1, t5, tp
                  ori          s1, ra, -522
                  xor          a3, t0, a3
                  sra          a2, t1, tp
                  slt          t0, t1, a0
                  sll          t0, s8, a3
                  or           s2, a7, s2
                  mulhsu       s2, a7, s8
                  xori         a3, s8, -1475
                  xori         gp, s2, -1242
                  xor          a3, s8, t4
                  add          t6, tp, a3
                  addi         t6, t5, -298
                  andi         s7, t4, 157
                  xor          gp, t5, t3
                  nop
                  mulhu        zero, sp, t3
                  auipc        t2, 785762
                  srai         s0, t1, 6
                  addi         t0, s8, 1999
                  mul          a2, s1, a0
                  or           s2, zero, s4
                  ori          s0, t1, -738
                  or           s5, a4, s6
                  mul          a5, s9, s1
                  lui          a4, 813859
                  ori          tp, s3, -1539
                  sltiu        s8, a4, -831
                  sltiu        s0, ra, 1454
                  mul          a2, a1, t1
                  addi         s3, s7, -1698
                  mulh         a7, s2, s1
                  remu         s7, s4, sp
                  rem          s2, s9, s10
                  and          t0, t2, s10
                  mulh         s0, a4, s10
                  xori         t0, s9, 933
                  mulh         a1, a6, s1
                  slli         s7, a6, 5
                  sltiu        s1, s2, -910
                  and          t5, t2, ra
                  mulhsu       sp, a7, a5
                  and          t2, s1, t0
                  xor          a4, a3, zero
                  and          t4, t5, s9
                  remu         a2, t5, s1
                  xor          sp, s1, s9
                  mulhu        a7, t0, t2
                  div          a2, t1, a6
                  mulhsu       a5, s5, s5
                  nop
                  add          s11, s10, t1
                  srai         t2, s11, 23
                  rem          t0, a3, sp
                  andi         s8, tp, -36
                  sltiu        a4, t0, -270
                  xor          zero, a2, s10
                  slli         s4, t2, 31
                  sll          s8, tp, s0
                  remu         a2, s1, a2
                  srl          a7, s9, a5
                  sub          s2, ra, t6
                  xor          s3, s7, gp
                  lui          s9, 118395
                  addi         a2, sp, 1002
                  nop
                  and          t5, a3, s2
                  sltiu        sp, a5, -2036
                  add          a3, a2, sp
                  div          a2, s11, a0
                  addi         t3, s7, 1161
                  sltiu        s5, s2, -30
                  lui          t2, 633485
                  lui          s7, 686761
                  srli         zero, a7, 3
                  divu         s7, t4, s2
                  ori          t4, t5, -1549
                  div          a7, s9, a1
                  sub          a4, a5, a7
                  mulhsu       gp, gp, s1
                  srai         s10, sp, 12
                  sltiu        s9, sp, -772
                  xori         s11, s2, -1518
                  add          a2, t4, s4
                  mul          s7, s7, t3
                  srai         s4, s1, 17
                  remu         s3, s10, t2
                  mulhu        tp, a6, t3
                  addi         gp, s0, -1436
                  div          s9, ra, a3
                  sltu         s5, t5, s6
                  lui          s8, 871772
                  sltu         s11, t1, s9
                  mul          t4, s1, a0
                  sub          s4, s4, a0
                  sltiu        a3, t2, 1346
                  srai         t6, a4, 3
                  ori          zero, s3, 655
                  or           s9, t6, s11
                  srli         gp, t0, 3
                  add          a1, zero, s8
                  xori         s8, t1, 1831
                  slti         tp, s4, 1361
                  sub          s10, t3, s8
                  slti         s7, s1, 955
                  rem          t0, t1, s4
                  mulhsu       s10, a6, zero
                  xori         s8, gp, -305
                  sltu         s11, a5, t4
                  add          t4, ra, t6
                  xor          t1, s4, s2
                  divu         gp, s0, s1
                  sra          t5, a3, a4
                  mulhsu       t0, tp, s10
                  sltu         t6, s2, s5
                  xor          t0, sp, a1
                  sltiu        s2, s10, 1668
                  xori         s7, a3, -864
                  auipc        t2, 731998
                  rem          s7, t3, a1
                  xori         s9, s7, -1240
                  srli         gp, a0, 13
                  rem          gp, s10, s4
                  or           s1, s0, a0
                  or           a5, ra, a3
                  sltu         a1, t2, zero
                  slli         s2, a7, 17
                  add          t5, s11, s7
                  slt          sp, a6, a7
                  sra          s0, s4, a2
                  srl          s9, t2, a4
                  and          a5, a2, a4
                  remu         s9, s9, a6
                  sra          t1, t2, a4
                  xori         t0, a4, 842
                  andi         s11, s5, 1560
                  ori          t3, a3, -1537
                  or           s11, s8, a2
                  lui          s4, 651053
                  slli         a3, s3, 8
                  xor          t3, a0, t6
                  mul          t6, s7, s10
                  add          s0, a3, s4
                  mulh         zero, t2, s0
                  auipc        a2, 407861
                  sltu         s4, ra, s6
                  divu         a7, t5, s6
                  andi         s0, gp, -267
                  mulhu        s5, a3, s3
                  sra          a1, t5, s0
                  sltu         t1, ra, gp
                  sltiu        s10, a3, 310
                  mul          a4, a7, s4
                  srai         sp, a7, 31
                  auipc        t2, 90782
                  remu         ra, s2, s6
                  slli         s1, gp, 21
                  sll          a3, a0, s7
                  sltiu        s9, s3, -1264
                  sub          sp, a2, s6
                  srl          s11, s4, t2
                  sub          a5, t3, tp
                  mulhu        s3, s2, sp
                  slti         a5, t2, -577
                  ori          s4, s2, -468
                  rem          a3, s1, a5
                  srl          a7, tp, s7
                  div          zero, a6, t6
                  auipc        sp, 451641
                  mul          s11, a4, a7
                  sll          s7, tp, t4
                  rem          t2, a2, a2
                  addi         a2, s11, -1080
                  sltu         a1, t0, t1
                  mulhsu       tp, s8, s6
                  slt          s2, t0, s4
                  andi         a3, s10, 748
                  srl          tp, t6, t0
                  srl          s0, a5, gp
                  and          a7, s4, a7
                  rem          a4, s9, t0
                  mul          zero, t3, t4
                  or           s11, s8, t6
                  sltu         a5, zero, s1
                  remu         s9, s7, a2
                  xori         s2, gp, 182
                  slt          a3, t1, ra
                  slli         t2, a3, 27
                  sltiu        s4, a1, -950
                  mulhu        s10, s8, s5
                  add          t1, a3, s7
                  sub          a7, s8, t4
                  srli         s9, a1, 17
                  remu         s7, t2, t3
                  srai         a7, s11, 0
                  auipc        s5, 369854
                  mulh         s0, ra, a7
                  remu         s7, a2, s9
                  mul          t5, s9, tp
                  slt          s10, gp, t4
                  or           a4, t1, s9
                  nop
                  slt          sp, t1, a7
                  div          zero, sp, a2
                  mulhu        s0, a0, s7
                  or           s0, s11, s5
                  or           s4, a4, s2
                  sub          t4, ra, a7
                  divu         tp, t1, zero
                  remu         t1, t4, s2
                  remu         t1, t5, t3
                  sra          sp, s1, s0
                  sra          t5, ra, t0
                  mulh         t5, t6, t4
                  mulhsu       a1, a3, a3
                  sra          a4, a1, s4
                  nop
                  sub          t0, s7, s1
                  remu         s5, t6, a7
                  auipc        t5, 864867
                  and          s7, ra, t5
                  rem          s1, t2, a6
                  divu         s3, a0, a5
                  sltu         t6, s1, a3
                  nop
                  mulhsu       s2, s1, t1
                  auipc        t3, 190957
                  remu         t2, s7, s8
                  auipc        t1, 788994
                  sra          t0, s9, tp
                  srl          s2, t6, s5
                  sltiu        a2, s6, 423
                  mul          s9, s7, a6
                  srl          ra, sp, a4
                  addi         a7, a0, 283
                  sltiu        tp, a4, -617
                  rem          s4, t0, a2
                  mul          t1, a0, a0
                  slt          a3, s11, a4
                  sll          s11, a3, s7
                  ori          a2, t5, -274
                  srai         a1, t3, 24
                  div          tp, a6, t3
                  mul          a3, a1, t6
                  div          t2, a2, a0
                  mulhsu       s1, t1, s5
                  lui          a5, 804876
                  divu         a1, tp, a5
                  sra          a4, s5, s11
                  sltiu        s11, s10, 1835
                  sll          a2, s4, ra
                  ori          s0, s4, -510
                  lui          s11, 900265
                  mulh         s3, zero, t4
                  srl          s8, s4, s7
                  srli         s5, s2, 23
                  slli         s0, a3, 13
                  sll          s3, s10, s4
                  slti         gp, t3, 167
                  auipc        s8, 1025397
                  slli         s11, t6, 12
                  addi         t6, sp, 1570
                  remu         sp, t6, a3
                  auipc        t0, 310059
                  slti         s7, t3, -1214
                  divu         t2, t1, sp
                  remu         sp, s0, t5
                  and          s5, s7, s4
                  rem          s0, s2, s10
                  sltiu        s11, zero, 758
                  xori         s1, a7, 2041
                  srli         s9, s7, 14
                  mulh         s0, s0, s0
                  slt          ra, a1, a2
                  mulhu        s0, s7, s9
                  xor          sp, a1, a2
                  rem          s11, ra, a3
                  sltiu        s10, s7, -1587
                  and          s7, t6, s5
                  sra          s9, a5, s2
                  mulhsu       gp, t6, t1
                  ori          s8, t3, -1076
                  slli         a5, s1, 10
                  slti         t2, s0, 1202
                  auipc        s1, 785854
                  or           a2, t6, a5
                  rem          t2, a2, a6
                  or           s2, a5, t4
                  srai         t1, s7, 7
                  xor          t0, zero, s1
                  srai         a2, a2, 25
                  or           t2, a0, t2
                  srai         t3, a6, 9
                  srl          a4, s11, s9
                  slti         a4, s6, -1616
                  div          t6, t2, sp
                  remu         s1, a5, ra
                  sltiu        a7, a4, 1823
                  addi         t3, s7, 1181
                  div          s9, s5, t4
                  rem          a1, s10, a7
                  lui          sp, 581549
                  sltiu        s2, a0, 460
                  auipc        t0, 281880
                  add          tp, zero, t0
                  xori         s2, sp, 529
                  ori          s10, s0, -456
                  srai         a2, t4, 1
                  ori          ra, a3, -2027
                  add          tp, a2, s8
                  slti         s1, t1, -1478
                  ori          s10, s8, -366
                  mul          t6, gp, t2
                  mulhsu       a2, a0, s11
                  or           s1, ra, t0
                  sra          a1, t2, s3
                  addi         t4, s3, 598
                  sll          s1, ra, zero
                  xori         gp, s3, 70
                  xor          a7, s2, a3
                  slt          a5, t0, a5
                  rem          a4, gp, s0
                  mulh         s3, a3, a5
                  remu         s5, a1, a5
                  add          s5, t4, t2
                  lui          a7, 444579
                  add          a5, s0, s5
                  srl          t1, a3, t5
                  srli         a2, t2, 22
                  or           a7, s3, a7
                  mulh         a7, t5, t4
                  addi         t2, a5, 1343
                  rem          zero, ra, s4
                  andi         t1, s5, 650
                  rem          a1, t2, a4
                  srai         s10, t0, 4
                  sltu         s4, s5, a4
                  rem          t6, s4, t0
                  div          s9, a1, s3
                  rem          ra, a2, a7
                  andi         s3, t6, -1238
                  nop
                  nop
                  xori         t6, a3, 769
                  and          sp, a7, a3
                  add          a5, sp, a7
                  sltiu        t4, s10, -944
                  srl          sp, s6, s11
                  divu         s2, t2, a6
                  mul          s7, s3, t3
                  srl          t0, tp, s1
                  xori         s9, a4, 1327
                  addi         zero, s7, 163
                  ori          t1, tp, -1210
                  or           s7, s6, s3
                  div          t5, t4, s9
                  srli         a2, t4, 1
                  slli         tp, s9, 31
                  srl          t6, s4, t4
                  auipc        a2, 105598
                  sltu         a2, a4, t0
                  mulh         a7, ra, s6
                  srl          s11, t3, gp
                  sub          s10, t0, t6
                  remu         a1, s1, s4
                  ori          t4, a6, 461
                  slti         t4, t1, -112
                  add          t2, s9, zero
                  mulhsu       t2, t4, a5
                  srai         s4, a1, 6
                  slti         a1, tp, -739
                  lui          s7, 1014284
                  srli         a7, a0, 27
                  srai         s2, s3, 21
                  srli         gp, tp, 15
                  mul          s1, t5, s6
                  add          t2, s2, s9
                  or           s2, a0, s5
                  mulhu        s0, t5, s3
                  sub          s3, t3, s3
                  mulh         t1, t5, a4
                  mulhu        s8, s8, tp
                  sltiu        s3, a0, 1774
                  remu         a1, s1, a6
                  and          t1, zero, a5
                  srli         sp, t2, 14
                  mulhsu       t0, t1, ra
                  sltu         s1, a1, a7
                  srl          zero, t4, a3
                  add          t1, a4, s8
                  srai         t0, t3, 21
                  and          s9, s7, a4
                  lui          t4, 475514
                  addi         a5, s4, 1857
                  addi         s4, t2, -574
                  srli         s2, s5, 23
                  ori          t2, a4, -974
                  sltu         s0, s2, s2
                  sltu         a2, sp, s11
                  and          t4, s0, a6
                  sltu         ra, ra, s11
                  lui          s11, 962239
                  and          s0, a3, a6
                  nop
                  sub          a3, s5, zero
                  mulh         s3, a2, t5
                  sra          zero, sp, s6
                  srli         s4, a2, 24
                  lui          tp, 146271
                  slt          s1, s0, a5
                  ori          ra, s9, -1694
                  nop
                  srli         s9, t2, 7
                  xor          a1, s10, s1
                  sltu         t5, gp, s1
                  srli         s9, tp, 22
                  andi         tp, s9, 1976
                  mulhu        s9, gp, s2
                  slli         s7, t5, 12
                  or           a4, s10, a7
                  slti         a3, s3, 350
                  slli         s7, s1, 31
                  mulhu        s4, t1, a4
                  ori          s2, s11, -1123
                  srl          t4, zero, s5
                  add          s1, s5, s5
                  rem          s4, a0, t2
                  or           gp, t0, t5
                  or           a4, s7, s0
                  srli         a3, ra, 2
                  srl          s9, s2, s8
                  slli         s2, t0, 1
                  sltu         a1, t2, s6
                  srl          t2, s2, s2
                  srli         a2, t0, 9
                  sltu         s0, s10, a5
                  srli         a4, s3, 0
                  ori          t0, s6, 1802
                  ori          t3, t0, -1943
                  mulhsu       ra, s10, a1
                  divu         a4, a3, t1
                  sra          sp, t3, sp
                  mulh         sp, s4, sp
                  sltiu        s8, s11, 178
                  ori          sp, a7, 1647
                  nop
                  mulhsu       zero, t6, s4
                  divu         sp, s2, t4
                  add          s10, a3, t2
                  sltiu        t6, t1, 415
                  mul          s8, zero, ra
                  div          ra, ra, s7
                  srli         s9, ra, 11
                  lui          tp, 871880
                  sub          s10, s4, tp
                  nop
                  sltu         a2, s4, s0
                  slti         sp, t0, -2044
                  xor          s2, tp, t5
                  srli         t0, a0, 8
                  sltiu        a3, s7, -1677
                  srai         s4, s5, 9
                  slti         s11, a7, 1072
                  sub          s8, s2, a3
                  srai         gp, t0, 15
                  slt          a5, t0, tp
                  add          a2, s5, s6
                  divu         s5, s6, s3
                  and          s2, a7, t6
                  sub          a5, s5, a3
                  srl          t0, s7, t3
                  mulh         a5, s9, s10
                  lui          ra, 652573
                  addi         ra, ra, 96
                  mulhu        gp, a5, a4
                  xori         a4, t5, 830
                  rem          zero, s1, tp
                  srli         a2, zero, 4
                  xori         tp, s8, 1749
                  sra          t3, a0, sp
                  srli         t0, a2, 26
                  srli         t1, t5, 20
                  sltu         s8, a1, t3
                  auipc        a7, 972408
                  sltiu        a7, a3, -859
                  srl          s11, gp, a1
                  auipc        zero, 638664
                  auipc        a1, 931587
                  remu         zero, sp, s3
                  xor          s0, s5, gp
                  lui          s8, 585237
                  auipc        s0, 550916
                  sltu         t1, s10, ra
                  sltu         a3, s11, s1
                  ori          gp, zero, -718
                  xor          t2, s1, s5
                  auipc        t3, 20120
                  divu         a1, ra, a5
                  slt          t0, t1, t2
                  auipc        s11, 287252
                  srai         s10, sp, 23
                  sltiu        s3, a2, -1828
                  rem          s2, gp, zero
                  mulhsu       s9, s0, s0
                  remu         a7, gp, a2
                  mulhu        t1, s3, t4
                  div          a3, a1, zero
                  mul          s9, sp, a7
                  sltiu        s0, zero, 1432
                  addi         t2, a1, -1698
                  slti         a7, a6, -1581
                  sra          s0, t2, a3
                  xor          a2, zero, s8
                  divu         ra, zero, t5
                  mul          s0, sp, a6
                  mulh         t4, s0, t3
                  addi         s1, s4, -644
                  addi         s2, a0, 392
                  add          t4, s4, t1
                  mulh         a4, s10, a3
                  andi         tp, t0, -318
                  addi         t2, sp, 1250
                  sub          a7, sp, a3
                  sltiu        t5, t1, -713
                  slt          s10, t3, t1
                  addi         a3, gp, -596
                  addi         a3, t5, 1248
                  mulh         sp, s8, s7
                  rem          s7, t2, t3
                  slti         s1, a0, 577
                  div          s7, t1, s6
                  mulhu        a7, s10, s6
                  mulh         t3, zero, a3
                  lui          s2, 822075
                  and          s5, a7, a1
                  and          a7, a1, s11
                  srl          s5, a1, t4
                  rem          t1, t4, t6
                  sll          a3, gp, s8
                  sltiu        t6, s2, 1100
                  slti         gp, s2, -686
                  srl          a1, t6, s8
                  div          a1, a5, gp
                  srl          t2, a2, a2
                  mulhsu       t2, s4, s4
                  srai         s2, t1, 31
                  xor          tp, a2, t5
                  add          t5, a4, a5
                  add          s7, s4, s2
                  srl          t6, a4, s11
                  mul          ra, s0, t1
                  sltu         t4, t3, s5
                  ori          s7, s0, -1204
                  slt          s4, t4, s10
                  addi         s1, t5, 481
                  remu         s8, s11, t2
                  andi         a1, s2, 664
                  srl          s11, s8, s6
                  add          t2, a6, s10
                  and          s7, t6, sp
                  div          tp, a6, t1
                  xori         a2, a6, 530
                  sll          t6, t5, t4
                  divu         s1, t0, a7
                  lui          t2, 463333
                  sll          a1, gp, a2
                  lui          s11, 127857
                  xori         t5, s6, -1609
                  ori          s9, a2, 1401
                  rem          a5, a4, s0
                  div          t3, s9, sp
                  slli         s5, s8, 7
                  rem          a4, t4, t4
                  mulhsu       s2, a6, s4
                  addi         s5, t4, 1455
                  sltiu        s4, s4, 732
                  nop
                  srai         tp, t4, 8
                  mulhsu       t6, s2, a5
                  mulhsu       s5, zero, t0
                  or           a1, t3, a7
                  rem          s7, t4, sp
                  sltiu        s1, s9, -1341
                  divu         a7, s0, t2
                  remu         s1, s0, s10
                  slti         a2, a4, -1153
                  srl          s5, t4, a6
                  srai         t4, s11, 0
                  add          s5, sp, a1
                  mulhu        s4, s0, t4
                  andi         a1, a1, -974
                  andi         t4, s5, -889
                  xori         tp, tp, 1189
                  ori          a7, ra, -925
                  slt          t5, t6, s11
                  srl          sp, s11, zero
                  sll          s8, s10, sp
                  xor          s3, s9, a5
                  xori         s11, s5, -1219
                  slti         gp, s2, 223
                  srai         s5, t3, 12
                  srli         a3, a2, 18
                  sll          s10, t1, gp
                  remu         s9, s0, s7
                  add          a4, s7, a4
                  ori          a3, s6, 1995
                  andi         s10, a3, -36
                  remu         s2, t1, t2
                  slli         tp, a3, 28
                  slli         a2, t6, 8
                  auipc        ra, 996933
                  lui          a5, 647811
                  sltu         s8, s5, s7
                  div          s2, t0, a4
                  or           s5, t5, t6
                  xor          t2, s1, s3
                  mul          s5, a2, a6
                  div          t2, a6, a2
                  or           tp, s6, t3
                  and          gp, a1, t2
                  mulhu        t2, gp, s11
                  slti         ra, s5, -1276
                  mulhsu       t4, sp, t4
                  sra          t3, a5, a0
                  or           a4, s4, tp
                  rem          gp, s10, s11
                  xor          s9, a5, s6
                  mulh         s2, tp, s2
                  add          ra, a5, s4
                  mulhsu       s10, a3, t6
                  xor          a2, t3, a0
                  sll          t1, s7, s2
                  ori          s2, s6, -1022
                  slti         s0, s7, -1065
                  sltiu        a3, zero, 613
                  ori          a7, a0, -915
                  srai         s11, a0, 3
                  slli         t0, a2, 15
                  xori         s3, t0, -10
                  and          t0, a5, s5
                  srai         t1, zero, 30
                  auipc        t6, 694650
                  lui          t6, 390531
                  auipc        s8, 660876
                  mulhu        a1, a5, t5
                  srai         s0, s6, 11
                  andi         t6, a5, 1998
                  slt          s3, a5, ra
                  divu         t4, s6, a5
                  and          s1, a5, s10
                  srli         s1, s7, 23
                  ori          a2, t3, -1557
                  auipc        s7, 638440
                  mulhu        t6, s9, zero
                  xori         t6, s5, 861
                  div          s0, gp, t3
                  sll          s8, t5, a5
                  sltu         a1, ra, gp
                  rem          s2, gp, s6
                  auipc        s9, 1024468
                  mulhu        sp, a2, s5
                  remu         s9, s2, t0
                  ori          s7, tp, -2011
                  slt          s3, sp, ra
                  or           a4, s7, tp
                  mulh         s11, s11, s4
                  sltiu        s7, gp, -1608
                  auipc        s9, 719985
                  srai         s0, s7, 8
                  srl          s0, t4, s7
                  slli         s3, a6, 19
                  auipc        zero, 439474
                  mulhsu       t1, a4, a6
                  srai         sp, tp, 9
                  slti         s4, a2, 1795
                  slti         zero, a2, -1657
                  divu         t6, s3, s1
                  mulhu        t4, gp, sp
                  slt          s4, a3, ra
                  lui          s11, 431359
                  mulh         t6, s1, s10
                  sll          s8, a6, a1
                  div          a5, ra, ra
                  nop
                  nop
                  auipc        s8, 58748
                  mulhu        t0, a2, a7
                  mulhsu       zero, gp, gp
                  or           t2, t4, a0
                  addi         s4, a2, 1971
                  sltiu        s4, t2, 552
                  sltiu        t3, s7, -1199
                  sltiu        t4, s1, -197
                  slt          s2, t3, t2
                  auipc        s4, 352399
                  remu         s8, a5, t1
                  sub          s3, s5, s0
                  divu         s8, s4, a3
                  slti         a1, s1, -702
                  lui          s10, 1013556
                  nop
                  rem          ra, a2, t1
                  ori          t5, s6, 693
                  slti         sp, s7, -1468
                  mulhsu       t0, ra, a4
                  xori         s1, a5, 1720
                  srai         tp, s0, 21
                  sltu         s5, s4, a2
                  or           t5, s7, s0
                  add          s0, a6, a6
                  addi         t3, t5, 1385
                  divu         s0, t4, a0
                  sll          s9, a0, s10
                  sll          s9, gp, s7
                  xor          t4, gp, a4
                  xori         t1, t5, -1489
                  andi         t4, a7, 1235
                  ori          t1, s10, 1745
                  auipc        s10, 737833
                  sltiu        s8, ra, 1036
                  mulhu        gp, t4, gp
                  sltiu        a7, a0, 1226
                  mulh         a4, s4, s9
                  addi         s3, s1, -341
                  sra          a2, gp, tp
                  srl          s3, t1, zero
                  or           s2, s1, zero
                  add          t6, s5, s8
                  slt          sp, s4, a3
                  mulh         s0, s0, gp
                  mulhu        t3, a4, t5
                  xor          a3, a5, t2
                  sll          s4, a4, a7
                  divu         zero, a7, t3
                  slt          s11, a5, s3
                  sra          a7, s10, s11
                  mulh         sp, s2, zero
                  sra          a1, s10, t2
                  srli         tp, a0, 10
                  sltu         a4, s5, a7
                  mulh         s1, a3, s8
                  sll          s11, a1, s6
                  sra          a3, s10, a6
                  ori          gp, t5, 1379
                  sub          t6, ra, a0
                  sltu         a2, sp, s7
                  srai         t6, s2, 17
                  mulh         a7, a6, a3
                  sra          t4, t4, ra
                  sll          s5, s2, a5
                  sub          gp, t2, a6
                  srl          gp, t6, a6
                  la x10, test_done
                  jalr x0, x10, 0
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
                  addi x16, x16, -4
                  sw  x22, (x16)
                  add x22, x16, zero
                  addi x22, x22, -128
                  sw  x1, 4(x22)
                  sw  x2, 8(x22)
                  sw  x3, 12(x22)
                  sw  x4, 16(x22)
                  sw  x5, 20(x22)
                  sw  x6, 24(x22)
                  sw  x7, 28(x22)
                  sw  x8, 32(x22)
                  sw  x9, 36(x22)
                  sw  x10, 40(x22)
                  sw  x11, 44(x22)
                  sw  x12, 48(x22)
                  sw  x13, 52(x22)
                  sw  x14, 56(x22)
                  sw  x15, 60(x22)
                  sw  x16, 64(x22)
                  sw  x17, 68(x22)
                  sw  x18, 72(x22)
                  sw  x19, 76(x22)
                  sw  x20, 80(x22)
                  sw  x21, 84(x22)
                  sw  x22, 88(x22)
                  sw  x23, 92(x22)
                  sw  x24, 96(x22)
                  sw  x25, 100(x22)
                  sw  x26, 104(x22)
                  sw  x27, 108(x22)
                  sw  x28, 112(x22)
                  sw  x29, 116(x22)
                  sw  x30, 120(x22)
                  sw  x31, 124(x22)
                  add x16, x22, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

mmode_intr_vector_2:
                  addi x16, x16, -4
                  sw  x22, (x16)
                  add x22, x16, zero
                  addi x22, x22, -128
                  sw  x1, 4(x22)
                  sw  x2, 8(x22)
                  sw  x3, 12(x22)
                  sw  x4, 16(x22)
                  sw  x5, 20(x22)
                  sw  x6, 24(x22)
                  sw  x7, 28(x22)
                  sw  x8, 32(x22)
                  sw  x9, 36(x22)
                  sw  x10, 40(x22)
                  sw  x11, 44(x22)
                  sw  x12, 48(x22)
                  sw  x13, 52(x22)
                  sw  x14, 56(x22)
                  sw  x15, 60(x22)
                  sw  x16, 64(x22)
                  sw  x17, 68(x22)
                  sw  x18, 72(x22)
                  sw  x19, 76(x22)
                  sw  x20, 80(x22)
                  sw  x21, 84(x22)
                  sw  x22, 88(x22)
                  sw  x23, 92(x22)
                  sw  x24, 96(x22)
                  sw  x25, 100(x22)
                  sw  x26, 104(x22)
                  sw  x27, 108(x22)
                  sw  x28, 112(x22)
                  sw  x29, 116(x22)
                  sw  x30, 120(x22)
                  sw  x31, 124(x22)
                  add x16, x22, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

mmode_intr_vector_3:
                  addi x16, x16, -4
                  sw  x22, (x16)
                  add x22, x16, zero
                  addi x22, x22, -128
                  sw  x1, 4(x22)
                  sw  x2, 8(x22)
                  sw  x3, 12(x22)
                  sw  x4, 16(x22)
                  sw  x5, 20(x22)
                  sw  x6, 24(x22)
                  sw  x7, 28(x22)
                  sw  x8, 32(x22)
                  sw  x9, 36(x22)
                  sw  x10, 40(x22)
                  sw  x11, 44(x22)
                  sw  x12, 48(x22)
                  sw  x13, 52(x22)
                  sw  x14, 56(x22)
                  sw  x15, 60(x22)
                  sw  x16, 64(x22)
                  sw  x17, 68(x22)
                  sw  x18, 72(x22)
                  sw  x19, 76(x22)
                  sw  x20, 80(x22)
                  sw  x21, 84(x22)
                  sw  x22, 88(x22)
                  sw  x23, 92(x22)
                  sw  x24, 96(x22)
                  sw  x25, 100(x22)
                  sw  x26, 104(x22)
                  sw  x27, 108(x22)
                  sw  x28, 112(x22)
                  sw  x29, 116(x22)
                  sw  x30, 120(x22)
                  sw  x31, 124(x22)
                  add x16, x22, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

mmode_intr_vector_4:
                  addi x16, x16, -4
                  sw  x22, (x16)
                  add x22, x16, zero
                  addi x22, x22, -128
                  sw  x1, 4(x22)
                  sw  x2, 8(x22)
                  sw  x3, 12(x22)
                  sw  x4, 16(x22)
                  sw  x5, 20(x22)
                  sw  x6, 24(x22)
                  sw  x7, 28(x22)
                  sw  x8, 32(x22)
                  sw  x9, 36(x22)
                  sw  x10, 40(x22)
                  sw  x11, 44(x22)
                  sw  x12, 48(x22)
                  sw  x13, 52(x22)
                  sw  x14, 56(x22)
                  sw  x15, 60(x22)
                  sw  x16, 64(x22)
                  sw  x17, 68(x22)
                  sw  x18, 72(x22)
                  sw  x19, 76(x22)
                  sw  x20, 80(x22)
                  sw  x21, 84(x22)
                  sw  x22, 88(x22)
                  sw  x23, 92(x22)
                  sw  x24, 96(x22)
                  sw  x25, 100(x22)
                  sw  x26, 104(x22)
                  sw  x27, 108(x22)
                  sw  x28, 112(x22)
                  sw  x29, 116(x22)
                  sw  x30, 120(x22)
                  sw  x31, 124(x22)
                  add x16, x22, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

mmode_intr_vector_5:
                  addi x16, x16, -4
                  sw  x22, (x16)
                  add x22, x16, zero
                  addi x22, x22, -128
                  sw  x1, 4(x22)
                  sw  x2, 8(x22)
                  sw  x3, 12(x22)
                  sw  x4, 16(x22)
                  sw  x5, 20(x22)
                  sw  x6, 24(x22)
                  sw  x7, 28(x22)
                  sw  x8, 32(x22)
                  sw  x9, 36(x22)
                  sw  x10, 40(x22)
                  sw  x11, 44(x22)
                  sw  x12, 48(x22)
                  sw  x13, 52(x22)
                  sw  x14, 56(x22)
                  sw  x15, 60(x22)
                  sw  x16, 64(x22)
                  sw  x17, 68(x22)
                  sw  x18, 72(x22)
                  sw  x19, 76(x22)
                  sw  x20, 80(x22)
                  sw  x21, 84(x22)
                  sw  x22, 88(x22)
                  sw  x23, 92(x22)
                  sw  x24, 96(x22)
                  sw  x25, 100(x22)
                  sw  x26, 104(x22)
                  sw  x27, 108(x22)
                  sw  x28, 112(x22)
                  sw  x29, 116(x22)
                  sw  x30, 120(x22)
                  sw  x31, 124(x22)
                  add x16, x22, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

mmode_intr_vector_6:
                  addi x16, x16, -4
                  sw  x22, (x16)
                  add x22, x16, zero
                  addi x22, x22, -128
                  sw  x1, 4(x22)
                  sw  x2, 8(x22)
                  sw  x3, 12(x22)
                  sw  x4, 16(x22)
                  sw  x5, 20(x22)
                  sw  x6, 24(x22)
                  sw  x7, 28(x22)
                  sw  x8, 32(x22)
                  sw  x9, 36(x22)
                  sw  x10, 40(x22)
                  sw  x11, 44(x22)
                  sw  x12, 48(x22)
                  sw  x13, 52(x22)
                  sw  x14, 56(x22)
                  sw  x15, 60(x22)
                  sw  x16, 64(x22)
                  sw  x17, 68(x22)
                  sw  x18, 72(x22)
                  sw  x19, 76(x22)
                  sw  x20, 80(x22)
                  sw  x21, 84(x22)
                  sw  x22, 88(x22)
                  sw  x23, 92(x22)
                  sw  x24, 96(x22)
                  sw  x25, 100(x22)
                  sw  x26, 104(x22)
                  sw  x27, 108(x22)
                  sw  x28, 112(x22)
                  sw  x29, 116(x22)
                  sw  x30, 120(x22)
                  sw  x31, 124(x22)
                  add x16, x22, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

mmode_intr_vector_7:
                  addi x16, x16, -4
                  sw  x22, (x16)
                  add x22, x16, zero
                  addi x22, x22, -128
                  sw  x1, 4(x22)
                  sw  x2, 8(x22)
                  sw  x3, 12(x22)
                  sw  x4, 16(x22)
                  sw  x5, 20(x22)
                  sw  x6, 24(x22)
                  sw  x7, 28(x22)
                  sw  x8, 32(x22)
                  sw  x9, 36(x22)
                  sw  x10, 40(x22)
                  sw  x11, 44(x22)
                  sw  x12, 48(x22)
                  sw  x13, 52(x22)
                  sw  x14, 56(x22)
                  sw  x15, 60(x22)
                  sw  x16, 64(x22)
                  sw  x17, 68(x22)
                  sw  x18, 72(x22)
                  sw  x19, 76(x22)
                  sw  x20, 80(x22)
                  sw  x21, 84(x22)
                  sw  x22, 88(x22)
                  sw  x23, 92(x22)
                  sw  x24, 96(x22)
                  sw  x25, 100(x22)
                  sw  x26, 104(x22)
                  sw  x27, 108(x22)
                  sw  x28, 112(x22)
                  sw  x29, 116(x22)
                  sw  x30, 120(x22)
                  sw  x31, 124(x22)
                  add x16, x22, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

mmode_intr_vector_8:
                  addi x16, x16, -4
                  sw  x22, (x16)
                  add x22, x16, zero
                  addi x22, x22, -128
                  sw  x1, 4(x22)
                  sw  x2, 8(x22)
                  sw  x3, 12(x22)
                  sw  x4, 16(x22)
                  sw  x5, 20(x22)
                  sw  x6, 24(x22)
                  sw  x7, 28(x22)
                  sw  x8, 32(x22)
                  sw  x9, 36(x22)
                  sw  x10, 40(x22)
                  sw  x11, 44(x22)
                  sw  x12, 48(x22)
                  sw  x13, 52(x22)
                  sw  x14, 56(x22)
                  sw  x15, 60(x22)
                  sw  x16, 64(x22)
                  sw  x17, 68(x22)
                  sw  x18, 72(x22)
                  sw  x19, 76(x22)
                  sw  x20, 80(x22)
                  sw  x21, 84(x22)
                  sw  x22, 88(x22)
                  sw  x23, 92(x22)
                  sw  x24, 96(x22)
                  sw  x25, 100(x22)
                  sw  x26, 104(x22)
                  sw  x27, 108(x22)
                  sw  x28, 112(x22)
                  sw  x29, 116(x22)
                  sw  x30, 120(x22)
                  sw  x31, 124(x22)
                  add x16, x22, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

mmode_intr_vector_9:
                  addi x16, x16, -4
                  sw  x22, (x16)
                  add x22, x16, zero
                  addi x22, x22, -128
                  sw  x1, 4(x22)
                  sw  x2, 8(x22)
                  sw  x3, 12(x22)
                  sw  x4, 16(x22)
                  sw  x5, 20(x22)
                  sw  x6, 24(x22)
                  sw  x7, 28(x22)
                  sw  x8, 32(x22)
                  sw  x9, 36(x22)
                  sw  x10, 40(x22)
                  sw  x11, 44(x22)
                  sw  x12, 48(x22)
                  sw  x13, 52(x22)
                  sw  x14, 56(x22)
                  sw  x15, 60(x22)
                  sw  x16, 64(x22)
                  sw  x17, 68(x22)
                  sw  x18, 72(x22)
                  sw  x19, 76(x22)
                  sw  x20, 80(x22)
                  sw  x21, 84(x22)
                  sw  x22, 88(x22)
                  sw  x23, 92(x22)
                  sw  x24, 96(x22)
                  sw  x25, 100(x22)
                  sw  x26, 104(x22)
                  sw  x27, 108(x22)
                  sw  x28, 112(x22)
                  sw  x29, 116(x22)
                  sw  x30, 120(x22)
                  sw  x31, 124(x22)
                  add x16, x22, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

mmode_intr_vector_10:
                  addi x16, x16, -4
                  sw  x22, (x16)
                  add x22, x16, zero
                  addi x22, x22, -128
                  sw  x1, 4(x22)
                  sw  x2, 8(x22)
                  sw  x3, 12(x22)
                  sw  x4, 16(x22)
                  sw  x5, 20(x22)
                  sw  x6, 24(x22)
                  sw  x7, 28(x22)
                  sw  x8, 32(x22)
                  sw  x9, 36(x22)
                  sw  x10, 40(x22)
                  sw  x11, 44(x22)
                  sw  x12, 48(x22)
                  sw  x13, 52(x22)
                  sw  x14, 56(x22)
                  sw  x15, 60(x22)
                  sw  x16, 64(x22)
                  sw  x17, 68(x22)
                  sw  x18, 72(x22)
                  sw  x19, 76(x22)
                  sw  x20, 80(x22)
                  sw  x21, 84(x22)
                  sw  x22, 88(x22)
                  sw  x23, 92(x22)
                  sw  x24, 96(x22)
                  sw  x25, 100(x22)
                  sw  x26, 104(x22)
                  sw  x27, 108(x22)
                  sw  x28, 112(x22)
                  sw  x29, 116(x22)
                  sw  x30, 120(x22)
                  sw  x31, 124(x22)
                  add x16, x22, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

mmode_intr_vector_11:
                  addi x16, x16, -4
                  sw  x22, (x16)
                  add x22, x16, zero
                  addi x22, x22, -128
                  sw  x1, 4(x22)
                  sw  x2, 8(x22)
                  sw  x3, 12(x22)
                  sw  x4, 16(x22)
                  sw  x5, 20(x22)
                  sw  x6, 24(x22)
                  sw  x7, 28(x22)
                  sw  x8, 32(x22)
                  sw  x9, 36(x22)
                  sw  x10, 40(x22)
                  sw  x11, 44(x22)
                  sw  x12, 48(x22)
                  sw  x13, 52(x22)
                  sw  x14, 56(x22)
                  sw  x15, 60(x22)
                  sw  x16, 64(x22)
                  sw  x17, 68(x22)
                  sw  x18, 72(x22)
                  sw  x19, 76(x22)
                  sw  x20, 80(x22)
                  sw  x21, 84(x22)
                  sw  x22, 88(x22)
                  sw  x23, 92(x22)
                  sw  x24, 96(x22)
                  sw  x25, 100(x22)
                  sw  x26, 104(x22)
                  sw  x27, 108(x22)
                  sw  x28, 112(x22)
                  sw  x29, 116(x22)
                  sw  x30, 120(x22)
                  sw  x31, 124(x22)
                  add x16, x22, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

mmode_intr_vector_12:
                  addi x16, x16, -4
                  sw  x22, (x16)
                  add x22, x16, zero
                  addi x22, x22, -128
                  sw  x1, 4(x22)
                  sw  x2, 8(x22)
                  sw  x3, 12(x22)
                  sw  x4, 16(x22)
                  sw  x5, 20(x22)
                  sw  x6, 24(x22)
                  sw  x7, 28(x22)
                  sw  x8, 32(x22)
                  sw  x9, 36(x22)
                  sw  x10, 40(x22)
                  sw  x11, 44(x22)
                  sw  x12, 48(x22)
                  sw  x13, 52(x22)
                  sw  x14, 56(x22)
                  sw  x15, 60(x22)
                  sw  x16, 64(x22)
                  sw  x17, 68(x22)
                  sw  x18, 72(x22)
                  sw  x19, 76(x22)
                  sw  x20, 80(x22)
                  sw  x21, 84(x22)
                  sw  x22, 88(x22)
                  sw  x23, 92(x22)
                  sw  x24, 96(x22)
                  sw  x25, 100(x22)
                  sw  x26, 104(x22)
                  sw  x27, 108(x22)
                  sw  x28, 112(x22)
                  sw  x29, 116(x22)
                  sw  x30, 120(x22)
                  sw  x31, 124(x22)
                  add x16, x22, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

mmode_intr_vector_13:
                  addi x16, x16, -4
                  sw  x22, (x16)
                  add x22, x16, zero
                  addi x22, x22, -128
                  sw  x1, 4(x22)
                  sw  x2, 8(x22)
                  sw  x3, 12(x22)
                  sw  x4, 16(x22)
                  sw  x5, 20(x22)
                  sw  x6, 24(x22)
                  sw  x7, 28(x22)
                  sw  x8, 32(x22)
                  sw  x9, 36(x22)
                  sw  x10, 40(x22)
                  sw  x11, 44(x22)
                  sw  x12, 48(x22)
                  sw  x13, 52(x22)
                  sw  x14, 56(x22)
                  sw  x15, 60(x22)
                  sw  x16, 64(x22)
                  sw  x17, 68(x22)
                  sw  x18, 72(x22)
                  sw  x19, 76(x22)
                  sw  x20, 80(x22)
                  sw  x21, 84(x22)
                  sw  x22, 88(x22)
                  sw  x23, 92(x22)
                  sw  x24, 96(x22)
                  sw  x25, 100(x22)
                  sw  x26, 104(x22)
                  sw  x27, 108(x22)
                  sw  x28, 112(x22)
                  sw  x29, 116(x22)
                  sw  x30, 120(x22)
                  sw  x31, 124(x22)
                  add x16, x22, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

mmode_intr_vector_14:
                  addi x16, x16, -4
                  sw  x22, (x16)
                  add x22, x16, zero
                  addi x22, x22, -128
                  sw  x1, 4(x22)
                  sw  x2, 8(x22)
                  sw  x3, 12(x22)
                  sw  x4, 16(x22)
                  sw  x5, 20(x22)
                  sw  x6, 24(x22)
                  sw  x7, 28(x22)
                  sw  x8, 32(x22)
                  sw  x9, 36(x22)
                  sw  x10, 40(x22)
                  sw  x11, 44(x22)
                  sw  x12, 48(x22)
                  sw  x13, 52(x22)
                  sw  x14, 56(x22)
                  sw  x15, 60(x22)
                  sw  x16, 64(x22)
                  sw  x17, 68(x22)
                  sw  x18, 72(x22)
                  sw  x19, 76(x22)
                  sw  x20, 80(x22)
                  sw  x21, 84(x22)
                  sw  x22, 88(x22)
                  sw  x23, 92(x22)
                  sw  x24, 96(x22)
                  sw  x25, 100(x22)
                  sw  x26, 104(x22)
                  sw  x27, 108(x22)
                  sw  x28, 112(x22)
                  sw  x29, 116(x22)
                  sw  x30, 120(x22)
                  sw  x31, 124(x22)
                  add x16, x22, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

mmode_intr_vector_15:
                  addi x16, x16, -4
                  sw  x22, (x16)
                  add x22, x16, zero
                  addi x22, x22, -128
                  sw  x1, 4(x22)
                  sw  x2, 8(x22)
                  sw  x3, 12(x22)
                  sw  x4, 16(x22)
                  sw  x5, 20(x22)
                  sw  x6, 24(x22)
                  sw  x7, 28(x22)
                  sw  x8, 32(x22)
                  sw  x9, 36(x22)
                  sw  x10, 40(x22)
                  sw  x11, 44(x22)
                  sw  x12, 48(x22)
                  sw  x13, 52(x22)
                  sw  x14, 56(x22)
                  sw  x15, 60(x22)
                  sw  x16, 64(x22)
                  sw  x17, 68(x22)
                  sw  x18, 72(x22)
                  sw  x19, 76(x22)
                  sw  x20, 80(x22)
                  sw  x21, 84(x22)
                  sw  x22, 88(x22)
                  sw  x23, 92(x22)
                  sw  x24, 96(x22)
                  sw  x25, 100(x22)
                  sw  x26, 104(x22)
                  sw  x27, 108(x22)
                  sw  x28, 112(x22)
                  sw  x29, 116(x22)
                  sw  x30, 120(x22)
                  sw  x31, 124(x22)
                  add x16, x22, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

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
                  addi x16, x16, -4
                  sw  x22, (x16)
                  add x22, x16, zero
                  addi x22, x22, -128
                  sw  x1, 4(x22)
                  sw  x2, 8(x22)
                  sw  x3, 12(x22)
                  sw  x4, 16(x22)
                  sw  x5, 20(x22)
                  sw  x6, 24(x22)
                  sw  x7, 28(x22)
                  sw  x8, 32(x22)
                  sw  x9, 36(x22)
                  sw  x10, 40(x22)
                  sw  x11, 44(x22)
                  sw  x12, 48(x22)
                  sw  x13, 52(x22)
                  sw  x14, 56(x22)
                  sw  x15, 60(x22)
                  sw  x16, 64(x22)
                  sw  x17, 68(x22)
                  sw  x18, 72(x22)
                  sw  x19, 76(x22)
                  sw  x20, 80(x22)
                  sw  x21, 84(x22)
                  sw  x22, 88(x22)
                  sw  x23, 92(x22)
                  sw  x24, 96(x22)
                  sw  x25, 100(x22)
                  sw  x26, 104(x22)
                  sw  x27, 108(x22)
                  sw  x28, 112(x22)
                  sw  x29, 116(x22)
                  sw  x30, 120(x22)
                  sw  x31, 124(x22)
                  add x16, x22, zero
                  csrr x9, 0x341 # MEPC
                  csrr x9, 0x342 # MCAUSE
                  li x24, 0x3 # BREAKPOINT
                  beq x9, x24, ebreak_handler
                  li x24, 0x8 # ECALL_UMODE
                  beq x9, x24, ecall_handler
                  li x24, 0x9 # ECALL_SMODE
                  beq x9, x24, ecall_handler
                  li x24, 0xb # ECALL_MMODE
                  beq x9, x24, ecall_handler
                  li x24, 0x1
                  beq x9, x24, instr_fault_handler
                  li x24, 0x5
                  beq x9, x24, load_fault_handler
                  li x24, 0x7
                  beq x9, x24, store_fault_handler
                  li x24, 0xc
                  beq x9, x24, pt_fault_handler
                  li x24, 0xd
                  beq x9, x24, pt_fault_handler
                  li x24, 0xf
                  beq x9, x24, pt_fault_handler
                  li x24, 0x2 # ILLEGAL_INSTRUCTION
                  beq x9, x24, illegal_instr_handler
                  csrr x24, 0x343 # MTVAL
                  1: la x10, test_done
                  jalr x1, x10, 0

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
                  la x10, write_tohost
                  jalr x0, x10, 0

instr_fault_handler:
                  add x22, x16, zero
                  lw  x1, 4(x22)
                  lw  x2, 8(x22)
                  lw  x3, 12(x22)
                  lw  x4, 16(x22)
                  lw  x5, 20(x22)
                  lw  x6, 24(x22)
                  lw  x7, 28(x22)
                  lw  x8, 32(x22)
                  lw  x9, 36(x22)
                  lw  x10, 40(x22)
                  lw  x11, 44(x22)
                  lw  x12, 48(x22)
                  lw  x13, 52(x22)
                  lw  x14, 56(x22)
                  lw  x15, 60(x22)
                  lw  x16, 64(x22)
                  lw  x17, 68(x22)
                  lw  x18, 72(x22)
                  lw  x19, 76(x22)
                  lw  x20, 80(x22)
                  lw  x21, 84(x22)
                  lw  x22, 88(x22)
                  lw  x23, 92(x22)
                  lw  x24, 96(x22)
                  lw  x25, 100(x22)
                  lw  x26, 104(x22)
                  lw  x27, 108(x22)
                  lw  x28, 112(x22)
                  lw  x29, 116(x22)
                  lw  x30, 120(x22)
                  lw  x31, 124(x22)
                  addi x22, x22, 128
                  add x16, x22, zero
                  lw  x22, (x16)
                  addi x16, x16, 4
                  mret

load_fault_handler:
                  add x22, x16, zero
                  lw  x1, 4(x22)
                  lw  x2, 8(x22)
                  lw  x3, 12(x22)
                  lw  x4, 16(x22)
                  lw  x5, 20(x22)
                  lw  x6, 24(x22)
                  lw  x7, 28(x22)
                  lw  x8, 32(x22)
                  lw  x9, 36(x22)
                  lw  x10, 40(x22)
                  lw  x11, 44(x22)
                  lw  x12, 48(x22)
                  lw  x13, 52(x22)
                  lw  x14, 56(x22)
                  lw  x15, 60(x22)
                  lw  x16, 64(x22)
                  lw  x17, 68(x22)
                  lw  x18, 72(x22)
                  lw  x19, 76(x22)
                  lw  x20, 80(x22)
                  lw  x21, 84(x22)
                  lw  x22, 88(x22)
                  lw  x23, 92(x22)
                  lw  x24, 96(x22)
                  lw  x25, 100(x22)
                  lw  x26, 104(x22)
                  lw  x27, 108(x22)
                  lw  x28, 112(x22)
                  lw  x29, 116(x22)
                  lw  x30, 120(x22)
                  lw  x31, 124(x22)
                  addi x22, x22, 128
                  add x16, x22, zero
                  lw  x22, (x16)
                  addi x16, x16, 4
                  mret

store_fault_handler:
                  add x22, x16, zero
                  lw  x1, 4(x22)
                  lw  x2, 8(x22)
                  lw  x3, 12(x22)
                  lw  x4, 16(x22)
                  lw  x5, 20(x22)
                  lw  x6, 24(x22)
                  lw  x7, 28(x22)
                  lw  x8, 32(x22)
                  lw  x9, 36(x22)
                  lw  x10, 40(x22)
                  lw  x11, 44(x22)
                  lw  x12, 48(x22)
                  lw  x13, 52(x22)
                  lw  x14, 56(x22)
                  lw  x15, 60(x22)
                  lw  x16, 64(x22)
                  lw  x17, 68(x22)
                  lw  x18, 72(x22)
                  lw  x19, 76(x22)
                  lw  x20, 80(x22)
                  lw  x21, 84(x22)
                  lw  x22, 88(x22)
                  lw  x23, 92(x22)
                  lw  x24, 96(x22)
                  lw  x25, 100(x22)
                  lw  x26, 104(x22)
                  lw  x27, 108(x22)
                  lw  x28, 112(x22)
                  lw  x29, 116(x22)
                  lw  x30, 120(x22)
                  lw  x31, 124(x22)
                  addi x22, x22, 128
                  add x16, x22, zero
                  lw  x22, (x16)
                  addi x16, x16, 4
                  mret

ebreak_handler:   
                  csrr  x9, 0x341
                  addi  x9, x9, 4
                  csrw  0x341, x9
                  add x22, x16, zero
                  lw  x1, 4(x22)
                  lw  x2, 8(x22)
                  lw  x3, 12(x22)
                  lw  x4, 16(x22)
                  lw  x5, 20(x22)
                  lw  x6, 24(x22)
                  lw  x7, 28(x22)
                  lw  x8, 32(x22)
                  lw  x9, 36(x22)
                  lw  x10, 40(x22)
                  lw  x11, 44(x22)
                  lw  x12, 48(x22)
                  lw  x13, 52(x22)
                  lw  x14, 56(x22)
                  lw  x15, 60(x22)
                  lw  x16, 64(x22)
                  lw  x17, 68(x22)
                  lw  x18, 72(x22)
                  lw  x19, 76(x22)
                  lw  x20, 80(x22)
                  lw  x21, 84(x22)
                  lw  x22, 88(x22)
                  lw  x23, 92(x22)
                  lw  x24, 96(x22)
                  lw  x25, 100(x22)
                  lw  x26, 104(x22)
                  lw  x27, 108(x22)
                  lw  x28, 112(x22)
                  lw  x29, 116(x22)
                  lw  x30, 120(x22)
                  lw  x31, 124(x22)
                  addi x22, x22, 128
                  add x16, x22, zero
                  lw  x22, (x16)
                  addi x16, x16, 4
                  mret

illegal_instr_handler:
                  csrr  x9, 0x341
                  addi  x9, x9, 4
                  csrw  0x341, x9
                  add x22, x16, zero
                  lw  x1, 4(x22)
                  lw  x2, 8(x22)
                  lw  x3, 12(x22)
                  lw  x4, 16(x22)
                  lw  x5, 20(x22)
                  lw  x6, 24(x22)
                  lw  x7, 28(x22)
                  lw  x8, 32(x22)
                  lw  x9, 36(x22)
                  lw  x10, 40(x22)
                  lw  x11, 44(x22)
                  lw  x12, 48(x22)
                  lw  x13, 52(x22)
                  lw  x14, 56(x22)
                  lw  x15, 60(x22)
                  lw  x16, 64(x22)
                  lw  x17, 68(x22)
                  lw  x18, 72(x22)
                  lw  x19, 76(x22)
                  lw  x20, 80(x22)
                  lw  x21, 84(x22)
                  lw  x22, 88(x22)
                  lw  x23, 92(x22)
                  lw  x24, 96(x22)
                  lw  x25, 100(x22)
                  lw  x26, 104(x22)
                  lw  x27, 108(x22)
                  lw  x28, 112(x22)
                  lw  x29, 116(x22)
                  lw  x30, 120(x22)
                  lw  x31, 124(x22)
                  addi x22, x22, 128
                  add x16, x22, zero
                  lw  x22, (x16)
                  addi x16, x16, 4
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x9, 0x300 # MSTATUS;
                  csrr  x9, 0x304 # MIE;
                  csrr  x9, 0x344 # MIP;
                  csrrc x9, 0x344, x9 # MIP;
                  add x22, x16, zero
                  lw  x1, 4(x22)
                  lw  x2, 8(x22)
                  lw  x3, 12(x22)
                  lw  x4, 16(x22)
                  lw  x5, 20(x22)
                  lw  x6, 24(x22)
                  lw  x7, 28(x22)
                  lw  x8, 32(x22)
                  lw  x9, 36(x22)
                  lw  x10, 40(x22)
                  lw  x11, 44(x22)
                  lw  x12, 48(x22)
                  lw  x13, 52(x22)
                  lw  x14, 56(x22)
                  lw  x15, 60(x22)
                  lw  x16, 64(x22)
                  lw  x17, 68(x22)
                  lw  x18, 72(x22)
                  lw  x19, 76(x22)
                  lw  x20, 80(x22)
                  lw  x21, 84(x22)
                  lw  x22, 88(x22)
                  lw  x23, 92(x22)
                  lw  x24, 96(x22)
                  lw  x25, 100(x22)
                  lw  x26, 104(x22)
                  lw  x27, 108(x22)
                  lw  x28, 112(x22)
                  lw  x29, 116(x22)
                  lw  x30, 120(x22)
                  lw  x31, 124(x22)
                  addi x22, x22, 128
                  add x16, x22, zero
                  lw  x22, (x16)
                  addi x16, x16, 4
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
