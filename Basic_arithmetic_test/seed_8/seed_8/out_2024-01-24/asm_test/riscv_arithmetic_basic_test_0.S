.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x20, h0_start
jalr x0, x20, 0
h0_start:
                  li x28, 0x40001104
                  csrw 0x301, x28
kernel_sp:        
                  la x16, kernel_stack_end

trap_vec_init:    
                  la x28, mtvec_handler
                  ori x28, x28, 1
                  csrw 0x305, x28 # MTVEC

mepc_setup:       
                  la x28, init
                  csrw 0x341, x28

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x28, 0x1800
                  csrw 0x300, x28 # MSTATUS
                  li x28, 0x0
                  csrw 0x304, x28 # MIE
                  mret
init:             
                  li x0, 0x0
                  li x1, 0xa88cfe61
                  li x2, 0x31fcd173
                  li x3, 0x80000000
                  li x4, 0x80000000
                  li x5, 0xfbddeb77
                  li x6, 0x80000000
                  li x7, 0x0
                  li x8, 0x80000000
                  li x10, 0xf2884305
                  li x11, 0xfb890157
                  li x12, 0x0
                  li x13, 0xff7069be
                  li x14, 0x80000000
                  li x15, 0x9
                  li x17, 0x290dc762
                  li x18, 0x0
                  li x19, 0xa7839c5f
                  li x20, 0xbad8bc85
                  li x21, 0x0
                  li x22, 0xf8b28bb1
                  li x23, 0x0
                  li x24, 0x482fd19
                  li x25, 0x80000000
                  li x26, 0xd3c120b7
                  li x27, 0xa412f14
                  li x28, 0x80000000
                  li x29, 0x9
                  li x30, 0xfba3d3b7
                  li x31, 0xe0af86d1
                  la x9, user_stack_end
main:             div          zero, a5, s10
                  and          s2, t4, a6
                  rem          zero, t3, t4
                  slt          a1, gp, s2
                  xor          sp, s9, t0
                  slt          sp, s1, a2
                  slli         s7, a5, 16
                  or           ra, gp, s9
                  nop
                  addi         a4, a2, -635
                  andi         t3, s9, 449
                  addi         a2, sp, -951
                  divu         s9, t4, s8
                  sub          t5, t0, t0
                  or           gp, a3, t4
                  andi         tp, ra, 417
                  rem          a4, s5, s8
                  or           gp, gp, t1
                  andi         s5, s5, -1475
                  mulhu        t6, zero, s9
                  slt          s0, s0, sp
                  ori          gp, sp, 65
                  lui          s10, 722855
                  slti         s8, t6, 2043
                  div          gp, s4, ra
                  slti         s0, a1, -325
                  xori         s7, s7, 1321
                  rem          t5, t3, t1
                  mulhsu       ra, zero, ra
                  ori          t0, sp, 518
                  mulh         a0, ra, s11
                  or           s11, s4, s0
                  xori         a2, t3, 918
                  lui          t1, 942578
                  xori         s10, s9, -1062
                  addi         a1, a7, -1299
                  mulh         t2, s3, t6
                  and          s6, t6, s9
                  xori         a7, t4, -745
                  add          s10, t6, zero
                  sltiu        s3, t4, -974
                  sltiu        s9, s10, -1276
                  slt          zero, t0, s4
                  ori          a1, a5, -492
                  or           tp, s6, a0
                  and          s2, s3, t2
                  xor          s10, s0, s9
                  divu         t0, t0, t5
                  slt          a1, s4, s1
                  mul          t5, ra, a3
                  slli         a0, t2, 20
                  auipc        sp, 325280
                  sub          t5, s5, a0
                  nop
                  rem          s8, a6, s3
                  sll          a7, a5, s9
                  sub          t2, a0, s5
                  slti         s6, t6, -857
                  add          s2, s0, zero
                  mulh         a4, a6, t3
                  nop
                  slti         s10, s7, 1119
                  xor          s11, s10, a3
                  add          s9, zero, t4
                  or           t1, s11, t1
                  mulhsu       a4, s6, t2
                  xori         t6, s1, -72
                  add          sp, s2, sp
                  xor          t3, s5, t6
                  ori          s9, s5, -643
                  xori         t2, s5, 240
                  or           t0, s6, t5
                  sll          a3, t1, a2
                  addi         gp, s10, 1469
                  xori         sp, s6, 1631
                  rem          s6, gp, s4
                  rem          t3, t4, zero
                  lui          s8, 829481
                  sra          sp, s4, ra
                  nop
                  sra          a0, s6, s8
                  ori          t0, a4, 436
                  xor          t2, s8, gp
                  mulhsu       zero, t4, s8
                  slli         s6, s4, 14
                  addi         a3, s0, 1349
                  remu         t3, a5, a2
                  xori         sp, s5, 1368
                  sll          s3, s4, a4
                  slli         a7, s8, 9
                  slt          s9, a6, t2
                  srai         s2, s11, 20
                  ori          a5, a0, 1874
                  sltiu        s3, t5, -24
                  nop
                  nop
                  and          t0, s7, s10
                  sll          tp, a6, s9
                  sub          s0, t5, s9
                  ori          tp, s0, -742
                  or           s8, s9, a4
                  slli         s7, t0, 3
                  mulh         s7, a4, t0
                  div          zero, a5, s9
                  lui          sp, 788085
                  srl          a3, a2, s11
                  slt          a4, t6, a1
                  xor          s6, s3, s2
                  srl          s0, zero, sp
                  nop
                  sra          s6, a2, a4
                  slli         t1, s7, 29
                  rem          s9, t0, a3
                  srli         t4, t0, 16
                  sra          a7, s8, t5
                  srl          a7, s9, gp
                  slti         a4, s0, 1031
                  slt          s2, s3, s10
                  xor          s9, s5, t1
                  srai         t5, s6, 19
                  remu         ra, t4, s3
                  addi         a4, s8, -319
                  lui          a3, 741773
                  andi         s3, t5, 1790
                  or           t5, t5, s0
                  slt          t0, s6, zero
                  rem          sp, s11, t0
                  nop
                  and          t2, zero, s10
                  xor          a5, a6, s1
                  xori         a4, ra, -125
                  srai         t1, ra, 24
                  slt          s3, s7, s0
                  andi         a7, sp, -1439
                  slt          a1, sp, s11
                  or           t2, t1, t4
                  srl          t3, s3, s4
                  sra          gp, ra, a2
                  ori          t0, t4, -360
                  addi         a0, t2, -1732
                  mulh         zero, s1, zero
                  add          s9, a4, ra
                  slti         s0, s1, 525
                  slti         s5, gp, 1721
                  div          t0, zero, s11
                  slli         ra, a0, 26
                  divu         ra, t3, t0
                  srai         t5, s0, 20
                  auipc        t6, 270167
                  sub          a5, sp, t1
                  slti         t2, s5, -1948
                  srai         ra, s3, 17
                  mul          a0, t0, s9
                  nop
                  remu         a1, a1, zero
                  slli         s11, s5, 4
                  sltiu        t6, s10, 1113
                  lui          t3, 309187
                  sltiu        t5, s11, -1920
                  nop
                  sltiu        t5, zero, -517
                  mulhsu       t5, sp, gp
                  and          a3, a4, a6
                  slt          a4, a4, s1
                  and          a7, zero, a2
                  mulhsu       s11, s6, tp
                  rem          a5, s10, t1
                  sra          a0, a3, a1
                  sub          s6, tp, s7
                  ori          zero, a7, -95
                  mulh         a5, t1, a7
                  xor          t1, a1, s5
                  mul          s8, a6, a4
                  slli         s2, t3, 30
                  nop
                  sra          s5, s1, t3
                  mulh         a1, a5, ra
                  mulhu        s3, tp, a4
                  mulh         sp, s1, a5
                  sltu         gp, zero, t4
                  or           a2, a0, a1
                  sll          s7, s4, sp
                  mul          s0, a7, s7
                  mulhu        zero, t0, t5
                  mulh         t2, s6, s9
                  slti         s10, s5, 1582
                  nop
                  sltiu        s7, s11, 1525
                  slli         tp, t1, 7
                  srai         t6, a4, 10
                  div          s0, a4, s6
                  sll          s6, a0, s10
                  sub          s3, t1, a4
                  divu         s10, a2, a0
                  addi         s10, a5, -1400
                  or           t2, s4, s5
                  remu         s0, s0, t2
                  addi         t3, t0, 1692
                  nop
                  nop
                  slt          a0, a1, tp
                  sltu         s7, t5, t6
                  mulhsu       s10, t5, s10
                  lui          t3, 1027007
                  xor          sp, t6, ra
                  mulhu        zero, a4, s10
                  and          s5, s4, s8
                  xori         s11, s4, 1708
                  and          s5, s11, a2
                  xor          t2, s4, t1
                  xori         a0, tp, -310
                  divu         tp, t0, tp
                  divu         t2, a3, tp
                  nop
                  add          zero, a6, t6
                  mul          s9, a3, s2
                  sub          t5, t4, a6
                  sll          t3, s3, a0
                  sub          gp, s2, a4
                  slt          zero, s7, a1
                  srai         s3, s3, 9
                  xor          s7, ra, tp
                  sltiu        s5, s11, 524
                  slli         a2, s7, 20
                  mulhsu       t1, t0, a6
                  rem          t1, s5, a2
                  remu         sp, t2, s5
                  sltu         t0, gp, a4
                  or           t4, a5, s9
                  slti         a1, a5, 708
                  rem          ra, s2, t3
                  addi         a1, t4, 903
                  rem          t3, s1, t3
                  slt          s5, t4, s7
                  slti         t1, zero, -1294
                  slli         s0, ra, 22
                  sll          t4, s3, t3
                  sltu         zero, s6, s2
                  add          s5, s5, s4
                  sltiu        s9, zero, -677
                  mul          zero, s3, zero
                  add          s6, s7, s7
                  addi         a4, s6, -1776
                  nop
                  sltiu        s11, ra, 149
                  and          zero, t6, s1
                  slt          s7, s0, t2
                  slli         a3, tp, 23
                  mul          s9, s11, s4
                  auipc        s5, 290377
                  lui          t6, 176633
                  sltu         a4, a3, t3
                  slt          gp, t2, t2
                  andi         t2, a0, 0
                  sub          a1, s2, s5
                  srai         t3, zero, 20
                  xor          s0, s6, t1
                  mulhu        tp, a6, s4
                  and          s2, t3, ra
                  or           a7, t0, a4
                  sll          s8, s8, ra
                  mulh         t1, ra, s4
                  sra          s6, s0, s11
                  slt          s9, s1, tp
                  remu         zero, tp, s1
                  mul          s5, t6, gp
                  mul          zero, s5, tp
                  srli         a3, t6, 18
                  slt          tp, s0, s0
                  div          a4, s3, a6
                  slti         t3, s1, -1640
                  slli         zero, s4, 4
                  sltiu        t0, s0, -1647
                  slti         s9, a7, 1386
                  mulhu        gp, tp, a2
                  sltu         t2, s4, a4
                  divu         a7, s5, s8
                  xori         s10, a6, -602
                  sra          s2, a5, s9
                  andi         s5, s2, -1203
                  mulhu        t1, s6, zero
                  sra          s6, a0, a2
                  sub          a0, t4, a7
                  addi         a1, t4, -1714
                  srl          gp, s2, s1
                  nop
                  srl          s9, a7, t0
                  sll          s8, s0, s0
                  or           a7, a4, s5
                  mulhsu       tp, t4, a5
                  srai         s10, tp, 31
                  mulhsu       t3, s10, a3
                  xor          t2, s6, a0
                  ori          ra, gp, 1937
                  mulhu        zero, s4, s8
                  divu         s7, a0, a1
                  slli         s2, t3, 15
                  sltu         s7, s7, s7
                  div          tp, a0, t6
                  div          s3, t6, a0
                  div          a7, t5, zero
                  nop
                  div          a3, a6, a1
                  or           a7, t2, s1
                  addi         a0, s8, 105
                  divu         t2, a3, s11
                  slti         sp, t5, 257
                  andi         s5, t5, -270
                  xori         a7, t6, -917
                  xori         s5, t4, 222
                  nop
                  sll          t3, s7, s7
                  sll          t2, sp, ra
                  remu         t6, tp, s7
                  sltiu        zero, s0, 1430
                  rem          gp, s4, t0
                  addi         s10, s8, -456
                  sra          ra, t1, s1
                  divu         t3, gp, t5
                  div          s0, s2, s4
                  add          s2, a0, gp
                  slli         s0, a1, 29
                  rem          s0, t4, gp
                  srl          s3, s5, t2
                  addi         a5, a7, -604
                  slli         s11, t1, 27
                  mul          a5, s4, s3
                  divu         s11, s0, a3
                  sra          t3, a1, s8
                  sltu         a1, s4, t1
                  divu         a7, s5, t3
                  lui          a5, 916862
                  srl          tp, a1, tp
                  andi         s10, t5, 1531
                  mul          s9, s9, s3
                  or           ra, s10, t3
                  mulhsu       s2, s4, a4
                  and          a7, ra, tp
                  sll          t3, a1, a7
                  srli         s0, s1, 15
                  xori         s7, t1, -922
                  sra          a2, s7, t6
                  mul          s7, a7, s2
                  and          tp, a6, zero
                  addi         a1, t1, 2037
                  lui          s11, 812522
                  andi         t2, t6, 474
                  sll          s11, zero, s11
                  xori         gp, a4, 467
                  xori         s2, s10, -1977
                  slt          t4, t6, s5
                  mul          t6, a7, s1
                  srli         tp, a6, 25
                  sltiu        t2, t3, -1610
                  srl          s10, a5, a2
                  slti         s7, s3, -254
                  div          t5, t4, a5
                  srl          zero, s6, s0
                  auipc        a1, 166156
                  mulhu        sp, a7, t1
                  sub          a7, t6, t4
                  remu         t6, t1, t6
                  mulhsu       t3, t2, t3
                  srl          a2, t4, gp
                  andi         ra, t2, 1400
                  slt          t3, t3, t2
                  mulhsu       a4, sp, s1
                  lui          t3, 347780
                  divu         sp, a4, s4
                  sub          a1, s2, ra
                  lui          a0, 874394
                  sra          a5, s4, s9
                  nop
                  srli         ra, gp, 22
                  rem          t3, s8, s0
                  sltiu        gp, a2, -372
                  ori          sp, a0, -728
                  sra          s9, s8, s3
                  mulh         a7, a6, s10
                  add          gp, s2, s0
                  div          a3, a7, s11
                  nop
                  div          s8, s8, t4
                  mulhsu       t0, s0, t2
                  slt          s6, t4, a0
                  lui          t1, 587516
                  mulhsu       a2, a1, s6
                  xori         a0, zero, 772
                  or           t4, s7, s5
                  div          t2, s6, s1
                  and          t1, s11, s8
                  sra          s6, gp, zero
                  auipc        a1, 69603
                  sltiu        s11, t0, 1212
                  sltiu        a7, s1, -326
                  slti         s3, a3, 1639
                  auipc        t3, 321592
                  addi         s0, s0, -1971
                  andi         a0, t0, 631
                  or           a7, a6, ra
                  and          ra, gp, t4
                  srli         ra, s7, 3
                  nop
                  add          t1, s2, zero
                  slt          s8, s6, s4
                  xori         s5, t5, -95
                  andi         s3, s5, -1358
                  sub          s5, t5, t2
                  andi         sp, t6, -178
                  remu         a7, t6, a3
                  sub          a4, s2, a0
                  addi         s3, t4, -872
                  slli         a2, a6, 1
                  slt          tp, t5, a2
                  divu         t6, s3, s0
                  lui          zero, 584970
                  slli         s5, ra, 4
                  sub          tp, ra, gp
                  xori         s7, t2, 619
                  mul          t4, s4, t3
                  xori         s7, t1, -1191
                  sll          t1, a5, s7
                  mulhsu       t5, t5, sp
                  mul          t3, a1, a0
                  lui          s0, 131169
                  div          zero, a1, a1
                  nop
                  sub          a0, gp, t0
                  mulh         t6, a4, a6
                  lui          t4, 434398
                  lui          s2, 506053
                  sra          a1, a0, a6
                  divu         tp, t5, t4
                  auipc        zero, 343739
                  srli         gp, s10, 15
                  divu         t4, s7, s10
                  slt          a1, s0, sp
                  srli         t5, s3, 9
                  sra          a0, zero, t1
                  nop
                  auipc        a0, 675223
                  divu         s7, a4, t3
                  mulhu        s6, gp, t2
                  sub          gp, s5, s5
                  slt          sp, t6, a3
                  slli         s9, t1, 9
                  addi         ra, s4, -220
                  ori          t1, a0, 1098
                  sub          gp, s0, s10
                  slli         t5, s3, 17
                  srli         a1, t2, 3
                  sltiu        zero, a5, -740
                  srl          s3, s10, a7
                  nop
                  sltu         s2, s0, a0
                  add          sp, t0, s11
                  lui          a4, 588597
                  sra          sp, s0, a3
                  slli         tp, t1, 12
                  slt          a5, s5, t5
                  slt          a5, t6, a4
                  srai         s8, s2, 3
                  or           s2, s11, a5
                  mulhsu       s2, tp, t1
                  sra          a4, ra, t4
                  div          a3, tp, t4
                  slti         s11, s7, 482
                  slli         tp, t0, 13
                  addi         a1, tp, 442
                  remu         a7, s9, a0
                  remu         s10, sp, a6
                  mulh         s0, zero, t6
                  andi         t5, s11, -959
                  xori         t6, t6, 73
                  ori          tp, tp, -184
                  nop
                  lui          a3, 483245
                  add          a2, t5, s0
                  sltiu        s10, s8, 1873
                  andi         t6, gp, -1666
                  auipc        a3, 974233
                  srl          s6, s0, zero
                  sra          s5, a4, gp
                  sltu         zero, a4, s1
                  mulhu        a5, s10, a6
                  sub          a1, a0, t3
                  divu         t5, a5, s0
                  sra          t2, a1, t1
                  and          t2, a4, s4
                  sll          s11, s8, s6
                  xor          s5, s10, s4
                  mulh         a2, s3, s8
                  lui          t0, 397159
                  mulh         s7, s8, a2
                  divu         tp, s9, a4
                  div          s5, s5, s4
                  auipc        s5, 555445
                  or           s3, sp, t2
                  or           t5, t6, a6
                  divu         a3, s6, t2
                  lui          s2, 680408
                  div          a1, t4, s10
                  mulh         s3, ra, s2
                  sra          ra, a4, s0
                  nop
                  mulh         ra, tp, a5
                  mulhu        tp, s7, gp
                  remu         ra, a1, t1
                  mulh         a4, s6, s6
                  rem          s3, t1, t1
                  rem          t4, gp, s10
                  andi         a3, a5, 281
                  sltu         a5, s10, t3
                  slli         zero, s10, 0
                  xor          a4, a7, s9
                  auipc        a3, 415325
                  mulh         t6, a0, t1
                  divu         tp, t2, s7
                  srai         s5, s3, 20
                  mul          s11, s11, s3
                  addi         t5, a6, 1642
                  mulhu        t4, a5, s2
                  addi         t3, s7, -383
                  sll          a4, a4, sp
                  rem          a5, s6, t6
                  or           s9, t0, s9
                  mul          s9, a5, t4
                  sltu         t2, a6, a5
                  mul          zero, s8, gp
                  sra          s5, t2, a7
                  sltu         gp, s11, a5
                  srl          a7, a3, a4
                  add          tp, t1, t3
                  sub          a7, s4, s3
                  add          ra, a0, s7
                  addi         s11, t0, 803
                  slti         s6, zero, -1127
                  lui          s9, 867210
                  sra          s5, tp, gp
                  xor          tp, a7, s10
                  srl          s9, s0, a7
                  remu         a5, a4, ra
                  rem          s8, gp, t2
                  and          t0, s3, s6
                  srli         t1, s0, 16
                  lui          sp, 91743
                  sltiu        t0, a1, -1715
                  add          s7, a1, s11
                  srai         sp, s6, 9
                  lui          t1, 384410
                  ori          a0, a2, -754
                  rem          s8, t3, a3
                  add          t1, tp, s2
                  sub          a5, s3, sp
                  sltiu        zero, a4, -1795
                  mulhu        t6, ra, a4
                  sub          t3, gp, t4
                  andi         s8, zero, 30
                  lui          s11, 673312
                  slt          tp, s11, a1
                  mul          s6, gp, t4
                  sra          s8, a6, s9
                  andi         s10, s2, 1795
                  div          a1, s2, s4
                  rem          a5, t2, a7
                  lui          a5, 755183
                  mulhsu       t3, t1, a7
                  andi         s9, t6, 1370
                  remu         a3, s4, t3
                  srai         a0, s2, 21
                  xori         s9, a1, 19
                  slt          tp, a7, t3
                  ori          s6, t2, 1556
                  sub          t3, s5, ra
                  srai         a4, t5, 19
                  and          tp, zero, a3
                  srli         t1, ra, 17
                  remu         t6, s2, s5
                  or           s6, a0, s7
                  xori         t1, a2, -1109
                  ori          s11, s10, 1742
                  sltiu        sp, s2, -1496
                  sra          s2, s10, s7
                  divu         s9, t2, s4
                  sub          a3, tp, t0
                  mul          t1, t4, s10
                  or           s11, s11, zero
                  andi         t1, s10, -140
                  mulh         s5, sp, s9
                  and          s9, a7, sp
                  slt          s10, s11, a5
                  add          s5, t5, s6
                  sll          s5, gp, a1
                  mulhu        t0, s0, t2
                  andi         tp, a7, 399
                  mulhu        a1, a1, a2
                  nop
                  or           s3, s5, s6
                  xori         a0, a6, 1307
                  remu         s5, s8, a2
                  divu         a5, t5, a5
                  sltiu        a3, t1, -510
                  xor          a7, s4, s2
                  rem          s2, s2, s8
                  mul          s5, t6, s9
                  mulhu        a4, a1, s3
                  sra          s2, t3, s9
                  lui          sp, 523325
                  divu         s7, s7, t6
                  mul          s8, gp, s3
                  sltu         a5, s11, t5
                  and          s7, a5, s4
                  sra          a7, s6, t2
                  sltiu        s5, a2, -1607
                  andi         s5, s1, -1031
                  lui          t3, 808643
                  mul          a7, s3, s3
                  lui          s10, 231917
                  or           tp, s1, a3
                  addi         s10, a2, 1470
                  or           t4, s6, ra
                  and          sp, s6, a5
                  mulhu        s11, a4, t0
                  xori         s6, a1, 1539
                  mulhu        a4, t3, t4
                  add          a7, s8, s5
                  or           t2, t4, a4
                  remu         zero, t5, t3
                  mul          s10, s0, t5
                  nop
                  sll          t1, s6, a6
                  addi         a4, t1, -1381
                  auipc        zero, 783171
                  mulhsu       ra, tp, t0
                  sltiu        zero, a6, -173
                  ori          a5, a0, -117
                  addi         t1, ra, 1254
                  sra          zero, ra, s9
                  slli         a5, s3, 19
                  srai         t3, s10, 1
                  mulhsu       ra, s8, a1
                  slli         a5, s9, 11
                  srai         s10, t2, 9
                  sll          tp, a5, t3
                  divu         ra, s8, s2
                  slli         s5, a5, 11
                  srai         s2, a0, 6
                  remu         s7, s5, s6
                  sll          t4, s6, ra
                  sll          ra, a4, s0
                  mulhu        t3, t0, zero
                  srli         t2, s0, 20
                  addi         s6, s7, -748
                  nop
                  andi         t0, s11, 352
                  lui          t1, 263927
                  ori          s5, t4, -778
                  slti         s9, t5, -987
                  srli         s2, zero, 17
                  divu         t0, s1, a6
                  remu         s8, t2, a1
                  andi         sp, s1, 1633
                  mulh         s9, a5, s7
                  srai         a1, s4, 18
                  and          t0, s6, s5
                  auipc        s11, 312582
                  sub          zero, t0, ra
                  xori         a1, t2, -1999
                  sub          zero, zero, tp
                  addi         a1, zero, -276
                  ori          s8, a1, 1340
                  auipc        t4, 414317
                  divu         a0, s5, tp
                  lui          a1, 2437
                  sll          a1, t5, zero
                  andi         s7, a7, -437
                  nop
                  mulh         a0, s8, a0
                  sub          s6, s10, t6
                  sra          a0, s11, a5
                  xori         sp, t1, 1687
                  auipc        s0, 449877
                  lui          s9, 73832
                  sub          a5, tp, t4
                  mulh         a0, t5, t1
                  addi         s0, a2, 626
                  div          a3, t6, gp
                  or           t0, t2, a1
                  slti         ra, gp, 1057
                  sltiu        s2, s7, 336
                  andi         a0, a2, 1763
                  andi         gp, zero, -1988
                  divu         a5, zero, a1
                  lui          t3, 552779
                  sltiu        s9, a5, 49
                  xori         a4, t4, 363
                  sra          sp, t4, gp
                  mulhsu       tp, s2, zero
                  slt          t4, a5, s7
                  lui          t3, 961974
                  sub          s0, t2, zero
                  and          s6, s7, s10
                  mul          s3, t2, a4
                  sra          s3, sp, t4
                  sltu         t0, s7, s6
                  srli         t2, a5, 21
                  auipc        t6, 4145
                  slli         ra, s4, 16
                  mulhsu       t1, sp, a4
                  sll          t4, s3, s5
                  auipc        s6, 477929
                  addi         s8, tp, -1432
                  slt          zero, t3, a2
                  rem          gp, s3, sp
                  slli         ra, t1, 31
                  sltiu        s5, t3, 276
                  or           a7, t6, s7
                  addi         s8, s5, -619
                  andi         a0, s3, -1996
                  srai         a2, t0, 18
                  add          s0, t2, a0
                  nop
                  mulhu        s0, t2, gp
                  rem          a5, a2, s8
                  sltu         tp, a0, t5
                  xori         t6, t1, 1383
                  srl          s3, a1, s9
                  slti         s9, s9, -239
                  remu         s9, a4, s6
                  add          s11, a1, t1
                  mulh         gp, sp, sp
                  divu         tp, s9, a0
                  slli         ra, t0, 18
                  slli         a7, tp, 3
                  sra          a3, a2, s6
                  srli         s8, s3, 11
                  xori         s9, t0, -1664
                  sltiu        tp, t0, 613
                  slti         t2, a4, -997
                  slli         s6, t5, 9
                  slli         s9, s6, 4
                  mulh         t5, s1, s8
                  sltiu        a3, sp, 1298
                  div          s10, a3, a7
                  mul          s11, a2, t4
                  slti         zero, s1, 827
                  remu         s6, a7, s3
                  slt          s0, gp, zero
                  andi         tp, tp, -1099
                  add          s0, s8, s11
                  sra          s6, a3, s8
                  auipc        s11, 828333
                  mulhsu       t3, t6, s9
                  mulhsu       t0, s11, a4
                  srli         s0, gp, 21
                  mulhsu       a3, s6, a3
                  sltiu        s0, ra, 1209
                  divu         a2, t0, s1
                  auipc        zero, 830452
                  remu         s5, sp, s10
                  sra          t2, s10, t3
                  rem          s6, s4, zero
                  lui          t4, 309499
                  nop
                  and          s11, a4, a0
                  and          s5, tp, s9
                  srai         s8, s7, 23
                  xori         zero, s5, 469
                  sltu         s2, s4, sp
                  nop
                  xori         s7, s1, 603
                  or           a5, a0, gp
                  rem          s3, s8, ra
                  sub          a2, a5, s10
                  sltu         t2, s6, s8
                  or           a3, a4, t6
                  srai         s11, tp, 17
                  rem          s10, a2, a4
                  xori         s6, s1, -1205
                  slli         t5, gp, 30
                  mulh         t3, s4, a4
                  auipc        t5, 267506
                  ori          a3, s3, -709
                  sra          a4, s4, t3
                  and          s9, t3, a6
                  or           a4, t1, a5
                  mulh         s8, a5, s4
                  rem          t2, t3, a7
                  slt          a4, t2, s6
                  and          ra, s4, t2
                  sltiu        s9, a2, -187
                  sll          a7, t4, s5
                  mulhsu       s9, a3, a1
                  srai         s3, t3, 8
                  nop
                  ori          a5, s4, 1154
                  addi         t6, s10, 666
                  divu         zero, s8, a7
                  lui          ra, 789305
                  div          a7, a5, tp
                  lui          a3, 110473
                  mulhsu       t2, zero, s3
                  div          s0, t2, s1
                  sub          t2, a1, a2
                  srl          a1, s7, s11
                  nop
                  divu         t3, a6, t2
                  srli         a7, a2, 4
                  remu         a1, gp, t4
                  srl          a3, s8, a0
                  sub          tp, s10, s3
                  srl          s5, s6, a4
                  sltu         gp, s3, gp
                  slli         tp, s10, 29
                  srai         s3, t1, 5
                  mulhu        s7, s6, a0
                  srai         a7, tp, 20
                  sra          tp, s8, s11
                  sltiu        s5, a3, -2030
                  lui          zero, 342038
                  sltiu        a2, t4, 142
                  srli         t4, s5, 6
                  sra          a5, s3, s0
                  divu         s0, s10, a0
                  andi         t5, s10, -977
                  lui          t6, 467355
                  slti         s8, a3, -1261
                  sltu         s5, s11, s6
                  mulhu        s5, s4, s9
                  nop
                  rem          ra, a0, a3
                  and          s2, t0, a6
                  andi         a2, a0, -434
                  mul          gp, t3, a5
                  rem          s2, gp, s0
                  mulhu        zero, s10, s5
                  sltiu        s7, s9, 1434
                  mulhu        s3, s3, t3
                  add          a3, s9, t2
                  nop
                  nop
                  rem          s6, tp, a3
                  remu         zero, a5, t5
                  xor          s2, a0, a3
                  add          s10, t3, a6
                  remu         t3, s9, zero
                  srai         s6, tp, 5
                  mulhsu       t3, s9, sp
                  sltiu        s8, s0, 1600
                  xor          a5, a6, t2
                  slt          sp, a7, a0
                  nop
                  sltu         a2, s9, s3
                  auipc        s2, 437560
                  ori          sp, a0, -167
                  divu         s2, s2, s2
                  xor          s11, s10, s5
                  auipc        t3, 75784
                  addi         sp, s1, -1009
                  srl          a1, t0, s11
                  ori          a0, s2, 1889
                  div          t5, zero, s8
                  add          s10, t1, t6
                  mul          t5, t1, a1
                  sra          a5, s8, a4
                  ori          t0, t4, -1436
                  sra          a0, s4, s4
                  sll          t1, s2, t4
                  div          ra, zero, s8
                  nop
                  auipc        a2, 14739
                  srl          s8, tp, sp
                  sra          s2, s6, t5
                  slt          gp, gp, s3
                  add          s9, s5, s7
                  andi         t6, s2, 850
                  lui          a1, 820321
                  srl          a2, s7, gp
                  div          t3, a3, t1
                  sltu         t4, a3, a5
                  lui          s3, 127896
                  sltu         s6, s3, s9
                  addi         s6, sp, -812
                  sll          t6, s4, t0
                  xor          s8, a3, zero
                  srai         t3, s8, 12
                  divu         a2, t6, a4
                  ori          tp, s5, 940
                  srli         t3, s5, 1
                  auipc        s10, 420246
                  sltiu        t5, a1, -1371
                  mulhsu       zero, a5, a4
                  and          s8, t4, s9
                  mul          s5, a0, t4
                  add          tp, a5, s6
                  ori          s6, a6, 1280
                  sra          s8, a4, s11
                  auipc        t3, 577655
                  slti         zero, t5, 406
                  slt          t6, s0, s11
                  srli         s9, a2, 3
                  srl          s2, t2, s5
                  sltu         s7, zero, t6
                  and          t3, t2, s2
                  div          s6, t4, t3
                  slti         s7, s11, 899
                  xor          t4, a4, a3
                  sub          t1, zero, s11
                  sub          t1, s0, s6
                  remu         s2, s5, a4
                  sra          a5, s3, a4
                  rem          sp, a2, t6
                  slt          t0, s6, s3
                  divu         s6, t3, s0
                  slti         s0, t4, -590
                  nop
                  sra          t3, s0, s4
                  xori         a0, a5, -1029
                  add          s11, t3, s11
                  and          s8, s9, t2
                  rem          zero, s8, zero
                  sra          t2, zero, a2
                  slti         s3, sp, -88
                  andi         gp, s1, 1283
                  xori         s0, a7, 1890
                  addi         s11, a3, -1602
                  rem          s5, s8, s0
                  slli         s2, s0, 18
                  mulhsu       t2, sp, s0
                  sll          t4, t2, a4
                  mulhu        t3, tp, s8
                  rem          tp, t2, a3
                  xor          s10, a2, s10
                  mulhsu       tp, s7, t0
                  divu         s6, sp, t5
                  sll          a7, s10, tp
                  div          a0, a3, zero
                  slti         a0, t3, 1620
                  add          t6, s6, gp
                  addi         a4, a2, -1081
                  lui          gp, 279359
                  auipc        gp, 390439
                  ori          s5, zero, 652
                  ori          s2, s10, -365
                  srl          t6, gp, s9
                  divu         s5, t5, s0
                  slt          a4, a7, gp
                  srli         t3, s3, 29
                  mulhu        a3, s8, t0
                  andi         a7, a2, 81
                  slt          a0, s10, t4
                  slt          s0, s5, t1
                  sll          t2, s8, a2
                  rem          s9, s10, a6
                  slli         a1, s11, 25
                  srai         s5, zero, 15
                  sltu         a3, gp, zero
                  remu         t5, s2, s4
                  sra          t0, s2, t3
                  srai         s3, t4, 4
                  sltu         s9, s3, t4
                  or           s7, s8, t4
                  sra          a5, zero, s4
                  xori         a3, a6, 183
                  mulhsu       a4, t1, s2
                  divu         ra, a0, t5
                  div          s0, a0, s3
                  or           s8, gp, t2
                  sltu         gp, t6, s11
                  sub          s5, t0, s8
                  andi         a2, s5, 1599
                  xori         gp, a5, -1743
                  sra          a3, t2, s2
                  sra          tp, s9, s11
                  sltiu        zero, a7, 1525
                  srl          ra, s6, s4
                  srli         s11, s6, 2
                  add          t5, t5, sp
                  slti         t2, s7, 1123
                  sltiu        a4, s6, -346
                  mul          s5, a0, s5
                  divu         s2, s9, t0
                  srai         tp, s0, 20
                  lui          a3, 227191
                  and          a1, gp, t5
                  srli         t6, a0, 31
                  or           s6, s1, t2
                  sll          a4, a1, t5
                  addi         s8, s0, 684
                  slti         s2, s4, -952
                  slli         t1, a1, 16
                  mulhsu       a2, s10, t6
                  xori         t0, t1, 1506
                  sltu         s0, s6, s9
                  sll          t2, s7, gp
                  ori          t3, s3, 246
                  sra          t5, s5, s4
                  addi         a7, a3, -1537
                  sltiu        t1, gp, -1323
                  slt          t1, t3, zero
                  srai         t0, s11, 16
                  add          t3, zero, t3
                  or           a3, s7, s11
                  srli         s9, t4, 31
                  mulhsu       zero, t1, s5
                  rem          a1, s4, t5
                  mulhsu       a5, s11, s9
                  div          a1, a2, s1
                  slti         s9, t1, -746
                  mulh         s0, a0, t3
                  add          a7, a7, ra
                  xori         s0, s10, 409
                  sltiu        t4, s4, 518
                  slt          a7, s6, s6
                  ori          ra, s9, 1065
                  sltu         s8, t6, tp
                  xori         ra, t1, 1068
                  xor          s0, a2, s7
                  rem          a4, s11, gp
                  xor          a7, a7, s10
                  sltu         s0, a1, s9
                  div          zero, sp, t2
                  srai         a0, s11, 31
                  mulh         s6, a0, ra
                  rem          t6, a3, a2
                  ori          zero, s10, -1795
                  sltiu        zero, a2, 774
                  srai         s0, s0, 12
                  nop
                  slti         sp, t3, 645
                  auipc        s2, 774203
                  xori         s3, sp, -680
                  and          tp, t1, t1
                  xor          tp, gp, t3
                  sltiu        t0, t1, -1480
                  nop
                  lui          t4, 535217
                  slti         s0, s3, -490
                  srai         zero, a3, 5
                  lui          zero, 1040609
                  srai         a7, s2, 30
                  and          s6, a2, a2
                  lui          t0, 741172
                  slt          t4, a4, a4
                  add          a5, t2, a6
                  lui          t2, 468613
                  add          sp, a7, s6
                  andi         s3, s0, -1673
                  sll          s11, s11, t1
                  and          s11, a0, a3
                  nop
                  divu         s5, s5, a2
                  sub          tp, s2, a6
                  sra          s0, s11, a4
                  auipc        a0, 795419
                  xor          s6, t2, t4
                  srli         zero, t0, 2
                  add          a5, a0, s10
                  addi         t6, s8, 1072
                  srl          a1, t6, t1
                  or           s5, a5, a3
                  addi         a1, s1, -1923
                  mulh         s9, s9, s9
                  nop
                  xor          ra, a0, s5
                  nop
                  srl          s6, s2, t1
                  srli         t2, t1, 15
                  add          s3, s1, s5
                  auipc        t3, 369275
                  mul          a0, a4, s4
                  srai         s3, ra, 18
                  sra          ra, zero, s7
                  andi         a2, gp, 161
                  xori         s0, t4, -935
                  add          t1, gp, a7
                  mul          t0, t4, a4
                  addi         s9, s6, -226
                  slti         a1, a6, -1836
                  lui          s7, 436993
                  lui          s2, 412865
                  srai         t5, s6, 9
                  slti         s7, t6, -32
                  add          s2, s9, s3
                  mulhsu       a2, sp, t2
                  nop
                  mulhsu       t0, gp, t4
                  srai         s0, s5, 12
                  addi         t2, t0, -1866
                  nop
                  auipc        s7, 10163
                  srl          tp, s9, s5
                  xori         tp, a1, 1189
                  and          t0, t0, s1
                  srai         s0, s7, 18
                  div          t5, a4, s10
                  srai         s0, s11, 22
                  remu         t2, t3, t4
                  nop
                  slti         t4, t0, -1701
                  rem          s9, t1, s10
                  srl          s8, gp, zero
                  srl          a0, s9, ra
                  or           a1, t1, s3
                  andi         ra, a2, 46
                  xori         s3, s3, 1627
                  srli         tp, s11, 7
                  auipc        s7, 19603
                  addi         zero, s5, 1906
                  divu         tp, s1, t1
                  slti         a1, a2, -513
                  auipc        sp, 612810
                  ori          a2, t5, -1126
                  sra          s6, s3, s9
                  rem          s6, a6, t5
                  addi         ra, s0, 992
                  mul          s8, tp, t5
                  or           t0, t6, a0
                  ori          t5, tp, 1786
                  mulhu        a3, s7, a2
                  ori          s8, t1, 1252
                  and          a0, sp, a5
                  srli         a3, gp, 30
                  add          t0, s2, sp
                  mulh         s6, s7, s2
                  rem          s9, s3, t2
                  srai         tp, t2, 4
                  slti         s3, s2, -1426
                  mulhsu       s2, ra, gp
                  sltiu        t6, a3, 451
                  auipc        s8, 815574
                  sll          s10, a1, t0
                  xor          ra, t3, s3
                  slt          s0, s1, s10
                  sltiu        s8, s8, 272
                  remu         s8, zero, s6
                  mulhu        a0, s0, a6
                  mulh         tp, gp, s11
                  slt          t6, s9, s8
                  sra          s2, t6, s3
                  add          a7, t4, s9
                  srl          a0, gp, a0
                  add          s0, s11, zero
                  and          zero, t5, ra
                  slt          s8, t6, t6
                  divu         t5, a5, a7
                  xor          a3, s5, s5
                  sra          s3, s6, a0
                  sltu         t2, t0, s2
                  sll          t0, t2, a3
                  xor          t1, tp, a4
                  sltu         zero, tp, s6
                  sltiu        s5, s5, -1230
                  slt          t4, t0, s1
                  sll          s6, s8, a7
                  andi         s5, s10, 365
                  srli         t5, a6, 17
                  srai         s2, a4, 24
                  slti         s0, s1, 639
                  addi         zero, s11, 441
                  sub          s10, s1, a5
                  lui          gp, 914024
                  srai         s11, s5, 17
                  nop
                  addi         tp, t5, -127
                  srl          s8, t3, a0
                  sub          s8, t2, gp
                  rem          t6, t1, a3
                  nop
                  sra          ra, t2, s1
                  lui          s6, 452587
                  sub          t4, t6, t5
                  sub          s7, a4, zero
                  mulhsu       t2, a0, a3
                  divu         gp, s11, s0
                  auipc        s9, 164282
                  or           a4, s3, s4
                  mulhu        t4, t2, s5
                  sub          a0, a7, s9
                  srai         t5, a6, 18
                  sltiu        sp, s9, -242
                  srli         a4, s2, 19
                  divu         t5, t3, a7
                  srai         s11, t5, 5
                  mulhu        t5, t1, a6
                  srl          tp, t2, a6
                  srl          t4, ra, a2
                  mulhsu       t3, t0, s2
                  xori         t0, gp, -62
                  addi         t0, t4, 1386
                  mulh         zero, t3, s2
                  andi         s3, s1, 193
                  xori         s2, a4, 1276
                  mulhu        a3, a3, s6
                  sltiu        s0, s7, -2021
                  xor          s7, t3, s1
                  divu         s3, a4, t2
                  auipc        ra, 753291
                  srai         s11, a2, 5
                  sub          t6, ra, zero
                  lui          a2, 1020700
                  addi         zero, a0, 692
                  slti         s2, s9, 432
                  srai         a3, s11, 2
                  divu         s3, sp, sp
                  xori         s11, s10, 862
                  rem          s5, s5, a1
                  xor          a7, zero, t3
                  and          s2, t2, a3
                  srli         s6, s4, 31
                  slli         t1, a3, 11
                  mulhu        s7, gp, s2
                  ori          s5, gp, 390
                  mul          s7, s9, t4
                  sltu         t1, sp, t0
                  sltu         t6, s6, s8
                  lui          s6, 548023
                  addi         sp, a2, 669
                  sll          s5, zero, a3
                  mulhsu       sp, s4, t0
                  slt          s8, gp, t6
                  and          t5, a4, s6
                  srl          a2, s8, t0
                  mulhsu       t0, s7, s1
                  srai         t4, a4, 26
                  mulh         a2, t3, s8
                  divu         zero, t0, a1
                  xor          a5, s9, s0
                  slti         a0, a2, -1600
                  or           a2, s10, s2
                  xori         s3, t4, -316
                  srl          t2, zero, t5
                  srl          s0, a4, a6
                  mulh         s7, a0, a5
                  addi         ra, a2, 1822
                  mulhsu       t4, a5, t3
                  mulhsu       t2, s6, s4
                  sub          gp, t4, s3
                  or           t6, s5, a6
                  srli         t3, s4, 29
                  lui          a7, 451960
                  slli         t3, t3, 19
                  sra          s0, a1, a6
                  mulhu        s11, s9, t5
                  slti         s0, a4, 35
                  slli         s8, t3, 2
                  xor          sp, a7, s6
                  remu         t1, t6, a7
                  slt          s7, s3, s2
                  mulh         sp, ra, t3
                  sra          gp, t4, a4
                  divu         t3, a7, s2
                  or           a3, s5, a0
                  sltiu        s9, t5, 423
                  sltiu        zero, zero, 1647
                  sltiu        a7, t6, 1384
                  ori          t6, s8, -1847
                  div          s11, s1, s7
                  rem          t1, a1, sp
                  add          a1, a3, a2
                  addi         t3, t3, -1531
                  mul          gp, a2, gp
                  andi         s0, s4, 311
                  slli         s6, s4, 21
                  addi         tp, s9, -765
                  xori         s0, a5, 366
                  slt          s5, t0, s7
                  xori         a7, s7, -21
                  slt          a7, s6, tp
                  ori          s3, t3, -1659
                  srai         s5, t5, 30
                  andi         a2, a0, 1263
                  xori         s0, a3, 1872
                  slli         a2, tp, 27
                  slli         s8, tp, 8
                  mul          s0, s5, s9
                  rem          ra, s2, s1
                  xor          s5, a4, a6
                  and          t0, a3, a1
                  divu         t6, tp, a4
                  xori         s2, ra, 1729
                  srli         t4, s3, 16
                  andi         a4, s5, 108
                  divu         a7, s11, t2
                  div          gp, s4, t4
                  lui          s10, 501356
                  sll          s11, s2, s0
                  divu         zero, ra, a0
                  mul          ra, t4, a4
                  srai         ra, s8, 19
                  add          s0, a0, s9
                  ori          a3, t4, 1497
                  xor          ra, a6, t6
                  xor          a7, t2, a1
                  slti         sp, a6, -1096
                  divu         gp, a6, s6
                  sltiu        t3, s0, 93
                  add          a4, a0, s9
                  remu         s3, tp, a0
                  xori         s7, a4, -477
                  auipc        a4, 1040267
                  mulhsu       s11, s7, t6
                  xor          a4, a5, t3
                  xor          s3, a2, a3
                  divu         sp, t5, t2
                  div          t6, t3, zero
                  nop
                  sltu         t1, s6, t6
                  srl          a0, s1, ra
                  divu         ra, a3, s8
                  slli         t2, s3, 18
                  sll          s10, a3, t1
                  mul          a7, t0, a3
                  xor          s9, s11, a2
                  mul          s5, ra, a3
                  auipc        s6, 280137
                  slti         a3, t4, 351
                  sltu         t0, s3, s5
                  remu         s5, t1, zero
                  sra          s8, s5, s2
                  divu         s7, s8, s10
                  srl          a3, a7, s7
                  remu         a5, sp, s7
                  xor          s10, s10, zero
                  srl          t2, a2, t1
                  mulhu        ra, s1, s2
                  divu         t2, ra, t1
                  lui          s2, 220083
                  mulh         zero, s8, sp
                  slti         zero, a3, 1038
                  nop
                  mul          s7, t4, a5
                  slt          zero, zero, s6
                  slt          s8, s4, a2
                  or           a2, t5, t4
                  srl          a1, s3, s0
                  slti         t2, s6, -382
                  or           tp, s4, s9
                  slt          zero, a5, a7
                  mulhu        s3, a5, s11
                  mul          s2, tp, s10
                  mulh         s5, s7, s2
                  slli         t1, a0, 0
                  srai         a5, zero, 28
                  mulh         s7, s10, t3
                  rem          s10, a1, s1
                  srai         a1, a1, 28
                  lui          s2, 637190
                  or           s8, t0, a3
                  slli         s2, s5, 8
                  and          a4, s6, s2
                  remu         s11, tp, s11
                  addi         tp, s7, 1817
                  divu         a1, a4, sp
                  nop
                  remu         zero, t2, t1
                  srl          a1, a5, s5
                  mul          tp, a4, gp
                  mulh         s10, a6, gp
                  slti         s2, s1, 1068
                  sub          s3, sp, ra
                  add          t5, a7, s0
                  sub          s6, s2, sp
                  xori         s8, s2, 1360
                  srli         gp, t2, 28
                  slti         s3, a7, -930
                  mulhsu       t6, s10, t4
                  srl          s5, s0, s9
                  lui          zero, 216114
                  slti         t4, a2, 1027
                  srli         a7, s8, 0
                  rem          s11, s7, a6
                  sub          t6, s10, a1
                  sub          t3, s8, s11
                  xori         s11, t1, 503
                  srai         s5, t6, 18
                  sltu         a0, s8, s8
                  sltiu        a0, a1, 1237
                  slti         a0, a1, 440
                  sltu         s10, s11, s5
                  ori          a1, s1, 1293
                  xori         a5, s0, 511
                  div          a5, t2, a6
                  slli         s11, s9, 27
                  sll          gp, s8, t2
                  srl          s9, s10, t2
                  sltu         gp, t1, s0
                  slt          a7, t0, s11
                  auipc        s9, 35352
                  add          a0, s0, s11
                  slt          a5, s4, a1
                  add          s0, s1, s9
                  auipc        s0, 407720
                  xor          s10, a6, t1
                  sll          a5, t5, s4
                  add          s5, s10, t2
                  or           a3, s6, a2
                  xori         a2, sp, 1249
                  remu         t4, a1, a0
                  sra          a3, t0, s2
                  andi         t3, a2, 64
                  mulhu        gp, s11, s2
                  or           a5, s7, s9
                  sub          a1, a3, s0
                  divu         t2, t5, t2
                  sub          s10, a3, ra
                  ori          a0, sp, -904
                  mulh         s3, s10, t2
                  mulhsu       s0, a7, s0
                  sra          s7, t2, s1
                  sll          t1, sp, s3
                  sll          a3, a1, a2
                  nop
                  or           s10, a6, t1
                  srai         a4, s1, 19
                  mulhu        s11, ra, a3
                  sub          s11, t5, s3
                  auipc        s10, 684088
                  xori         a4, s1, -1153
                  xori         a2, a1, 1880
                  slti         s2, s9, -2015
                  slt          t2, t0, s8
                  divu         s6, s11, tp
                  xor          a2, a4, s5
                  or           s2, s9, s8
                  xor          s8, zero, tp
                  add          t3, s0, a0
                  slli         s3, s7, 31
                  sltu         tp, a1, ra
                  auipc        ra, 7324
                  rem          s10, t1, s6
                  xor          s10, t3, s6
                  auipc        s6, 214643
                  sub          tp, t1, a4
                  slli         t0, s11, 1
                  lui          a7, 684541
                  xor          a3, s4, t1
                  rem          gp, s3, a7
                  slt          s8, s3, zero
                  slli         s5, t3, 25
                  mulh         t0, t4, t6
                  sub          t6, s8, s10
                  sub          zero, s11, a3
                  sltu         sp, s5, s7
                  slti         s2, a2, 54
                  sltiu        a4, gp, 1654
                  auipc        s8, 35723
                  remu         s11, t0, s4
                  and          t3, gp, s8
                  srl          s7, s6, a6
                  nop
                  sub          s7, s9, t5
                  add          s3, t2, t6
                  add          s10, a2, s6
                  sltiu        a1, s8, -1334
                  sub          s11, sp, s4
                  sltiu        s7, t1, 869
                  sll          a0, a3, s7
                  sltiu        t2, a4, -430
                  sub          t5, s1, a7
                  div          s3, s11, s8
                  srai         a2, s2, 10
                  sra          s6, s8, t1
                  andi         a7, ra, -173
                  sra          t4, s7, s11
                  and          t6, a4, t6
                  auipc        a4, 469405
                  sll          a3, s8, a0
                  sub          a3, s10, t5
                  auipc        tp, 806047
                  srli         a3, s4, 27
                  mulhsu       a7, a5, s0
                  mulhsu       a7, t1, s8
                  div          t3, a2, s8
                  mulh         s3, t2, s0
                  sltiu        s5, a1, 1583
                  ori          s6, a1, -914
                  sltiu        a7, s4, 1903
                  nop
                  slti         s5, t1, 508
                  srai         s7, s3, 26
                  sltu         t1, s7, a1
                  or           s9, a5, s2
                  or           a1, s4, s3
                  xori         s10, s5, -947
                  auipc        a4, 956789
                  add          s8, s6, t6
                  ori          t4, t2, -1566
                  mulh         t3, t2, s7
                  and          a1, a3, gp
                  srai         t3, t3, 21
                  sltiu        s6, t5, 1168
                  sltiu        t1, s4, -686
                  srl          t3, gp, a4
                  rem          t4, zero, t5
                  sltu         s9, a2, sp
                  div          s11, a1, s2
                  sra          s9, ra, tp
                  or           a2, t4, s6
                  nop
                  div          s7, s3, zero
                  mulhsu       t5, tp, t6
                  xor          a1, a1, s4
                  srli         s5, a1, 16
                  nop
                  sub          s8, t6, s1
                  nop
                  sra          a5, ra, a0
                  xori         a1, t1, -1847
                  nop
                  sra          s6, s3, ra
                  srli         t3, s6, 20
                  srai         s6, t5, 16
                  divu         s5, s3, s2
                  sub          zero, a7, a0
                  add          a0, a3, a3
                  sltiu        s10, a4, 713
                  or           t5, a2, tp
                  sub          zero, s2, s9
                  lui          s3, 525991
                  mulhsu       s2, a7, t1
                  sub          s7, s0, t4
                  lui          t6, 475909
                  srl          tp, a2, s0
                  slti         t6, t6, 340
                  sltu         t0, s10, s8
                  ori          s2, t6, 727
                  div          s0, t4, t2
                  sltu         a5, s7, s10
                  nop
                  ori          s5, s9, 1666
                  xor          s9, t3, s10
                  rem          t3, s9, tp
                  divu         s8, t6, s2
                  xor          s9, a7, a7
                  ori          s11, t5, 1863
                  slt          a7, a2, a7
                  mulh         t6, gp, sp
                  mulhsu       t2, s11, s11
                  sltiu        t0, t4, -1481
                  sltu         a5, s11, s3
                  nop
                  slt          a3, a7, s5
                  srai         s5, s3, 3
                  divu         a3, a5, t3
                  divu         sp, s5, t4
                  sra          gp, s11, a2
                  rem          t1, gp, s0
                  slti         t3, t5, 1456
                  sltu         ra, a2, tp
                  nop
                  sltiu        gp, gp, 179
                  sra          s8, t5, t5
                  addi         s3, t5, 479
                  slli         s8, t1, 4
                  mul          s5, t0, s8
                  mulhu        a0, s0, s5
                  andi         t3, gp, -1978
                  xori         s6, t6, -436
                  andi         a3, s11, -1394
                  xori         s9, s5, -2039
                  addi         t2, s10, 418
                  xor          a3, t1, a3
                  mulhsu       a5, s11, a6
                  mulhu        a7, tp, tp
                  or           zero, t5, a1
                  or           s0, t2, t4
                  srai         s7, a1, 24
                  srl          t6, a7, a4
                  slt          s0, s8, s6
                  addi         sp, t2, -606
                  auipc        ra, 750329
                  sra          t5, s4, s7
                  div          s0, t6, tp
                  mulh         a0, s0, s3
                  srli         a1, t1, 6
                  and          sp, t5, s10
                  mulhsu       s8, a2, s11
                  srl          s2, sp, zero
                  and          zero, t3, t6
                  addi         t4, t0, 223
                  slti         t2, a3, -234
                  slti         s6, t2, 29
                  mulhsu       a1, s6, t0
                  andi         a0, t5, 1128
                  remu         s11, s9, a1
                  addi         gp, a0, 537
                  srli         s9, s9, 23
                  add          s5, s8, gp
                  srai         t5, a6, 18
                  add          s3, t0, t6
                  slli         s2, s2, 28
                  divu         s9, s3, t2
                  mulh         t2, gp, a0
                  mulh         t4, t3, t1
                  sll          t4, zero, ra
                  sra          s11, s9, a4
                  divu         s6, s10, s6
                  mulhsu       t1, a5, s6
                  mul          s7, t3, t4
                  slli         a4, t0, 23
                  lui          t4, 635104
                  mulh         a7, a4, a3
                  lui          a4, 1044754
                  srl          s2, s6, a7
                  srli         t0, gp, 4
                  slti         s0, t1, -1594
                  lui          s5, 925147
                  xor          a2, s2, t6
                  mulhsu       s5, s5, sp
                  sltiu        a3, gp, -63
                  divu         gp, t0, s7
                  xori         ra, t1, -27
                  div          t1, a0, a3
                  addi         ra, s10, -1897
                  add          t6, s1, t0
                  divu         ra, t4, tp
                  ori          tp, t6, 1513
                  lui          ra, 813479
                  auipc        ra, 669805
                  sll          zero, a1, s2
                  srl          s2, sp, s10
                  or           t3, gp, ra
                  sltiu        t3, t0, 411
                  srli         tp, s5, 14
                  add          t2, s0, t1
                  slt          s0, zero, a2
                  remu         s10, s10, zero
                  addi         s6, a1, -1860
                  lui          s7, 950515
                  mulhu        ra, s5, a3
                  ori          t5, sp, -321
                  xor          a2, a0, s7
                  sltiu        s5, s7, -1266
                  slli         s2, s9, 2
                  xori         a1, t5, 1987
                  sra          gp, t5, s3
                  divu         t4, s9, a4
                  slt          a2, a7, s4
                  srli         t6, s1, 7
                  sltiu        t3, s5, -891
                  ori          s8, a1, 504
                  xor          a7, t3, s8
                  xor          zero, a1, a1
                  mulhsu       t0, tp, a5
                  auipc        a0, 435868
                  sltiu        a2, t6, -332
                  mulh         t3, tp, s6
                  srl          a1, tp, tp
                  slli         t3, t3, 17
                  srai         s7, s6, 3
                  sra          t1, a5, ra
                  sll          zero, s6, t1
                  ori          s10, s5, 139
                  slti         t4, s7, 2015
                  add          t4, s3, a4
                  lui          tp, 834964
                  srai         sp, s10, 24
                  add          s9, s6, a3
                  div          t2, t1, a3
                  mulh         gp, t1, s9
                  lui          zero, 621267
                  mulhsu       a5, a5, t1
                  rem          ra, a2, s9
                  xori         s6, s3, 504
                  slli         s0, s4, 7
                  sra          tp, a0, a7
                  divu         sp, t0, t6
                  and          t1, tp, s6
                  mulh         gp, s10, s11
                  slti         a0, s0, -1776
                  sra          a5, a2, s0
                  nop
                  sltu         t1, t5, a5
                  slti         t5, ra, 763
                  and          a3, a0, a5
                  sltu         a7, ra, tp
                  sll          a4, t2, sp
                  lui          s3, 655865
                  remu         t5, s11, s7
                  srai         s2, a1, 28
                  mul          s2, t2, a7
                  mulhu        tp, a5, a6
                  slt          sp, a5, s7
                  and          sp, t3, a1
                  srli         zero, a0, 3
                  ori          s9, t4, 853
                  srai         a4, t5, 18
                  andi         s5, t0, -907
                  ori          s3, sp, -874
                  sra          t4, s2, a2
                  ori          a5, s8, -1946
                  sll          s2, a1, t0
                  slli         s9, a6, 14
                  slli         zero, t0, 6
                  mul          s2, t4, t3
                  sll          a2, t1, s0
                  andi         t0, a6, -1194
                  mul          a2, s11, s7
                  remu         t5, s3, t6
                  lui          s11, 248033
                  mulh         t0, s4, a2
                  sub          t6, a0, a0
                  sub          tp, s7, a3
                  slti         a3, a3, -1199
                  slt          s0, t0, s8
                  slli         a2, s10, 6
                  divu         s8, ra, a2
                  addi         a1, s8, 1989
                  mulhsu       s11, a6, t0
                  mulhu        a7, a7, a5
                  auipc        a5, 196654
                  slli         s10, t6, 0
                  sll          s10, s8, gp
                  add          ra, s4, a1
                  mulhsu       t4, a5, s2
                  auipc        s3, 788002
                  sltu         s8, a2, s4
                  sltu         t3, s7, tp
                  nop
                  sltiu        s5, sp, 341
                  srli         sp, a7, 10
                  srli         s0, a5, 13
                  sub          a0, t0, t4
                  remu         a5, a5, t1
                  sra          a4, a5, sp
                  andi         s10, gp, 1932
                  srai         s11, s3, 0
                  rem          zero, s6, s6
                  ori          t6, s2, -977
                  mul          a7, tp, t1
                  rem          t4, a0, s4
                  divu         tp, a2, t2
                  sltiu        t3, gp, -1478
                  div          a0, t6, s11
                  div          s10, s0, sp
                  xor          a1, s4, s0
                  slli         a3, s8, 16
                  andi         a4, a7, 971
                  add          s2, a0, t1
                  mul          s10, a3, s7
                  divu         s11, s10, s10
                  sra          ra, t6, zero
                  nop
                  xor          s10, a0, s5
                  mulhu        a2, s6, a6
                  div          gp, a2, s0
                  andi         s9, s2, 516
                  divu         a7, s11, t0
                  slt          t5, s2, a7
                  or           a7, s4, s1
                  mulhsu       gp, a3, a3
                  rem          tp, s7, s4
                  xori         t6, a4, 1635
                  srli         a5, a6, 7
                  auipc        t2, 681583
                  sra          a5, s3, s4
                  add          a0, s5, sp
                  addi         t6, a0, -290
                  addi         s3, t1, 542
                  andi         a3, s10, 1500
                  andi         t4, a1, 100
                  srli         t3, a7, 21
                  srai         s11, a0, 26
                  remu         t5, tp, t2
                  xor          t2, t0, s0
                  srli         s2, s8, 0
                  sltiu        s10, s2, 412
                  slli         t1, s1, 22
                  mulhsu       gp, a5, t0
                  add          t1, a1, s2
                  rem          zero, t4, s2
                  lui          t4, 281341
                  and          a0, s6, a7
                  div          s0, a2, zero
                  ori          a5, s1, -2002
                  add          s6, s9, t1
                  mul          a5, t0, s7
                  mulhsu       t6, t2, t3
                  div          gp, a0, a6
                  mulhsu       a2, t3, ra
                  or           a0, s4, s1
                  slti         tp, s5, 1719
                  slti         a3, s9, 1879
                  nop
                  slt          s0, s9, t6
                  srai         a0, s5, 22
                  mulhsu       t1, s3, s2
                  andi         zero, t0, -1463
                  slli         gp, ra, 22
                  sra          a2, a3, a0
                  sub          a4, s11, t6
                  addi         zero, a4, -840
                  sltu         tp, a6, t3
                  mulhsu       a7, s11, a4
                  remu         s0, s6, s10
                  mulhsu       s2, t2, s7
                  mulhu        a1, tp, t3
                  srli         s7, sp, 30
                  andi         t3, s5, -985
                  srl          t2, s7, s0
                  sub          t0, a2, tp
                  or           zero, s1, ra
                  remu         t1, s5, sp
                  nop
                  rem          s6, t0, gp
                  sltiu        sp, s2, -1605
                  ori          s0, s11, 1217
                  remu         t6, s4, a2
                  and          s9, a6, t6
                  remu         t1, a1, zero
                  xori         sp, s7, -1489
                  slt          s11, gp, a7
                  srai         s9, t0, 7
                  add          s10, t1, t0
                  lui          a2, 558515
                  addi         gp, a7, 1224
                  srai         s8, gp, 28
                  or           a7, a4, a4
                  remu         s11, a5, t6
                  addi         t4, a5, -19
                  slt          ra, s1, s4
                  sltu         t0, tp, gp
                  auipc        a2, 902890
                  slli         s0, s2, 26
                  slti         a1, t4, -484
                  srl          t6, a5, a4
                  ori          s9, sp, -306
                  mulhsu       s9, a7, s8
                  srai         s10, t1, 18
                  sra          tp, tp, a5
                  mulhu        s3, a2, s1
                  sub          s11, gp, s7
                  mulh         a5, s1, sp
                  sltu         s5, s3, s6
                  slti         ra, s4, 1200
                  div          t4, a3, s1
                  nop
                  remu         a4, t4, s1
                  mul          t5, s7, s9
                  and          s6, t1, a0
                  sll          a5, t3, tp
                  xor          a7, s3, t3
                  xor          s7, s4, s11
                  add          s5, a2, s1
                  xor          ra, s11, tp
                  andi         a5, ra, -702
                  addi         s10, s2, 433
                  srai         s3, s2, 9
                  srli         ra, s0, 3
                  rem          s11, gp, t1
                  xori         a5, a3, 985
                  mulhu        s8, s9, t4
                  slti         s6, gp, -1497
                  auipc        a0, 644421
                  xori         gp, s5, 1571
                  slti         s2, tp, -1948
                  sra          s8, s11, s2
                  rem          a2, a4, t6
                  ori          a0, gp, -632
                  mulhsu       a0, zero, a0
                  slli         t4, sp, 17
                  mulhu        zero, t5, t0
                  and          s8, zero, a5
                  mul          zero, ra, a7
                  mul          s7, t0, t3
                  add          gp, t6, tp
                  addi         a4, s7, 635
                  srai         a4, s5, 12
                  rem          a4, a2, t3
                  slt          s7, a2, s6
                  rem          ra, s3, s5
                  lui          t0, 230482
                  slt          a3, a7, s3
                  slti         t1, a3, -1887
                  mulhsu       s5, s11, a4
                  add          t3, t5, ra
                  mulhsu       s8, s7, t4
                  lui          zero, 122489
                  srai         s7, ra, 0
                  srai         sp, s9, 16
                  rem          a4, s1, s1
                  rem          s11, s4, s9
                  sltu         s3, zero, t1
                  slli         s0, s4, 12
                  mulhu        gp, t5, t2
                  mulhu        a0, a7, a4
                  slt          t5, a5, t1
                  sltiu        s9, t2, -29
                  slt          t1, gp, t5
                  andi         t2, t1, 1770
                  sltu         s0, a4, a1
                  divu         zero, s1, a1
                  mulhsu       s0, s5, t5
                  rem          s3, gp, t4
                  rem          a2, s1, t5
                  ori          s2, s8, 1436
                  ori          t3, a3, -346
                  slli         zero, tp, 11
                  sra          t4, s4, s5
                  add          s6, s8, a0
                  and          s6, a1, a0
                  srl          t3, s4, a4
                  xori         sp, sp, 856
                  sll          t6, s9, t0
                  lui          s3, 1010209
                  sra          a3, s4, a5
                  addi         a1, a4, -792
                  sltu         tp, s7, t2
                  add          a1, t5, t1
                  sub          t1, t6, t0
                  xor          a0, a0, a3
                  auipc        sp, 775787
                  nop
                  rem          t2, s0, zero
                  nop
                  sub          a2, a2, s7
                  andi         t3, s9, -742
                  add          ra, s5, a6
                  sll          a1, s4, t3
                  sub          ra, s3, t2
                  mulhu        s2, a4, t2
                  xori         s6, t2, 1578
                  xori         s9, t2, 998
                  add          t6, a0, s4
                  srli         a4, zero, 17
                  rem          t5, s2, t1
                  andi         t3, s0, 347
                  auipc        a7, 227840
                  mulhu        a1, a7, s9
                  srli         a5, s10, 30
                  nop
                  nop
                  ori          t4, a7, -1776
                  mulhsu       s7, s9, t2
                  xor          a4, a4, t4
                  slt          zero, s7, s6
                  srl          s11, a0, t5
                  srl          s8, t1, gp
                  xori         t4, t2, -1143
                  xor          ra, ra, t4
                  sltiu        t4, s9, 1867
                  sra          ra, gp, a4
                  remu         s11, tp, s2
                  sll          ra, s4, t5
                  ori          s7, zero, 5
                  lui          t6, 818859
                  srl          zero, a6, s2
                  andi         s7, a3, -1558
                  nop
                  sll          zero, s8, t5
                  xor          gp, s4, t6
                  sub          s6, t3, t1
                  mulhsu       gp, a5, t6
                  xori         s11, a4, -678
                  srli         a3, sp, 4
                  mulhsu       t6, t0, gp
                  slt          a7, s6, s5
                  srli         s2, s10, 29
                  mulh         ra, ra, s2
                  rem          gp, a1, s11
                  slti         zero, a7, -44
                  sll          t3, a3, zero
                  srli         t3, a6, 12
                  addi         s5, a1, 1579
                  or           sp, s0, t1
                  lui          s3, 309662
                  remu         a5, s8, s11
                  sub          t6, a0, zero
                  sub          t4, a1, t5
                  mulh         s7, s9, a3
                  sltu         ra, a2, s11
                  mulhsu       t3, a0, a4
                  mulhu        t5, a4, s6
                  add          ra, s9, tp
                  lui          s9, 770684
                  slti         s2, s0, 504
                  xor          t5, t0, sp
                  ori          s9, a0, 1690
                  slti         s0, t0, 1938
                  mulhsu       a3, s9, s2
                  sub          a3, gp, t4
                  nop
                  nop
                  nop
                  xor          t0, s0, ra
                  sub          t6, a5, gp
                  sll          a5, s6, s7
                  sub          t2, t4, s9
                  slti         s8, t1, -995
                  slt          s7, t2, a0
                  srli         s5, s3, 9
                  slli         tp, a6, 24
                  rem          zero, s3, s8
                  xori         s11, t3, 1689
                  and          t4, s8, s2
                  sltiu        t6, s8, 430
                  and          t1, t0, s4
                  mulhu        s3, sp, tp
                  ori          s7, t1, -726
                  slt          zero, s5, s0
                  divu         s11, s1, s3
                  slli         t3, s5, 8
                  mulhu        a0, s4, a3
                  auipc        t0, 399303
                  and          t3, a5, t0
                  ori          s0, a6, 303
                  sra          s2, s8, zero
                  addi         s0, t3, -1548
                  div          t4, t2, tp
                  sra          s11, a5, s7
                  xori         s9, tp, 2036
                  div          a2, t5, a7
                  divu         t1, a6, t6
                  remu         t6, t1, t6
                  sltiu        s8, s7, -1551
                  slti         sp, a6, 1521
                  ori          sp, tp, 1530
                  mulh         sp, t2, zero
                  slti         a0, s2, 1384
                  mulhsu       s7, sp, s11
                  srl          a7, ra, s5
                  and          s3, a4, a5
                  srli         a5, s10, 2
                  sub          t6, gp, a3
                  add          s8, s9, zero
                  and          a2, a1, t6
                  xor          zero, t6, tp
                  sltu         t3, gp, s11
                  div          s5, t0, s1
                  remu         ra, a0, t3
                  srai         s2, a1, 20
                  divu         zero, a2, s0
                  sltu         t5, a6, t1
                  slli         s8, ra, 24
                  mulhsu       s9, s11, t6
                  divu         a1, s4, s10
                  lui          s10, 607608
                  slt          a7, a3, a3
                  nop
                  ori          s7, t3, -155
                  andi         a2, s8, -902
                  mul          a5, t0, gp
                  srai         t4, s8, 28
                  slti         s3, s6, 1170
                  srl          s2, sp, a2
                  add          s6, s1, s9
                  srai         s2, a3, 31
                  mulhsu       a0, t3, s1
                  ori          s6, a1, 459
                  srli         t6, s11, 13
                  add          s11, s2, ra
                  or           t0, s11, sp
                  divu         s7, s4, s7
                  andi         s9, gp, 1197
                  srl          s6, a3, s0
                  sltu         t2, t5, s2
                  mul          t0, a5, t6
                  divu         a5, t1, s1
                  sub          s7, a2, t0
                  sll          a1, tp, t0
                  xori         s8, tp, 1596
                  or           s2, s7, gp
                  divu         s11, s8, a4
                  srl          a3, tp, a2
                  slli         t1, a6, 2
                  or           t3, a0, s3
                  slli         t3, a2, 17
                  sub          s7, s6, s10
                  mulhu        a2, s2, t6
                  sltu         t5, s10, s9
                  xor          t3, t2, t6
                  srl          s8, s6, s6
                  slli         t0, sp, 12
                  slti         gp, s0, -607
                  slli         s7, sp, 13
                  auipc        a2, 230293
                  srli         t3, t2, 6
                  or           s5, s0, a0
                  lui          sp, 324598
                  or           a3, t1, t6
                  remu         zero, s3, a0
                  sub          a2, s10, a2
                  sra          t3, t2, s9
                  remu         t4, zero, s11
                  divu         t3, ra, t6
                  srl          s9, t1, zero
                  srl          gp, s9, tp
                  sltu         s9, s11, t3
                  sll          t3, s9, s2
                  mulh         gp, gp, a4
                  mul          a2, t2, a4
                  ori          a1, zero, -90
                  srai         s5, a0, 10
                  srl          s8, t1, s3
                  rem          a3, s9, s10
                  rem          s8, a2, a6
                  nop
                  sll          t5, a1, a0
                  sra          s9, s4, t1
                  xor          zero, a4, ra
                  sll          s8, gp, a5
                  sub          t2, s6, s4
                  rem          sp, t5, s0
                  lui          s10, 596642
                  remu         a1, gp, a3
                  and          s9, a1, s11
                  xor          s0, t0, t3
                  auipc        s11, 235689
                  nop
                  divu         t3, t4, a5
                  mul          a1, a6, s8
                  xor          s7, s3, sp
                  remu         s11, s11, t6
                  sltiu        t3, t4, 1207
                  sub          ra, gp, t6
                  remu         a1, t3, t4
                  slli         s6, s7, 13
                  srli         a7, s10, 16
                  sll          t2, sp, s4
                  sltu         a3, zero, zero
                  mulh         t0, t4, t4
                  slti         t4, t5, 1282
                  add          sp, a5, s11
                  sll          s10, a7, s4
                  rem          s8, s10, s1
                  or           t6, tp, a4
                  sub          t6, gp, t0
                  sll          t3, sp, gp
                  srai         s7, s9, 11
                  ori          t5, s11, -61
                  slt          s5, s1, s3
                  mul          s11, s10, s1
                  sltu         s11, t0, a6
                  sltu         t3, gp, gp
                  lui          s7, 710007
                  srai         a2, t5, 1
                  or           s0, s4, a0
                  add          a7, s3, t6
                  sra          gp, a3, a1
                  mulh         a4, a4, s11
                  addi         a0, s3, -832
                  srli         t4, a7, 31
                  sub          a7, s10, s3
                  auipc        t1, 585227
                  srai         s5, s0, 2
                  mul          a5, t1, s3
                  mul          s0, t1, a4
                  or           zero, gp, t6
                  sub          t0, ra, tp
                  slti         sp, s4, 1537
                  lui          ra, 831106
                  addi         gp, a1, -844
                  sra          s8, t6, t5
                  sltiu        t5, ra, -781
                  andi         s11, s1, -1327
                  mulhu        s7, a7, s7
                  lui          s5, 901202
                  sltu         s9, s11, t5
                  divu         t6, t1, s5
                  slti         ra, t1, -652
                  mulh         t5, tp, t3
                  ori          s7, t2, -1637
                  lui          s6, 870854
                  addi         a3, a1, 476
                  div          s0, zero, a2
                  sub          a2, t4, t1
                  srl          t5, t0, s0
                  rem          t6, a4, s6
                  mulhsu       a2, t1, s5
                  slli         s0, s9, 15
                  mul          t1, gp, sp
                  sll          t6, s11, t6
                  sltu         s8, s10, t3
                  div          t3, a0, a3
                  mulh         s8, t3, s10
                  auipc        s5, 15995
                  ori          s3, zero, 844
                  slti         s0, tp, 1251
                  srli         zero, t1, 25
                  mulhu        sp, s10, s8
                  remu         a2, a1, s1
                  rem          a4, a7, a7
                  and          s5, t4, a2
                  ori          a4, tp, 1576
                  sltiu        s6, t5, 1253
                  mulh         gp, ra, a6
                  slti         a3, a6, -338
                  and          s3, s11, sp
                  xor          a0, s9, s2
                  xor          a5, t3, s9
                  andi         a4, ra, 367
                  addi         a1, s10, -1688
                  srli         t2, t6, 25
                  mulhsu       s9, t1, t0
                  or           t1, t2, sp
                  rem          s7, s2, t1
                  slt          a0, s9, gp
                  nop
                  srai         t6, a2, 31
                  sra          s5, s0, a4
                  nop
                  sub          t1, t3, a6
                  srai         zero, s3, 15
                  mulhsu       t0, s7, t0
                  ori          s11, a4, 529
                  mulhu        s0, gp, t6
                  andi         s6, t3, -205
                  sltu         a0, s2, t1
                  div          a7, s6, a6
                  mulh         s5, t2, t6
                  andi         a5, s5, -811
                  mulhsu       a0, t5, t1
                  mulh         s0, a5, t1
                  remu         gp, t3, t5
                  mulhu        ra, a3, a7
                  or           t5, a7, s3
                  srli         s8, t2, 28
                  slli         s10, s3, 23
                  addi         a2, a5, -1922
                  sll          s5, a7, a0
                  mul          s0, a3, sp
                  add          ra, s6, t5
                  srli         a4, a0, 5
                  ori          a4, a1, -14
                  slti         s11, gp, 1695
                  divu         s0, gp, t6
                  mulh         tp, s11, s10
                  sll          s0, a5, s8
                  xori         t0, a6, 1148
                  mulhu        gp, t2, a1
                  slti         t3, t5, 1938
                  slti         s2, s8, -469
                  srli         ra, s2, 6
                  divu         a4, s7, s9
                  lui          gp, 106145
                  rem          t4, t3, s5
                  ori          zero, t3, -778
                  addi         s7, s2, -1585
                  slt          s0, s5, t0
                  rem          t2, s11, t1
                  slti         t0, a6, -483
                  divu         a3, s2, t5
                  sltu         a7, a1, gp
                  and          t0, t2, t1
                  slti         t5, ra, 870
                  slt          s8, a1, zero
                  slt          s0, zero, a0
                  rem          t2, a7, s9
                  or           s7, a6, tp
                  slt          s7, a0, s0
                  sltu         s3, s7, a7
                  slt          a1, t4, t5
                  srl          s6, a7, a7
                  ori          a4, a7, 749
                  auipc        t1, 476324
                  xor          a0, ra, zero
                  srai         zero, sp, 19
                  xor          s9, t6, s2
                  and          s3, a3, tp
                  xor          s0, a6, a7
                  sltiu        a3, s4, -1151
                  remu         s11, s9, s9
                  remu         ra, s6, s11
                  add          s2, t2, ra
                  and          a1, tp, zero
                  div          t4, a0, gp
                  addi         s10, zero, -777
                  mulh         gp, s0, s6
                  nop
                  srl          s9, sp, t5
                  mulhsu       s10, t3, a6
                  divu         a1, ra, s8
                  addi         s2, s11, -97
                  slt          t3, t6, s1
                  sll          ra, s3, s8
                  slli         tp, s7, 7
                  divu         a1, a2, a2
                  slti         t2, t4, 106
                  srli         t0, s2, 26
                  and          a3, s2, a0
                  srl          s8, a6, t0
                  auipc        zero, 437081
                  sub          s2, s7, s4
                  srli         a7, a0, 20
                  srli         s9, s1, 31
                  slli         ra, t4, 30
                  slti         s3, a3, 484
                  sll          a2, a5, t6
                  srl          a2, ra, sp
                  srl          ra, s7, a7
                  div          s9, s7, ra
                  slli         t3, s8, 9
                  add          a5, s11, a0
                  sra          t4, t2, t5
                  div          s10, s8, a7
                  xor          t6, s11, ra
                  slti         sp, s5, -1023
                  sltu         sp, s4, s9
                  srl          t3, s7, t2
                  andi         s10, a2, 1117
                  srli         a7, s1, 2
                  mulhu        s11, a5, t0
                  mulh         a0, a0, a5
                  add          a3, a4, s11
                  xori         t6, sp, -582
                  mulh         s3, a5, s9
                  mulhsu       a0, a0, zero
                  and          a0, s6, a7
                  andi         sp, a3, 49
                  sub          s9, s0, a1
                  or           s11, s8, t3
                  or           t5, a2, zero
                  slti         s8, s1, 166
                  ori          s6, zero, 1316
                  addi         s6, a4, -182
                  and          tp, t6, a6
                  addi         a5, a6, -197
                  sub          a1, s5, t3
                  srli         zero, a2, 20
                  mulhsu       tp, t2, s6
                  sltiu        s7, s4, 30
                  sltiu        s8, t1, -1195
                  srli         s7, s5, 15
                  div          t3, tp, s1
                  srl          s7, t4, s4
                  slli         t1, s5, 0
                  sltu         a7, a5, a2
                  sll          s5, s1, t1
                  srl          s10, s6, s5
                  lui          s3, 582490
                  srl          a3, sp, s3
                  sra          a1, s4, s10
                  srl          a2, ra, s10
                  remu         s9, s11, a7
                  mulhu        t5, s5, a0
                  mul          s0, t1, tp
                  add          s8, s5, a7
                  lui          s2, 27311
                  auipc        s11, 565640
                  mulhsu       ra, a1, t1
                  sll          t0, s11, s0
                  xori         a3, s5, -373
                  mulhu        s0, s10, s10
                  mulh         s10, gp, a2
                  divu         a4, s11, s1
                  and          s10, s6, t5
                  slli         a0, t4, 23
                  remu         ra, s2, a2
                  srai         s3, s1, 13
                  xori         s2, s8, 722
                  rem          s3, a7, a3
                  or           a0, tp, s1
                  mulh         a7, s4, s2
                  rem          tp, t2, s10
                  and          t4, s4, s11
                  mulhsu       tp, t4, t5
                  srl          a7, gp, s4
                  mulh         s0, s2, a7
                  mulhu        s9, s11, s9
                  xor          s3, a1, a6
                  sub          a1, t3, t3
                  mul          a1, s5, zero
                  sltu         a7, t0, s8
                  auipc        a5, 838215
                  srl          sp, s1, s1
                  or           s8, a7, gp
                  sra          t4, s8, ra
                  div          gp, t0, s8
                  rem          s2, s10, t6
                  remu         a7, a2, s0
                  divu         s7, s8, t4
                  mulh         t6, s11, s0
                  srli         s11, a3, 27
                  or           tp, s11, a5
                  div          zero, t3, s1
                  addi         a3, a1, -544
                  rem          sp, t0, s5
                  sltiu        t2, a1, -233
                  lui          t6, 909209
                  remu         s2, a1, sp
                  xori         a5, t2, 1688
                  srl          s7, sp, s11
                  sll          a1, s9, zero
                  srli         zero, s4, 19
                  sra          s0, a0, gp
                  slli         s11, s1, 19
                  auipc        s11, 925718
                  add          t3, a6, s5
                  remu         t1, s5, s5
                  mul          s8, t6, s11
                  slti         t0, zero, -510
                  slti         s9, a1, -2021
                  sltu         a2, t3, s6
                  mul          s8, s5, s7
                  xor          s11, s6, a7
                  add          s8, s11, t5
                  rem          tp, s3, t6
                  nop
                  mulhsu       t0, s4, a4
                  div          s11, s5, s3
                  nop
                  add          s10, t4, s8
                  divu         t0, s0, s8
                  rem          a3, a7, s7
                  add          s3, t1, s4
                  slli         t5, gp, 1
                  mulh         a3, s10, t5
                  mul          a1, s1, a3
                  srl          t1, t6, s4
                  and          a3, a2, s8
                  sltu         a4, ra, s9
                  slti         a7, s6, -1180
                  sub          t3, s6, s0
                  ori          ra, t2, -1476
                  remu         s3, t4, t3
                  sub          t1, s8, t0
                  xor          s3, s11, ra
                  slli         a0, gp, 0
                  mulhu        a5, s11, a3
                  xor          tp, a5, zero
                  mulhu        a7, t3, t6
                  sra          s11, s8, s8
                  sltu         gp, s6, a4
                  sll          a7, s2, s6
                  mul          t0, a3, t6
                  or           t6, s3, a0
                  srl          t2, s6, s4
                  div          s6, s10, s7
                  srli         s5, t3, 14
                  div          sp, a1, s7
                  lui          t0, 273937
                  auipc        a0, 830669
                  andi         a7, s10, 446
                  srai         s2, sp, 28
                  sra          s0, a5, a5
                  add          gp, ra, s2
                  sub          a1, a2, t4
                  sll          tp, a5, s8
                  slli         a7, s7, 19
                  remu         a7, s9, s2
                  lui          a3, 877596
                  mul          a4, t5, s6
                  slti         ra, tp, 1791
                  addi         s9, a7, 1443
                  mul          s3, t1, a0
                  nop
                  srl          a2, s1, s9
                  and          s11, t1, gp
                  lui          s11, 711215
                  slti         gp, t1, -1840
                  slti         t1, sp, 1816
                  srl          t6, t0, ra
                  srl          tp, s6, s6
                  div          a3, a1, a0
                  sltiu        t0, t1, -1099
                  andi         gp, t5, 1860
                  andi         s11, a4, 1351
                  sltu         tp, zero, s5
                  srli         s10, t3, 21
                  sll          t1, s0, a6
                  sll          a7, a6, s10
                  divu         s10, zero, s9
                  xor          s7, zero, s6
                  andi         s9, sp, -1812
                  srli         a2, ra, 15
                  slli         s10, s6, 11
                  addi         zero, a5, 1369
                  srli         tp, t6, 3
                  srai         s8, s2, 10
                  mulh         s9, a5, t0
                  sll          t5, gp, a3
                  add          t5, s7, t5
                  div          gp, s11, s4
                  slli         s8, a4, 22
                  slti         s7, a7, -849
                  divu         s7, t1, s6
                  add          a1, a3, a1
                  srl          s9, s7, a7
                  srli         tp, t3, 20
                  slt          t5, sp, t1
                  xor          s0, zero, a4
                  srli         zero, t1, 5
                  mulh         a5, t1, zero
                  sltiu        a3, s11, -1621
                  div          a0, ra, t6
                  slti         a5, sp, 1011
                  sltiu        zero, tp, 1375
                  andi         a1, zero, -1102
                  sltiu        s2, t1, -253
                  sltiu        a4, a7, -1452
                  sltiu        ra, s9, 632
                  sltiu        a5, t0, -1326
                  mulh         a4, s8, s6
                  ori          a5, a2, -550
                  add          s7, a5, a3
                  srl          gp, a0, t0
                  sltu         s8, s6, t1
                  mul          s11, s4, sp
                  andi         a1, a1, 1629
                  slti         s11, s2, 248
                  sltu         s6, sp, t5
                  or           t1, t3, a2
                  or           a1, sp, s4
                  sub          s11, sp, s2
                  xori         t0, a2, 139
                  and          t2, s0, tp
                  addi         a3, t3, -1429
                  nop
                  mulhsu       s5, t3, s10
                  slli         s11, t4, 1
                  rem          s9, s1, s0
                  srli         s8, s3, 27
                  srli         ra, zero, 25
                  sra          a7, s9, tp
                  auipc        t6, 625190
                  slt          t4, a4, s9
                  sra          s0, t5, t3
                  sltiu        t4, a1, -860
                  nop
                  divu         a3, t0, sp
                  remu         a2, t4, s8
                  mulh         s3, s0, a0
                  div          t3, t0, s4
                  ori          ra, t4, -610
                  andi         s0, s1, -134
                  srl          a0, s3, s4
                  divu         a3, t4, a7
                  xori         s11, t2, 115
                  div          t5, s2, zero
                  or           a7, a3, s8
                  sub          t2, a1, s0
                  srai         tp, s11, 12
                  srai         s6, t2, 29
                  mulh         a0, t5, s5
                  mul          s5, t4, ra
                  sub          gp, a0, a7
                  srli         s3, t4, 29
                  or           s5, ra, s9
                  slt          s2, a3, s10
                  lui          a3, 396874
                  sub          s10, sp, a6
                  slt          s10, ra, t5
                  remu         ra, t4, s10
                  xori         gp, s5, 222
                  sltiu        a1, s11, 459
                  sra          s2, s7, a4
                  auipc        a2, 467106
                  divu         t5, t5, s10
                  srl          a0, a5, s8
                  slt          s5, gp, s4
                  slt          a7, s6, s2
                  mul          s2, s1, ra
                  mul          a3, s5, a0
                  sll          s0, s3, a2
                  auipc        sp, 884595
                  auipc        s5, 542492
                  xor          s3, a5, s4
                  srai         s7, gp, 24
                  slli         ra, s2, 8
                  xori         s6, s6, -1274
                  slli         zero, s5, 12
                  srli         s5, t0, 5
                  ori          s0, gp, -1138
                  sub          s8, s0, s3
                  sltu         s7, t2, a4
                  sll          s6, a5, s9
                  sub          tp, tp, s1
                  div          s10, ra, s2
                  xor          s8, tp, t3
                  divu         a0, s7, zero
                  slli         t0, s4, 19
                  mul          ra, s2, s6
                  mulh         t5, a5, s9
                  and          ra, zero, s0
                  ori          sp, sp, 1120
                  mulhu        a7, s2, s11
                  div          ra, t3, ra
                  sra          s2, gp, t3
                  add          s8, a1, s11
                  sub          a3, t0, s2
                  sltu         a0, ra, a1
                  xori         tp, t0, -1840
                  nop
                  sltu         t3, s8, s1
                  div          t2, a5, a7
                  sra          s3, s9, t0
                  remu         t1, t5, s4
                  sltu         a4, s4, a7
                  sub          s2, s2, s5
                  andi         t5, s7, 1148
                  andi         s9, a1, -1310
                  rem          a4, t6, t4
                  sltiu        t3, s7, 1223
                  srai         a5, a2, 11
                  mulh         s10, s9, t0
                  andi         s9, tp, 742
                  or           s8, s11, a5
                  srai         s2, a5, 16
                  sra          s8, s8, s8
                  remu         t5, a5, a0
                  and          t6, a1, t4
                  mulhu        t5, s1, t0
                  lui          a0, 436234
                  sll          a1, s10, a2
                  mul          s5, a1, tp
                  remu         sp, a1, tp
                  slli         s2, sp, 23
                  addi         s8, s1, 54
                  mulh         a7, t0, t3
                  rem          s7, a5, s0
                  addi         zero, s5, -1313
                  add          s3, s3, t6
                  sltiu        zero, s7, 1242
                  mul          tp, t1, a5
                  div          t2, gp, s8
                  rem          sp, t6, s0
                  sra          t1, a5, t2
                  rem          sp, a4, tp
                  and          s2, a1, a2
                  addi         t6, s9, 122
                  addi         s11, t4, -1334
                  addi         t0, a7, -2048
                  div          a2, s7, s0
                  slli         t1, s0, 5
                  srl          a5, sp, t4
                  srl          tp, s1, s11
                  srli         a0, s0, 10
                  xori         a4, s5, -65
                  lui          s6, 452109
                  srai         t3, sp, 3
                  ori          a4, t4, 1570
                  srl          ra, t5, t2
                  sltu         zero, ra, s11
                  andi         s11, s3, -41
                  div          a4, t3, s7
                  mulh         s9, s8, a2
                  or           gp, zero, s7
                  addi         t1, a1, -500
                  mulh         s10, s0, a1
                  and          s0, t0, s3
                  add          t5, t6, s10
                  srli         t2, a6, 26
                  slti         s7, t3, 1465
                  ori          s11, s5, -4
                  div          a1, a3, a3
                  and          a7, a6, t2
                  rem          a4, s8, t5
                  addi         t5, s3, 494
                  sra          t5, a0, s10
                  lui          tp, 909454
                  nop
                  mulh         tp, a7, s2
                  mulhu        t5, s9, a0
                  and          a4, a7, a0
                  sltiu        s6, s4, 366
                  rem          t6, a7, a0
                  sltiu        t5, s0, 598
                  andi         a5, zero, 1149
                  slli         s8, s3, 11
                  slti         sp, sp, 1791
                  mul          s9, s1, t5
                  sub          a1, t6, t3
                  slti         tp, zero, -1355
                  slli         a1, s2, 31
                  andi         t5, tp, 1576
                  srl          t2, t5, a3
                  mulhu        a7, ra, s1
                  addi         sp, zero, -1205
                  add          s2, s6, s2
                  remu         t2, s0, sp
                  mulhu        s0, a5, s7
                  auipc        t4, 747504
                  auipc        a1, 796379
                  nop
                  andi         gp, s3, -424
                  sub          a7, zero, t6
                  lui          a1, 111268
                  srl          s5, a1, a1
                  slti         a2, a2, -1787
                  div          s2, s1, gp
                  addi         t0, s5, 613
                  nop
                  lui          t1, 60354
                  mulhu        a1, s3, s0
                  sltu         s6, t2, s8
                  divu         t3, gp, s3
                  sltu         s8, a0, a0
                  srl          t5, sp, s5
                  rem          a2, s5, a6
                  rem          t3, s9, s6
                  remu         t6, s0, s6
                  mulhsu       s6, a2, tp
                  sra          t1, t3, s10
                  mulhu        s11, a3, ra
                  or           tp, s3, s11
                  and          a3, zero, a0
                  mulhsu       s0, a1, t5
                  auipc        zero, 416048
                  slli         a7, s10, 7
                  mul          a0, t0, s2
                  remu         s11, zero, t5
                  rem          a2, t5, gp
                  mulhsu       a3, s6, a2
                  mulhu        s7, a2, sp
                  rem          a5, t2, s11
                  rem          s2, s8, s0
                  mulh         s10, a3, t0
                  sra          gp, s9, t5
                  remu         s9, s0, ra
                  srli         ra, a5, 10
                  andi         s5, s10, -418
                  rem          s0, sp, s0
                  slt          a5, s4, s11
                  sub          s9, t0, s8
                  xori         a5, zero, 520
                  mulhsu       a7, t3, t3
                  rem          t5, sp, s7
                  divu         s0, s7, t2
                  div          a1, s11, tp
                  div          a7, a4, a7
                  slli         gp, s4, 25
                  xori         tp, t5, -925
                  auipc        t2, 511586
                  slli         a2, s8, 30
                  or           gp, t6, a3
                  xor          s6, sp, t6
                  andi         t6, s3, 1049
                  sltiu        a7, a0, 1187
                  nop
                  mul          t2, t5, t1
                  sub          s0, s8, t5
                  mulhu        gp, s10, t2
                  rem          a0, s11, a4
                  srli         t0, s8, 29
                  lui          s8, 622844
                  and          a7, tp, s2
                  srai         a5, a2, 19
                  srl          s5, a4, a2
                  mulhsu       s7, sp, a5
                  xori         s0, t5, -155
                  lui          s8, 460678
                  andi         a1, s5, -125
                  slti         a3, s9, 75
                  auipc        ra, 394858
                  mulhsu       zero, t4, s5
                  srai         ra, s8, 18
                  divu         ra, a5, s11
                  srl          ra, a6, a0
                  mulhu        t3, s4, s1
                  sltu         a4, a5, t6
                  srai         t1, s11, 26
                  xor          t1, s11, t2
                  auipc        a1, 95463
                  srl          t6, t2, s5
                  srli         t1, tp, 22
                  addi         sp, tp, 578
                  lui          ra, 33218
                  and          t0, a0, s10
                  lui          s0, 988000
                  srli         ra, s4, 13
                  add          s10, a3, a0
                  xori         s9, s1, 1503
                  add          s5, a2, s3
                  slli         t1, s1, 21
                  slt          a1, gp, s11
                  xor          a0, a2, s6
                  add          a0, gp, zero
                  divu         t4, a6, s1
                  divu         t3, s6, s11
                  mulhsu       s2, t4, s3
                  addi         t6, a2, 704
                  divu         s5, t3, s9
                  andi         s3, a4, -1456
                  or           zero, t3, s3
                  slli         gp, a0, 23
                  and          s11, s2, tp
                  sltu         s0, gp, a1
                  lui          t5, 838076
                  sll          t5, t4, s11
                  sra          s3, t6, zero
                  ori          t6, s7, 526
                  sltiu        t5, a2, 1781
                  andi         s2, zero, 1074
                  slt          s6, s1, t6
                  divu         s6, a2, zero
                  mul          t2, tp, zero
                  srl          t6, s11, s10
                  mulhsu       a4, sp, t3
                  xor          a3, a6, a3
                  and          a5, s1, t1
                  xor          t3, s8, zero
                  xori         sp, s0, 153
                  srai         a7, ra, 17
                  slti         s0, a1, 316
                  srli         a0, s8, 1
                  add          s3, a2, tp
                  mulhu        a7, a0, s3
                  ori          s2, sp, 366
                  sltu         sp, zero, s2
                  sll          s2, a5, a3
                  nop
                  mul          gp, a2, t6
                  srl          t4, a6, t3
                  srli         zero, s9, 6
                  andi         s10, zero, 1816
                  mulhsu       a1, s1, a2
                  sra          a0, t0, tp
                  mul          sp, t0, a7
                  nop
                  srl          s0, s6, s7
                  sltiu        t5, a6, 80
                  sll          s7, sp, a5
                  nop
                  nop
                  sub          t0, a7, sp
                  add          a5, t1, a0
                  xori         t1, s3, 1488
                  sll          zero, a1, t3
                  divu         s6, t1, s7
                  sra          a5, s4, t5
                  mul          a5, a3, a1
                  mul          t5, s9, s4
                  add          s8, s2, s11
                  sltiu        s11, s11, 2032
                  lui          a1, 142890
                  mulhsu       s3, s7, t3
                  srl          a2, sp, a2
                  divu         s9, gp, t4
                  addi         a5, a0, -848
                  rem          s6, sp, a5
                  sll          a2, a0, t4
                  sltu         s9, gp, a6
                  srli         a2, s4, 9
                  sltu         t3, t5, s0
                  nop
                  divu         a4, a6, a1
                  srl          zero, zero, s2
                  sub          s6, t0, ra
                  mulhu        t0, s9, a3
                  div          a4, t4, zero
                  addi         a5, a3, 513
                  srli         t0, s1, 1
                  slli         zero, s4, 4
                  nop
                  xori         zero, tp, 1021
                  mulhsu       t5, a1, t5
                  mul          a2, s6, tp
                  sra          gp, a3, gp
                  div          sp, s5, t5
                  sra          t3, s8, s6
                  add          a4, s8, a5
                  add          s10, gp, s6
                  remu         s8, s3, a5
                  xori         t3, s8, 397
                  ori          a7, t2, 956
                  nop
                  slli         t0, s1, 31
                  andi         ra, t3, 1223
                  rem          s7, t4, s4
                  slt          t1, s7, s1
                  srl          t3, a3, s10
                  addi         s7, a4, -322
                  sub          a7, a4, s0
                  or           s2, a7, s7
                  nop
                  mul          a7, t1, s6
                  sll          a0, t3, a3
                  sltu         t5, t2, a5
                  mulhsu       t1, t1, s8
                  mulhu        gp, gp, s4
                  add          t6, s3, s2
                  mulhu        a4, s5, a3
                  lui          gp, 132736
                  or           a3, tp, gp
                  sltiu        t4, ra, -1851
                  sra          s6, gp, t0
                  or           s0, tp, s11
                  auipc        t2, 979888
                  srai         s2, s8, 17
                  sltu         s10, a7, s9
                  sub          tp, t3, s11
                  ori          s6, t0, -961
                  addi         a4, t1, -2000
                  srl          t5, s9, t2
                  div          tp, t6, a7
                  auipc        s7, 196485
                  lui          t4, 1044969
                  nop
                  rem          t0, s3, s2
                  ori          s6, a7, 200
                  sltiu        zero, a2, 1722
                  sub          tp, s4, t0
                  sll          s10, t3, s9
                  mulhu        sp, a1, a4
                  slti         t6, a7, -1689
                  sub          t6, a7, t1
                  div          ra, s8, s5
                  lui          t0, 136150
                  mulhsu       sp, a0, s10
                  mulhu        a0, zero, t2
                  or           s2, gp, a0
                  div          t0, s2, s3
                  slli         s6, s2, 22
                  sll          t1, s10, a6
                  mulhsu       s6, tp, a4
                  sltu         a7, a2, gp
                  mulhu        s9, gp, ra
                  remu         a0, t1, s7
                  srai         a0, t4, 24
                  andi         s7, a5, 1770
                  lui          s8, 124740
                  add          gp, a7, s0
                  xori         a3, s1, -1186
                  srli         t4, t3, 26
                  addi         t2, a0, 917
                  sub          t5, a1, a7
                  xori         zero, t2, -1993
                  sra          s5, a5, s7
                  srli         t4, a7, 28
                  xor          zero, s11, t2
                  sltu         t0, s6, a5
                  srli         t0, t1, 12
                  and          sp, s0, t0
                  mulhu        s3, a1, s4
                  lui          tp, 191973
                  srai         a1, s10, 30
                  xori         s3, s4, 235
                  mulh         s10, a7, zero
                  sltu         a3, a0, a2
                  sll          a1, a1, s3
                  mulhsu       a7, zero, a7
                  ori          s0, t3, 1710
                  andi         a7, t3, 1991
                  rem          s10, a1, s9
                  sub          a4, a2, t5
                  xor          s8, t4, s3
                  srai         gp, s2, 27
                  sltu         tp, a5, a2
                  sll          a3, ra, tp
                  xor          t3, s4, s11
                  or           s5, t6, s11
                  slt          t2, ra, a1
                  add          sp, a1, a6
                  andi         s6, t6, -372
                  nop
                  or           t0, s1, t6
                  srli         sp, t5, 31
                  slti         s8, s6, -269
                  lui          t3, 814546
                  srli         t2, a5, 21
                  xor          s5, s5, t4
                  sll          t5, a0, s4
                  or           a0, t4, a7
                  addi         t6, s5, -318
                  andi         a0, a2, -98
                  sll          s8, ra, t0
                  divu         zero, a2, t5
                  andi         a7, t4, 143
                  sub          s0, a2, a6
                  srli         s6, sp, 29
                  mul          a2, zero, zero
                  srli         s11, a6, 22
                  sll          s0, s10, s0
                  div          a4, t4, s7
                  mulhsu       a3, t6, s7
                  sra          s2, s0, ra
                  sll          t6, s1, a7
                  rem          sp, ra, t3
                  sltu         zero, t1, s7
                  or           s9, a7, s10
                  mulhsu       t1, sp, a7
                  nop
                  add          a5, t0, t5
                  and          s9, a7, t3
                  div          tp, s3, t3
                  sll          s3, a2, a4
                  div          s9, s0, a5
                  or           s8, s2, s11
                  lui          s2, 119001
                  srl          t3, t5, s9
                  xor          a5, s11, t4
                  slt          gp, s9, a3
                  srli         t3, a3, 22
                  mulh         a3, a2, s1
                  remu         sp, tp, sp
                  div          t2, t5, t0
                  add          tp, s3, s4
                  ori          t5, a4, -375
                  add          t4, ra, s7
                  auipc        t3, 707049
                  sll          a1, t2, s11
                  auipc        s7, 408068
                  sltiu        sp, t3, -1293
                  lui          s0, 726376
                  lui          t4, 235498
                  auipc        s3, 372847
                  ori          t0, s5, 1222
                  nop
                  add          a5, s5, s3
                  auipc        t1, 87589
                  xor          s6, a6, t2
                  sub          s7, t2, t0
                  ori          t4, s2, -732
                  sll          s3, s2, gp
                  slli         s0, t3, 27
                  mulhsu       a4, a5, a0
                  xor          sp, a1, a3
                  add          a0, t4, s10
                  remu         s10, a2, t4
                  sll          s2, sp, s2
                  nop
                  or           s3, a4, t4
                  xori         a5, zero, 30
                  mul          s8, t4, a7
                  xori         zero, a0, -467
                  mulhu        a2, a6, gp
                  xor          s7, s1, s11
                  or           s10, gp, s4
                  remu         t4, ra, s0
                  remu         t2, t1, ra
                  divu         t1, a3, t0
                  add          s7, t3, tp
                  sltiu        t4, zero, 142
                  lui          s6, 827281
                  andi         a7, gp, -1074
                  srli         ra, s6, 14
                  div          s10, s7, s11
                  mulhu        t2, s9, a2
                  xori         a3, a7, -239
                  ori          s6, s1, 2025
                  srai         s6, gp, 12
                  slt          a1, a3, s5
                  sltu         s0, a2, a6
                  sll          a1, s0, s11
                  mulhsu       s7, zero, a6
                  rem          a0, t2, s4
                  mul          a5, a5, t6
                  andi         s10, s6, 328
                  div          gp, t1, t1
                  auipc        a1, 353547
                  mul          a0, s10, a2
                  slli         a1, a2, 16
                  srli         a1, gp, 19
                  sltu         a7, s10, t2
                  xori         a3, s4, -261
                  mulh         a2, a4, ra
                  xori         a2, t4, -1889
                  remu         s5, t5, s9
                  add          t5, zero, sp
                  andi         zero, t3, -1297
                  addi         t2, s3, 148
                  sll          gp, t4, s10
                  xori         gp, t5, -555
                  xori         t0, a4, 134
                  nop
                  auipc        s7, 307505
                  rem          t1, a5, a5
                  lui          t3, 185905
                  and          a1, s0, a1
                  add          t2, a5, s6
                  lui          ra, 244748
                  sra          t4, s2, sp
                  or           t4, a7, t4
                  divu         sp, s7, s3
                  or           s5, t5, s4
                  nop
                  ori          s11, t3, -1327
                  lui          a2, 480476
                  slt          s10, ra, a3
                  xori         s7, a2, 1170
                  slli         s2, t3, 15
                  srai         t3, a4, 11
                  or           t0, a3, s4
                  slli         tp, t3, 20
                  rem          a5, s2, t0
                  sll          s0, a5, a6
                  srai         s2, a6, 4
                  div          t1, t5, s6
                  lui          zero, 705837
                  xor          t1, s3, s7
                  lui          t0, 762230
                  ori          t0, a0, -1108
                  sra          s2, s9, tp
                  auipc        s2, 460717
                  or           s9, a5, a4
                  sltu         t4, zero, s3
                  or           s3, sp, t6
                  xor          s11, a4, a4
                  nop
                  divu         a3, ra, tp
                  xor          s2, s8, s7
                  slli         a4, a5, 23
                  xori         s2, t6, 914
                  addi         s10, t5, -573
                  sltu         s5, s0, t0
                  xori         tp, t2, 1405
                  nop
                  sra          s0, t5, a6
                  slti         tp, s5, 2017
                  lui          a2, 581286
                  auipc        sp, 612649
                  sll          s11, s10, a7
                  sll          sp, t0, t0
                  sltu         t3, tp, a0
                  auipc        s10, 211299
                  slti         t6, s9, 882
                  mulhsu       a4, s6, s2
                  sltu         t3, zero, ra
                  andi         tp, sp, 65
                  xor          t4, tp, t6
                  xori         s9, a7, -1896
                  mulh         s6, a4, s6
                  srl          t5, t0, t5
                  slti         a4, s1, 795
                  xor          s5, t3, t3
                  sltu         t2, s1, s3
                  sub          a3, a6, s8
                  sltiu        s5, s2, 807
                  sra          s0, zero, s6
                  auipc        s9, 501878
                  add          a5, t5, a5
                  add          t1, s9, s3
                  and          a0, s9, s6
                  mul          s6, s3, a2
                  sltiu        s10, a1, -773
                  srli         s9, t1, 3
                  add          s2, a0, a5
                  addi         a3, s9, -760
                  div          s5, s10, a4
                  auipc        ra, 37560
                  xor          tp, a1, a4
                  ori          s8, t4, 814
                  and          ra, a4, a3
                  srai         zero, a3, 18
                  sub          a4, s5, s6
                  addi         s5, s11, -1122
                  addi         a7, a1, 1106
                  remu         s11, zero, s0
                  slti         s3, t5, -1432
                  ori          tp, s3, -1462
                  srl          t1, t6, zero
                  div          t6, a6, s9
                  div          s10, t5, a7
                  xor          zero, sp, t6
                  rem          ra, s4, a4
                  srai         t4, ra, 22
                  or           sp, s10, s10
                  srl          gp, t4, a4
                  remu         s3, t2, t1
                  srl          gp, s1, zero
                  srli         a1, s4, 9
                  add          s3, s3, t5
                  sltiu        a0, a4, -795
                  xor          ra, t6, t1
                  div          s2, a6, zero
                  mulhu        a7, a1, s9
                  mul          s8, t6, a4
                  sltiu        t2, tp, 391
                  remu         a1, ra, s0
                  sra          s10, a1, t1
                  sltiu        s2, a3, -791
                  sll          a0, s3, tp
                  xor          s5, a4, tp
                  andi         s5, gp, -337
                  mul          s10, a7, s2
                  nop
                  sltiu        s6, t4, -1919
                  mul          tp, a2, s1
                  or           a4, s5, sp
                  mulhu        s11, a0, gp
                  sltu         a2, gp, s2
                  slti         s5, tp, 1537
                  lui          s2, 923432
                  or           gp, t3, s3
                  div          a5, t5, tp
                  rem          s3, zero, s9
                  slt          a0, s3, s4
                  slt          a5, t2, a7
                  rem          a3, s3, s7
                  sub          s0, s9, t1
                  sll          ra, a2, s7
                  nop
                  xor          a5, s7, s7
                  ori          a2, s0, -1035
                  sltu         t4, t1, a4
                  mulhu        sp, a7, a3
                  add          s7, a4, sp
                  xor          a1, a0, s0
                  sra          sp, s6, s7
                  and          a5, a1, t2
                  slli         a7, sp, 10
                  rem          t3, a2, s7
                  slt          s8, s6, a2
                  sltiu        s10, a4, -1804
                  mulhsu       t6, s5, t4
                  srl          s0, t6, a4
                  rem          s9, s7, s4
                  sltu         s2, t0, zero
                  ori          s6, t4, 994
                  slti         s0, s4, -709
                  srl          s10, s10, s11
                  sltu         gp, s7, s5
                  sltiu        t6, s3, 630
                  add          a2, ra, t6
                  mulhu        t6, a1, s0
                  sll          t3, t0, s8
                  div          a4, s4, s6
                  auipc        t6, 913927
                  auipc        zero, 186605
                  or           zero, sp, a7
                  ori          s5, a5, -1916
                  sra          gp, t0, t3
                  lui          s6, 683380
                  srl          a1, s5, a3
                  addi         ra, t5, 670
                  auipc        a2, 286109
                  rem          t4, s5, a4
                  mul          a4, zero, s3
                  mul          s7, s10, t3
                  srli         s6, s3, 6
                  ori          s0, sp, 1309
                  addi         t2, tp, -1145
                  divu         t1, s1, s9
                  div          a5, gp, s0
                  sltiu        zero, t1, -109
                  xori         s3, s2, -525
                  slli         t3, s2, 22
                  rem          t5, t5, s2
                  auipc        a0, 304640
                  ori          a0, ra, -1288
                  sub          zero, a5, a5
                  sub          t3, s5, gp
                  ori          t1, a0, 887
                  xori         a5, ra, 1831
                  ori          s8, a1, -916
                  addi         a2, a2, 1754
                  srli         t6, s6, 8
                  addi         t2, a0, -1953
                  div          a1, s8, t4
                  ori          s9, a4, 1702
                  nop
                  ori          s3, a7, -415
                  add          s10, a4, s0
                  slli         s7, s8, 0
                  mulhu        a7, tp, s10
                  srl          a3, gp, t3
                  auipc        s2, 144275
                  sltiu        a5, s9, -1762
                  auipc        s8, 408670
                  div          a1, s6, s11
                  sll          t3, a4, s9
                  mulh         t5, s3, s1
                  sll          s9, s10, a7
                  srl          tp, t5, s2
                  xor          s5, s7, t1
                  mulhu        gp, s11, a4
                  slti         s8, s2, -133
                  srli         a2, a6, 15
                  slt          a4, ra, s9
                  xori         s6, a5, -1612
                  slli         t1, a5, 25
                  mulh         t1, zero, s11
                  sltu         a5, s3, t2
                  div          ra, s10, zero
                  add          t4, ra, s9
                  rem          t5, t2, a4
                  add          a2, s3, t0
                  sub          t1, t1, t2
                  mulh         ra, s2, s6
                  xor          a7, s6, s1
                  xor          ra, tp, tp
                  divu         s6, s4, t4
                  srai         sp, s6, 24
                  mulhu        s7, sp, t4
                  or           sp, t6, t6
                  srli         t6, gp, 31
                  mulhsu       a0, s10, sp
                  slt          t0, a7, sp
                  slli         a1, t0, 21
                  andi         s0, gp, 1877
                  rem          s6, s11, s2
                  sra          s7, s2, s11
                  divu         t5, a2, a7
                  mulhu        s3, s9, s11
                  slli         a0, t1, 6
                  and          t4, t5, s9
                  srl          zero, a4, sp
                  xori         s6, a1, 872
                  remu         s5, t1, a4
                  mulhsu       t5, t3, t2
                  lui          t1, 487077
                  and          gp, s8, t2
                  and          a4, sp, t2
                  slli         s10, t4, 3
                  div          a3, s2, s6
                  sub          a0, a6, zero
                  sll          t5, s2, a5
                  sltiu        t2, t2, -1661
                  remu         gp, t3, a5
                  mulhsu       a1, s11, s7
                  slti         a3, ra, 1175
                  mulhu        sp, s11, s8
                  remu         zero, t1, tp
                  srli         s10, a4, 5
                  xor          s0, t1, a7
                  ori          t3, t2, -1130
                  sra          a3, t5, a7
                  mulh         s5, gp, t6
                  or           a2, t5, a7
                  sll          a5, a6, a4
                  mulhu        a7, t4, a5
                  slti         s9, a4, -1362
                  remu         a3, a7, a4
                  and          s2, a7, t3
                  sltiu        a5, t2, -1764
                  sll          t2, gp, s8
                  rem          a4, s6, t4
                  addi         s0, a0, 1025
                  nop
                  andi         t2, s10, -1801
                  and          ra, sp, s10
                  sll          s7, s9, a2
                  lui          a4, 1035959
                  add          s0, a0, t0
                  div          a3, s3, t3
                  addi         a7, a5, -1146
                  rem          t6, t1, a7
                  andi         s8, s0, 1782
                  mulh         t2, s6, s7
                  slli         tp, t0, 26
                  mulh         t5, a7, s9
                  sltu         t0, a3, a3
                  slli         s10, a1, 13
                  and          s6, s6, a6
                  xori         ra, s0, -958
                  sltiu        s7, gp, -1128
                  and          s11, t2, s3
                  rem          t0, s2, s4
                  ori          s10, t5, 594
                  sra          s5, t5, t4
                  sll          gp, t5, t3
                  auipc        t3, 1031402
                  mul          a7, a5, s4
                  remu         s0, s8, t2
                  ori          s9, s5, 835
                  sub          s9, zero, s7
                  srai         ra, s8, 15
                  mulhu        t1, s3, a0
                  rem          a7, zero, s1
                  or           a4, a1, s3
                  sub          zero, s7, a6
                  sll          s10, s1, a2
                  slt          a7, ra, a6
                  and          s7, a6, t1
                  andi         a5, s6, -1978
                  add          s2, s3, a4
                  srli         s9, t0, 5
                  slli         ra, s10, 0
                  mul          a1, s7, a2
                  or           a7, s0, a4
                  srai         gp, a7, 23
                  mulhu        t5, t2, s7
                  mulh         a4, t4, gp
                  mulhu        s5, gp, a5
                  srl          a4, t3, s1
                  remu         s5, s4, t3
                  rem          a5, ra, t1
                  remu         t4, s0, zero
                  addi         ra, tp, -166
                  sra          a7, a1, s11
                  auipc        s11, 752029
                  slli         a2, t5, 21
                  srli         s9, ra, 31
                  slti         t3, ra, -1416
                  srai         a4, s0, 1
                  nop
                  sub          a4, a1, s6
                  remu         a2, t4, s0
                  srai         s9, zero, 26
                  add          s3, a4, zero
                  addi         s2, t1, -1449
                  sub          s11, ra, s10
                  srl          s10, s7, a2
                  xor          s7, s5, a6
                  sra          s9, s8, sp
                  add          t3, t0, t1
                  slli         s7, s0, 24
                  andi         a4, s1, -1249
                  nop
                  slli         s3, t4, 24
                  slti         zero, t0, 784
                  xori         a7, s1, -1393
                  slt          ra, s4, zero
                  addi         s2, a3, -178
                  sub          t0, a1, s11
                  srl          a3, s7, t1
                  srai         s7, a4, 18
                  add          s9, a4, s3
                  add          sp, s4, s6
                  lui          zero, 708218
                  slli         a3, zero, 12
                  sra          t1, t2, s11
                  slti         s8, a6, -1012
                  remu         s5, a6, s5
                  mulh         a3, a6, s8
                  div          ra, a4, s6
                  mulhsu       t4, tp, s8
                  divu         a4, s9, s9
                  mulhsu       s8, ra, a5
                  srli         a0, gp, 23
                  xori         s10, gp, -37
                  mulhsu       a3, tp, a2
                  mulhsu       s3, t0, t3
                  sra          s10, t1, s2
                  slli         sp, s2, 10
                  addi         s2, s9, -735
                  div          a5, s4, t4
                  or           t6, t2, a5
                  xori         t5, a3, -360
                  divu         a2, s10, a2
                  mulhsu       s7, s3, a4
                  sll          s3, gp, s3
                  rem          t3, s1, t5
                  ori          zero, a3, -1142
                  nop
                  mulhsu       s8, tp, a6
                  rem          t5, t1, s10
                  auipc        s8, 594573
                  srai         s11, s5, 30
                  rem          s2, s8, s9
                  sltiu        zero, s11, -1735
                  addi         s6, s5, 1725
                  ori          a2, zero, 958
                  sll          t1, t6, s8
                  addi         t3, t0, -1815
                  remu         a5, a1, a7
                  srli         a5, gp, 19
                  xor          ra, tp, t3
                  addi         sp, a5, 1581
                  slti         s7, t6, -1988
                  add          s11, a0, a1
                  slt          zero, s5, zero
                  andi         t6, sp, -984
                  addi         a1, t3, 1962
                  div          s0, t1, t1
                  srl          s5, s4, ra
                  sub          s0, s2, t3
                  or           s9, s9, s7
                  sltiu        t4, ra, 1044
                  div          ra, t4, s1
                  xor          s2, tp, ra
                  mulhsu       t5, t0, a3
                  mulhsu       zero, sp, tp
                  sltu         s8, s0, ra
                  and          s10, a7, s5
                  add          sp, s5, s2
                  sltiu        t0, t0, -108
                  nop
                  or           s10, zero, t1
                  divu         a2, tp, s9
                  srl          a0, a7, s4
                  slt          s3, s1, s0
                  rem          zero, s4, a5
                  sll          s2, t6, s6
                  and          t0, t5, zero
                  srl          s11, sp, t5
                  mulhsu       s10, a2, a7
                  mul          s5, t0, s0
                  xori         s3, a3, -1200
                  sll          t5, s2, s3
                  slti         s5, s0, 43
                  sltu         s9, s5, t0
                  add          t6, a3, a0
                  sll          t3, t6, s8
                  slti         t3, sp, -248
                  mulhsu       zero, t0, s3
                  nop
                  rem          a4, t1, s11
                  ori          t0, a7, 1522
                  auipc        t5, 449845
                  slti         s7, a4, -2047
                  auipc        a5, 424568
                  slti         s0, t2, -1840
                  slli         zero, t2, 29
                  mulhsu       s3, s10, a0
                  mulh         s0, s10, s6
                  mulhu        a0, a2, a2
                  sltu         t6, t4, a3
                  mulhu        t5, s0, s5
                  rem          a4, s2, sp
                  add          s5, s4, t3
                  lui          s6, 348247
                  rem          s0, t1, s9
                  srli         a1, s6, 6
                  or           ra, a5, s8
                  div          s11, a7, s11
                  xori         s0, ra, -894
                  auipc        sp, 600595
                  slti         s10, t3, -1684
                  sra          s6, s9, s1
                  auipc        t6, 117126
                  slli         a5, s0, 16
                  addi         s3, a2, -1333
                  ori          s7, s4, 868
                  auipc        tp, 930484
                  mulh         s5, s5, gp
                  xor          s0, tp, s5
                  srli         t0, a1, 21
                  mulhsu       t1, zero, a7
                  add          s11, s5, a4
                  slti         t4, t4, -479
                  sltiu        s10, t0, -127
                  and          t2, tp, t2
                  mulhu        a0, s1, t3
                  or           a2, s4, s4
                  remu         t2, sp, s9
                  rem          tp, t6, t3
                  lui          ra, 800448
                  auipc        a1, 846889
                  add          s8, t5, a1
                  addi         ra, gp, -1330
                  slt          ra, a5, tp
                  mulh         zero, gp, tp
                  remu         s5, t6, s8
                  div          s3, t3, a1
                  addi         s5, s10, -1149
                  sll          s5, t2, s7
                  srli         s5, a3, 19
                  add          a1, s11, s0
                  sll          t4, sp, zero
                  nop
                  sll          s7, s7, t4
                  ori          s2, sp, 1596
                  sltiu        t4, a0, 597
                  srl          s6, gp, s0
                  sltu         zero, s11, a1
                  lui          s9, 152696
                  srl          s7, t5, sp
                  slt          tp, a7, s1
                  nop
                  or           t2, a1, a4
                  divu         s6, a0, s3
                  andi         t1, a4, -1414
                  and          ra, t1, zero
                  srli         zero, s1, 24
                  remu         t3, tp, s7
                  slt          s0, a1, t6
                  xori         t6, s10, 449
                  srai         t3, a7, 16
                  slli         gp, a3, 22
                  add          t2, t4, t5
                  sll          gp, sp, t3
                  andi         s5, t4, 1719
                  mulhsu       s9, s8, a4
                  mulhsu       s11, s2, a5
                  ori          gp, tp, 774
                  mul          zero, t4, zero
                  sub          s10, a6, t1
                  addi         gp, a4, 179
                  xori         s2, s6, 1410
                  divu         s9, s1, ra
                  srl          tp, s1, s0
                  addi         t2, s1, -651
                  srl          s8, s3, tp
                  slli         sp, a0, 22
                  sub          tp, s11, a0
                  and          zero, a2, zero
                  or           s5, sp, s7
                  divu         s11, a5, s8
                  remu         s6, a6, a6
                  and          t5, a6, t2
                  add          zero, s2, s10
                  sltu         t4, a7, s3
                  srl          sp, ra, s7
                  mul          t2, a5, t2
                  ori          a4, a6, 1303
                  mulhu        ra, t5, s4
                  xori         s5, s10, 1646
                  slli         a4, s7, 8
                  addi         a0, t0, -1774
                  lui          s0, 981553
                  mulhu        s10, t0, s2
                  remu         s6, s1, a4
                  sra          s6, a1, t6
                  xori         t3, gp, -966
                  mul          a7, t3, a3
                  divu         t3, zero, zero
                  divu         t4, s3, t4
                  sub          a3, tp, s1
                  divu         s6, t3, s7
                  auipc        zero, 554008
                  sra          a7, s10, t1
                  srl          sp, t5, a3
                  mulhsu       s7, s11, s10
                  add          s5, zero, ra
                  srl          t3, s7, t6
                  lui          tp, 516281
                  ori          a3, s0, -100
                  mul          t0, s2, s3
                  mul          t0, s5, t3
                  slli         s11, s8, 2
                  mulhu        t3, s1, a6
                  slti         a1, ra, -1844
                  slti         s10, t5, -1185
                  srli         gp, s2, 2
                  addi         a4, s10, 834
                  srl          gp, s7, t0
                  andi         s10, t2, 1433
                  srli         t5, a4, 16
                  nop
                  lui          t0, 654448
                  mulh         t5, sp, t0
                  lui          s2, 481255
                  mulh         sp, sp, zero
                  and          t3, t6, a4
                  mulh         t5, a6, sp
                  sll          s2, s9, t5
                  add          a4, t6, a4
                  and          t6, s0, a0
                  xor          a7, s2, t0
                  sltiu        ra, s6, 803
                  remu         s3, tp, a5
                  srai         t4, t0, 7
                  xor          s2, s9, tp
                  mulhu        s0, gp, s5
                  sltu         t5, a1, s9
                  divu         a5, t5, s3
                  or           a2, s5, sp
                  nop
                  mulh         t4, s6, t6
                  divu         s6, t0, zero
                  slli         gp, a5, 20
                  div          s9, a2, t4
                  ori          s9, s1, 418
                  sub          ra, s8, zero
                  divu         a3, s10, a4
                  xori         a4, a6, -1175
                  ori          s11, s3, -920
                  mul          t0, a6, a2
                  andi         s2, a1, -1219
                  auipc        t3, 574972
                  auipc        a1, 651832
                  srl          t5, a5, ra
                  srai         gp, s9, 2
                  mulhsu       s8, s4, t2
                  mulh         zero, gp, a6
                  addi         ra, gp, -65
                  srli         s8, a5, 13
                  mulhsu       t4, tp, s5
                  sltiu        a7, tp, 1488
                  auipc        t2, 915833
                  addi         a5, a5, -672
                  sub          s5, s0, a2
                  and          t6, t4, tp
                  srai         gp, a2, 30
                  mul          a7, t6, gp
                  and          s2, ra, zero
                  sub          a7, s2, s2
                  remu         s2, gp, t3
                  xori         a3, tp, -1274
                  divu         a1, s5, t3
                  sltu         t2, a4, t1
                  ori          a2, a4, -990
                  sltu         zero, t1, ra
                  sub          a3, a1, zero
                  add          s10, tp, sp
                  mulh         zero, t3, s2
                  auipc        a0, 385981
                  srli         s6, a5, 6
                  xori         ra, t4, 1649
                  andi         sp, s4, 1712
                  auipc        s3, 139714
                  mulhu        s2, t2, a6
                  mulhu        t6, sp, a6
                  or           a3, s0, ra
                  sltiu        tp, s7, 1648
                  mul          gp, a5, tp
                  sra          t6, a6, s4
                  and          s3, a6, a1
                  srai         a0, s6, 24
                  nop
                  lui          s0, 856931
                  or           sp, s8, ra
                  add          zero, a7, s9
                  sub          ra, s5, t2
                  slti         s9, s4, 992
                  ori          t3, sp, 211
                  rem          t3, s5, s8
                  add          a1, a2, t3
                  and          ra, t1, a0
                  mulhu        s8, tp, sp
                  lui          s9, 843174
                  srli         s6, a5, 23
                  xori         s5, a6, 1588
                  and          t1, s2, a4
                  xor          a7, tp, s8
                  srai         a5, s8, 26
                  xori         t6, s6, 1631
                  sub          t0, s11, gp
                  sll          zero, s7, t3
                  sltiu        tp, tp, -224
                  slti         ra, s4, 612
                  slli         a3, a3, 13
                  auipc        a7, 697670
                  srli         sp, gp, 18
                  sll          s8, t5, s11
                  xori         t3, a3, -1013
                  mulhu        t5, a3, s8
                  mulh         t5, s4, tp
                  addi         gp, s9, 1415
                  sra          sp, a7, a3
                  sltiu        t2, s1, 1910
                  or           s3, t6, a1
                  nop
                  add          a5, s11, t4
                  mulhsu       s11, s4, tp
                  srl          s2, t0, t4
                  slti         a0, s8, -59
                  div          s3, s11, t3
                  mulhsu       s6, sp, t5
                  remu         t5, s5, s8
                  rem          s7, s8, t5
                  div          tp, t5, s9
                  rem          a3, a2, a6
                  sltu         t5, a1, s6
                  slt          s10, s1, s7
                  ori          t5, t2, 500
                  srli         s2, gp, 16
                  mulhu        a0, t2, s0
                  nop
                  srl          t0, gp, s11
                  xori         ra, s10, 502
                  divu         a2, s3, t1
                  mulhu        a2, a6, a3
                  sll          t4, a7, sp
                  mulhsu       a1, t0, zero
                  and          t2, s7, t4
                  or           s6, s7, s6
                  divu         sp, t2, s8
                  nop
                  srai         t1, s8, 12
                  mul          a5, sp, a1
                  rem          a3, s1, s10
                  and          s9, a1, sp
                  srli         gp, s8, 15
                  sltiu        a7, zero, -1
                  divu         tp, tp, t0
                  xor          a2, t3, s11
                  divu         s10, s9, a0
                  rem          t2, s9, s5
                  nop
                  ori          a1, a6, 648
                  divu         t2, s1, t6
                  mulh         s9, s6, a4
                  rem          t5, a4, s0
                  srai         s10, s2, 2
                  remu         gp, s4, a3
                  srl          s5, gp, t0
                  xori         gp, a4, -1021
                  mul          t6, s8, tp
                  slti         sp, sp, -158
                  auipc        sp, 803641
                  xor          s6, s2, s3
                  slti         ra, a5, -436
                  slti         s9, t0, -175
                  lui          t0, 268213
                  srl          a2, t2, s5
                  sra          s7, s6, a4
                  andi         t4, a4, 626
                  slli         s7, a2, 29
                  and          s6, a7, t6
                  or           a7, a0, s1
                  or           a0, a3, s6
                  sll          t3, ra, t3
                  srl          s3, a1, t4
                  mulh         s6, s0, a0
                  rem          s9, s11, s6
                  mulhsu       t4, t2, s11
                  add          a0, sp, t4
                  div          s11, a1, a0
                  srli         a5, s1, 14
                  lui          t4, 2468
                  lui          t5, 311301
                  ori          s11, gp, -1186
                  div          s8, t5, s1
                  sltiu        ra, a4, 919
                  slt          s6, s2, s7
                  rem          t2, sp, a2
                  add          t3, a2, t3
                  rem          t3, s0, s0
                  slti         s0, gp, -517
                  ori          a0, a2, 1856
                  rem          s8, zero, sp
                  add          tp, s3, s10
                  auipc        s6, 332259
                  slli         tp, a3, 10
                  sra          a0, t3, a1
                  sra          t1, s11, s0
                  mulhsu       zero, t3, s10
                  addi         s8, sp, -1337
                  addi         t3, a7, -1262
                  sltiu        tp, s2, 576
                  srl          s3, a5, a4
                  sltu         t3, t3, t4
                  auipc        a2, 106440
                  slli         a7, a6, 25
                  nop
                  add          s6, a1, a2
                  nop
                  sltu         zero, s5, a1
                  srl          t4, a0, a3
                  mulhu        s0, a3, s3
                  nop
                  add          a5, a0, t6
                  srl          a2, s5, zero
                  mul          t6, a7, s6
                  andi         a1, a2, -932
                  addi         t1, a2, 1746
                  lui          t5, 899985
                  slli         a5, s11, 19
                  nop
                  ori          t1, t0, 369
                  sltu         t1, a0, s5
                  slti         s9, a3, 1119
                  mul          gp, s9, tp
                  slti         t6, s7, -484
                  addi         s8, s2, -1917
                  xori         t2, ra, -1746
                  nop
                  srli         t1, a2, 14
                  div          zero, s0, a6
                  add          s0, t5, s8
                  slti         a4, sp, 1655
                  nop
                  rem          a3, zero, t4
                  sltiu        s10, s8, -589
                  slli         tp, s11, 25
                  ori          zero, zero, 945
                  xori         t0, t3, -73
                  sll          a2, s7, a5
                  mulhu        s10, sp, s5
                  divu         s10, zero, s11
                  divu         zero, a6, a6
                  ori          t1, s4, -78
                  srai         a4, s1, 16
                  srai         tp, a2, 25
                  mulh         s2, s4, ra
                  sub          zero, t4, t2
                  auipc        s11, 579740
                  rem          ra, gp, s0
                  mulhu        t5, t4, a3
                  srli         s5, a0, 4
                  auipc        ra, 123897
                  ori          a7, s3, -1506
                  mul          a7, t5, s5
                  sltiu        ra, zero, -282
                  mul          t3, t4, s8
                  mulhsu       gp, t5, s1
                  ori          s8, a4, 603
                  slti         a4, a5, -203
                  slli         t4, s3, 2
                  slt          s2, a3, a5
                  sltu         a2, tp, a7
                  add          s5, t0, t3
                  xori         a4, ra, -441
                  srai         ra, a7, 15
                  and          s10, a6, tp
                  mulhu        t0, t0, tp
                  xor          tp, t2, t6
                  andi         t2, tp, -1648
                  slli         tp, s1, 6
                  andi         s5, s2, 1702
                  mulh         s6, t4, s3
                  xori         s10, s4, 2020
                  srl          a5, a1, t2
                  rem          t1, ra, a0
                  sll          a4, t2, s6
                  sll          gp, t3, s9
                  xori         a1, s2, -484
                  ori          t6, a3, -638
                  and          s5, zero, s3
                  remu         s2, t6, a3
                  sub          s11, tp, t6
                  auipc        a7, 285967
                  sub          ra, s1, zero
                  sltu         a1, s10, s10
                  addi         tp, a2, -97
                  sltu         s9, sp, s8
                  sltiu        s9, t3, -1753
                  and          t6, zero, t3
                  lui          sp, 761588
                  slt          zero, tp, t5
                  sll          s9, s2, sp
                  mulhsu       t1, a5, a3
                  rem          s9, t3, t6
                  srli         s11, t3, 6
                  andi         t3, s6, -773
                  mul          a7, a4, s10
                  andi         t1, a2, 297
                  mulhu        t3, s10, sp
                  addi         s6, t3, 1706
                  remu         t4, t4, t2
                  srai         sp, t2, 29
                  srl          s10, s8, zero
                  slti         t3, t2, -826
                  slti         s8, t5, 143
                  lui          tp, 886430
                  sltiu        t4, s3, 1827
                  srai         s0, a5, 13
                  mulhu        t0, s8, tp
                  mul          a2, a4, gp
                  addi         t2, t5, -1302
                  auipc        tp, 142514
                  and          zero, s0, a5
                  remu         sp, ra, t1
                  srai         s9, s7, 7
                  srl          s8, a2, a3
                  andi         zero, gp, 1252
                  add          s10, t4, a7
                  addi         s7, s4, -656
                  div          s2, t2, a6
                  slt          a1, s3, s7
                  nop
                  remu         t3, t1, a6
                  sra          a1, s7, a5
                  andi         s2, sp, 268
                  nop
                  slti         t0, sp, 1207
                  xor          s7, a7, a1
                  mulh         t3, s8, s1
                  andi         s11, t4, -1078
                  divu         s0, a1, s7
                  addi         s8, tp, 1679
                  slt          a5, a0, gp
                  sra          s2, s3, t5
                  add          s9, a4, a1
                  sltiu        a1, ra, -1045
                  srli         zero, s8, 30
                  srai         s2, a0, 9
                  or           t0, t0, s0
                  srli         s11, t0, 25
                  slti         ra, s2, 1530
                  mulhu        t3, s3, s10
                  mul          tp, tp, t1
                  or           s8, a6, t6
                  mulhsu       a4, tp, a6
                  xor          s7, a6, s9
                  or           zero, a4, s1
                  auipc        a0, 576405
                  sub          zero, a7, a6
                  slt          t0, gp, s1
                  lui          a7, 1006130
                  addi         s9, s3, 523
                  srli         a0, sp, 5
                  andi         a7, a2, -1685
                  slli         a2, zero, 11
                  nop
                  sub          a7, s4, s6
                  mulhu        s5, a3, a5
                  ori          t0, s10, 886
                  nop
                  slli         s6, s1, 12
                  xori         t6, sp, -1140
                  srl          s5, sp, s10
                  divu         t4, s0, t4
                  lui          t0, 632026
                  sub          sp, s5, t3
                  mulh         sp, s11, a5
                  slti         gp, a4, -239
                  addi         a3, t4, -183
                  sltu         s8, ra, a7
                  or           sp, s7, s1
                  rem          t0, s8, t1
                  addi         tp, s7, 416
                  slt          a7, t5, t3
                  srl          t4, a0, a4
                  xor          t2, a4, s9
                  mulhu        s5, t4, s10
                  mulhu        t1, s4, t6
                  remu         a7, s3, a0
                  lui          t4, 666474
                  slt          zero, t5, s10
                  addi         s2, a4, 222
                  lui          s0, 204884
                  sub          t3, s1, s5
                  divu         a5, a0, gp
                  ori          a1, s9, 1857
                  mulh         s2, t6, sp
                  nop
                  addi         s9, t3, 96
                  auipc        a2, 894047
                  srai         tp, zero, 20
                  slt          s11, t6, s6
                  andi         s3, a1, -424
                  andi         sp, s0, 1992
                  div          tp, s4, a4
                  srai         zero, sp, 28
                  slti         t5, zero, 777
                  auipc        t1, 411781
                  xor          s0, a7, t3
                  nop
                  sltiu        s0, a6, 164
                  sll          s6, s10, s10
                  xor          a0, s10, s10
                  srli         ra, a0, 0
                  addi         s8, t5, 1755
                  slti         t6, s2, -1267
                  srai         s8, t0, 6
                  sra          a1, t0, s7
                  rem          ra, t4, a1
                  srai         s10, t1, 17
                  mulhu        s8, t5, a0
                  ori          a7, zero, 178
                  slti         a0, a3, -455
                  srai         a4, a0, 9
                  and          t0, t3, t1
                  addi         s9, t6, 1623
                  auipc        t1, 890209
                  xori         a7, t2, -618
                  xor          a2, s10, t4
                  sub          a7, s3, s0
                  sra          s11, s11, s3
                  sra          t6, t3, a7
                  lui          ra, 414717
                  rem          zero, t3, s11
                  sltiu        a3, s9, -1180
                  remu         t3, t2, s5
                  sltu         s7, s9, a1
                  xori         t6, s6, -336
                  mulh         a2, zero, s8
                  auipc        t3, 250230
                  ori          s9, t3, -1414
                  nop
                  mulh         tp, s10, sp
                  mulhsu       t6, a0, s3
                  slti         s10, t2, -692
                  slli         s7, s1, 13
                  sltiu        s9, a6, -2035
                  remu         s6, zero, t3
                  mul          t0, gp, a6
                  and          s6, zero, s5
                  lui          sp, 489316
                  srli         zero, a3, 14
                  sub          a5, a4, a6
                  sub          t1, t6, t4
                  add          s11, t1, s10
                  xor          sp, t0, a3
                  or           a4, a2, sp
                  slti         t6, s0, 1527
                  sltu         t5, a3, a3
                  sltu         a4, s11, a3
                  srl          s0, s1, a0
                  sll          tp, s2, a5
                  slli         t6, s11, 29
                  sltiu        a7, tp, -175
                  or           t2, t3, a7
                  nop
                  divu         a5, s1, a2
                  mulh         a7, s4, a2
                  mulhsu       a1, sp, t0
                  add          t4, s0, t6
                  nop
                  nop
                  andi         s11, s7, 1397
                  sll          a1, t6, s4
                  andi         s10, a7, 196
                  sra          s7, s9, a1
                  ori          t2, a1, 2039
                  or           a1, s2, t1
                  xori         ra, s0, 916
                  xor          s11, s0, t6
                  sltu         s5, zero, a5
                  sub          s3, s4, t2
                  mulhsu       tp, t4, s10
                  mulhu        s8, t0, t2
                  and          s7, t4, s2
                  slt          s7, a3, a4
                  mulhsu       a2, t5, s6
                  mulhsu       ra, a0, t2
                  slti         a4, s4, 1571
                  addi         s11, s11, 483
                  slt          a1, t6, t2
                  andi         sp, t1, 1473
                  srli         tp, gp, 12
                  sltiu        gp, t5, -611
                  sub          s8, s0, s4
                  add          a7, a6, t0
                  add          s11, s6, a5
                  sltu         t6, a4, t0
                  div          s0, t1, a3
                  remu         t2, a0, zero
                  sltu         t4, s6, t2
                  slli         gp, s5, 6
                  sra          a5, s0, ra
                  add          a0, tp, s6
                  mulh         ra, s4, a2
                  srli         a3, t3, 7
                  or           s8, s6, t0
                  srli         s11, s2, 18
                  auipc        a5, 554549
                  add          zero, t1, sp
                  remu         s7, a6, t5
                  sltiu        s6, sp, -1536
                  auipc        t1, 587341
                  srl          s7, a0, a2
                  sub          s3, a7, s11
                  sltiu        s11, a4, 663
                  remu         ra, a4, s6
                  lui          s0, 935141
                  divu         a4, t0, s4
                  sltu         t4, s6, a3
                  sltu         s6, t2, a5
                  slt          t1, a7, a1
                  mulhu        t5, t1, a2
                  sra          s9, t4, s3
                  sub          s6, sp, sp
                  rem          s2, sp, t0
                  sra          t4, a2, s2
                  nop
                  xori         a1, s1, 1935
                  sltu         zero, a1, s8
                  addi         t2, s7, 361
                  sra          t5, zero, a5
                  auipc        s11, 851591
                  xor          s3, t1, a4
                  lui          t1, 909952
                  mulhsu       tp, tp, t2
                  mulhu        t0, a4, a5
                  srai         a5, t4, 9
                  slti         ra, t6, 1404
                  sltu         a0, tp, tp
                  andi         s8, ra, 1462
                  or           sp, s5, s4
                  addi         s10, s5, -1661
                  slt          t6, s1, s7
                  lui          tp, 468083
                  mul          s9, t2, t2
                  mul          s8, a6, t5
                  sll          sp, s9, s6
                  sll          tp, t3, s3
                  slli         s2, s7, 1
                  andi         t1, a0, 2005
                  andi         s6, a7, 1011
                  srai         t6, t5, 31
                  divu         a4, a0, sp
                  add          s0, s9, s1
                  addi         tp, a3, -283
                  add          s9, s10, t4
                  remu         sp, a3, t4
                  slt          s8, a5, gp
                  add          t2, zero, s8
                  mulhsu       tp, s3, s4
                  andi         a1, t0, 2037
                  srai         t1, a6, 26
                  nop
                  slti         ra, s10, -205
                  xor          s11, t6, s10
                  sltiu        s0, s4, 1159
                  and          s5, s10, a5
                  or           a1, s6, s2
                  addi         t6, tp, -376
                  mulhsu       t0, s6, t0
                  andi         s0, t4, -1598
                  slti         s11, a5, -1505
                  add          zero, zero, s9
                  div          a2, t6, a7
                  and          s3, a5, t0
                  div          s0, s7, s5
                  lui          tp, 628650
                  srli         s2, sp, 6
                  mulhsu       gp, s11, t0
                  remu         t5, a0, s0
                  sra          t4, gp, s3
                  lui          a3, 938863
                  slti         t5, gp, -281
                  sub          s6, s10, s6
                  sra          a7, s8, s4
                  lui          t6, 341227
                  srai         s11, s4, 2
                  mulhsu       t4, zero, t2
                  slt          s6, t5, t1
                  xori         a2, s3, -759
                  mulhsu       tp, s11, t6
                  sltu         s6, s11, s4
                  mulh         a4, a4, s6
                  sltiu        t5, t1, 1543
                  srli         s11, s6, 21
                  nop
                  sll          a7, gp, s11
                  andi         a5, s10, 1749
                  sra          t1, s11, a6
                  lui          t2, 85405
                  srli         s5, s10, 21
                  add          a1, s9, a2
                  slli         tp, s0, 6
                  remu         tp, s6, t4
                  auipc        s3, 646968
                  slt          s11, s11, s10
                  and          s7, a3, t4
                  mulhu        s0, a5, s2
                  addi         a2, t1, -1334
                  sub          a4, s5, s6
                  ori          s6, t1, -2003
                  sub          a3, s3, t5
                  xori         s11, t1, -46
                  srai         s6, s6, 28
                  lui          a3, 526035
                  sltu         a0, s4, a1
                  srli         t0, t3, 17
                  sub          zero, s0, s0
                  mul          s9, a6, s6
                  or           s6, s11, s7
                  sltu         a1, zero, ra
                  or           s7, s7, s2
                  mul          t5, s7, a6
                  sltu         s9, s0, s6
                  slli         s0, t4, 1
                  mulhu        sp, t0, a6
                  sub          s10, a1, s8
                  srl          s6, s2, t5
                  sltu         sp, s5, s4
                  slli         s2, s3, 19
                  and          tp, a2, sp
                  andi         a7, s4, 2018
                  sra          a7, t0, a7
                  mul          t0, s2, sp
                  nop
                  mulh         zero, s9, s0
                  rem          a4, t5, a3
                  nop
                  sub          t2, s2, s8
                  sltu         s5, a2, s11
                  auipc        s6, 587841
                  srl          a3, s8, ra
                  sltu         tp, ra, zero
                  auipc        gp, 19785
                  mulh         s11, s0, s9
                  mulhsu       s5, s5, t5
                  lui          ra, 348442
                  add          a1, tp, a2
                  and          t6, t2, s9
                  slli         s5, a0, 24
                  sra          s7, t1, zero
                  rem          s2, s1, a3
                  or           s5, a5, a3
                  addi         a1, sp, -848
                  xor          s6, a0, a5
                  slti         t5, a1, -481
                  lui          s6, 312353
                  add          a3, s0, s6
                  sltiu        s6, a5, 979
                  add          s7, t3, ra
                  rem          t4, t6, t5
                  srl          s6, s10, gp
                  sltiu        s6, a3, 1643
                  divu         s11, a4, s1
                  divu         tp, s1, a6
                  slti         t2, s10, 713
                  mul          t4, a1, s9
                  slli         a7, s9, 27
                  slli         s8, a4, 23
                  add          t6, a6, a4
                  or           t2, a6, s9
                  mul          t0, t2, s7
                  mulhu        sp, s0, s3
                  srli         s6, zero, 9
                  or           s8, a4, a5
                  addi         t4, t6, -665
                  mulhu        s9, t6, t4
                  mulhu        t5, t4, t3
                  sltu         s9, t3, s1
                  or           t1, s11, gp
                  mulh         t0, gp, t3
                  xor          a0, t4, a0
                  srli         tp, s7, 10
                  div          t0, t5, t2
                  slli         zero, s1, 31
                  mulhsu       s6, t1, a0
                  mulhsu       a3, s0, s4
                  xor          s0, t5, s8
                  div          sp, s0, t1
                  mulhsu       a3, a5, s10
                  andi         t6, t2, 1115
                  slt          s3, a5, s2
                  add          a5, s8, a4
                  mulhu        a0, s11, s2
                  srai         gp, t5, 18
                  sltu         t3, t5, a4
                  remu         t2, t6, s3
                  auipc        a1, 438559
                  mulhu        t3, t3, s8
                  mul          t1, s8, t4
                  mulhu        t4, t5, s11
                  remu         t4, a4, sp
                  sltu         t2, s3, t0
                  slt          t4, s4, t2
                  auipc        s8, 44953
                  sub          tp, s9, t5
                  auipc        a3, 197439
                  srl          t6, t5, sp
                  sltiu        s2, a0, -274
                  sub          a1, a6, s11
                  nop
                  slli         s2, a7, 7
                  srai         s3, t4, 30
                  mulh         t1, s3, t1
                  andi         s0, s9, 708
                  rem          t6, a6, a7
                  ori          a3, a4, 1104
                  nop
                  divu         a1, sp, s3
                  auipc        t6, 151448
                  mul          s3, a5, a3
                  sltu         s7, t0, a5
                  nop
                  srli         tp, s11, 23
                  mul          tp, s1, tp
                  mul          a4, a2, sp
                  xor          t6, ra, a0
                  addi         s9, a1, 1988
                  slt          t4, s10, s2
                  srai         s7, t1, 7
                  srl          a4, s9, s0
                  sll          t3, s3, s1
                  or           s11, a2, s10
                  xor          s8, s11, t3
                  andi         a1, a3, 1595
                  addi         a3, t4, -597
                  mulh         a0, t2, zero
                  srai         a1, s7, 15
                  ori          s2, s1, 722
                  mulhsu       t6, s3, a1
                  andi         t3, t2, 1677
                  slli         a4, a6, 21
                  slti         s7, t3, -560
                  rem          t0, a3, s10
                  lui          a7, 110493
                  srai         s8, a3, 17
                  or           a2, s7, sp
                  auipc        t3, 725211
                  rem          t4, s1, a6
                  sub          s11, a7, s11
                  auipc        s8, 76693
                  divu         s2, s6, s11
                  sltiu        s0, s4, 498
                  mulh         a7, ra, t4
                  rem          s5, s3, gp
                  sub          ra, s7, t3
                  addi         a5, ra, 1389
                  sra          s5, t2, t0
                  sll          t4, s1, sp
                  slt          ra, s10, a2
                  sub          s0, t5, s1
                  nop
                  mulhu        tp, t4, s7
                  slt          t1, s0, t5
                  srai         s7, s1, 10
                  remu         s11, t0, ra
                  srl          sp, t5, t1
                  xori         s3, gp, 561
                  slt          t6, t3, t1
                  sltu         ra, a4, t3
                  srli         t1, s3, 12
                  andi         t3, s3, 853
                  lui          ra, 422285
                  divu         a7, a1, zero
                  remu         t5, t3, gp
                  sub          s0, s6, ra
                  xori         s3, tp, -1695
                  sltiu        a4, t3, 911
                  xor          s5, a7, t5
                  srl          t2, s3, a0
                  sltiu        a5, a3, -317
                  auipc        s0, 558351
                  sltiu        tp, t3, 1184
                  rem          ra, t0, sp
                  sltu         s8, t4, s3
                  addi         s2, s9, -816
                  xor          gp, s9, t0
                  mulhsu       t3, tp, tp
                  add          s2, a7, s2
                  srl          s6, tp, a6
                  andi         s5, a7, -1823
                  divu         t1, s5, s3
                  srai         s9, a0, 3
                  lui          t3, 664075
                  sltiu        zero, ra, -1190
                  srli         a3, s5, 21
                  srai         s7, tp, 19
                  mulhu        s6, t5, ra
                  mul          gp, zero, s5
                  sll          t4, t3, t3
                  addi         a2, zero, -984
                  rem          zero, t0, s0
                  mulhsu       t4, t0, s2
                  auipc        t1, 754233
                  mulh         a4, a2, ra
                  sll          t2, t3, gp
                  mulhu        s3, a2, s6
                  srl          tp, s0, a1
                  div          s2, t0, s4
                  mulh         t5, s10, t6
                  srai         s8, t4, 29
                  mul          a1, s1, a3
                  mul          s6, s10, a7
                  mulh         s10, s3, s1
                  sll          s10, t5, ra
                  slti         s7, t5, 1409
                  nop
                  rem          t5, gp, t0
                  rem          sp, a0, s7
                  slt          a0, ra, a2
                  srli         s10, a3, 5
                  rem          s9, a1, t2
                  srl          t0, ra, s5
                  and          s8, s4, s1
                  xori         a4, t6, 416
                  slli         s10, s9, 0
                  mul          a5, a1, s8
                  slt          t4, s11, s3
                  sll          zero, s0, s11
                  sub          s2, sp, s5
                  sltu         sp, a0, s11
                  srli         sp, t1, 15
                  or           a3, a4, t1
                  lui          a3, 308322
                  ori          t3, tp, -37
                  srl          tp, a4, sp
                  andi         a7, s2, 1618
                  remu         s0, zero, t3
                  sltu         t1, s4, s8
                  slt          t3, t0, t4
                  auipc        tp, 886608
                  mulh         sp, a5, a2
                  srli         a4, s3, 12
                  div          a2, s3, s11
                  mul          a0, s11, t6
                  xor          s8, a0, t3
                  rem          a0, t3, a6
                  mul          s6, ra, a7
                  rem          t5, t5, t3
                  addi         s6, t1, 724
                  auipc        zero, 475961
                  sra          gp, s6, s2
                  sltu         a3, a5, s0
                  or           a4, t2, s1
                  mul          a2, t0, tp
                  div          zero, a6, s10
                  and          s9, a5, s6
                  sub          t3, s7, ra
                  srl          zero, a3, s2
                  divu         a7, t3, t4
                  slli         tp, a6, 30
                  mul          t0, ra, t5
                  sub          ra, t1, s8
                  xori         a5, s8, 893
                  xor          a2, t4, s5
                  ori          tp, a0, -1321
                  and          a0, t2, s8
                  div          s9, tp, t1
                  mul          s9, t3, a4
                  lui          sp, 278903
                  sra          s10, t2, s7
                  sltiu        a5, s11, 868
                  mul          zero, t1, t1
                  sltiu        gp, a3, -1184
                  sltu         t6, s11, s6
                  sub          s7, s5, s7
                  xor          t0, s1, s5
                  rem          a4, s3, s11
                  addi         s8, t5, -1864
                  sltiu        zero, tp, -1371
                  slli         tp, s5, 11
                  sltiu        s5, t3, 2001
                  auipc        a7, 768661
                  add          ra, t5, zero
                  remu         zero, s2, a0
                  srai         t3, t2, 1
                  addi         s7, a6, 1390
                  remu         s11, a4, tp
                  andi         ra, s8, -989
                  srli         ra, s9, 6
                  srli         sp, s11, 12
                  sra          a5, s7, sp
                  sra          s2, t6, s1
                  div          t1, s9, s6
                  add          gp, a2, sp
                  andi         a1, a2, -1592
                  sll          a1, a2, s0
                  slti         s8, s11, 1103
                  mul          s3, a6, s5
                  add          t5, t6, t6
                  ori          s8, t4, 1781
                  xor          s9, a0, s10
                  srli         s5, s0, 16
                  sra          s2, s4, a5
                  srai         a5, a1, 24
                  sltu         a1, gp, t0
                  srai         s11, s5, 16
                  slt          s6, a0, s11
                  slt          s11, t4, s3
                  andi         s0, s11, 2036
                  lui          t0, 884067
                  ori          s0, a4, -1269
                  ori          s3, s9, 134
                  or           sp, s1, a7
                  rem          ra, gp, s5
                  mulhsu       s6, t5, s7
                  xori         t1, a3, -579
                  divu         a1, gp, s4
                  sra          tp, a7, t3
                  srai         t4, a6, 16
                  ori          t1, s0, 440
                  sra          a0, s11, t6
                  srli         a0, zero, 21
                  add          s3, s9, t0
                  div          a4, a2, t3
                  srai         s6, a1, 18
                  andi         s9, s10, -1784
                  divu         a3, tp, t0
                  rem          a4, t1, t2
                  sll          t0, t5, a6
                  mul          t4, a5, a0
                  sra          s0, a6, s1
                  sll          a5, s6, s2
                  mul          t0, s7, ra
                  slli         gp, t5, 26
                  srl          t6, t1, a2
                  mulhu        s7, s5, s7
                  sll          a2, s2, tp
                  mul          a7, t0, s7
                  slt          a4, t5, tp
                  and          a0, a2, a5
                  mulhsu       t2, a6, a7
                  remu         a2, zero, sp
                  xori         gp, t0, 900
                  rem          t6, a7, gp
                  srli         t2, ra, 7
                  andi         t3, s3, 129
                  divu         s10, t2, t5
                  andi         sp, s7, -360
                  remu         a4, a5, s7
                  auipc        sp, 1028767
                  slli         s11, gp, 28
                  mulh         zero, a0, a3
                  sll          s2, tp, t6
                  sltu         s5, s5, a4
                  sltu         s0, s0, t2
                  rem          a4, a0, a6
                  xor          s11, s4, sp
                  xor          ra, t6, a1
                  srl          a2, s9, s10
                  or           t6, s10, s0
                  rem          t4, gp, a4
                  sll          a1, a4, a7
                  and          a1, s1, s4
                  slli         t4, s7, 30
                  slli         s0, t6, 13
                  add          gp, a1, s11
                  lui          a4, 822016
                  addi         s5, zero, 403
                  srli         s2, a3, 8
                  srai         s9, sp, 1
                  auipc        a5, 469404
                  slli         s5, a0, 17
                  divu         t4, t1, s0
                  srli         s2, s0, 20
                  sub          t5, gp, s9
                  mulh         s11, s9, s7
                  mul          s8, s1, s2
                  mulhsu       sp, tp, gp
                  mulhsu       t1, s9, a0
                  div          a5, gp, a4
                  nop
                  auipc        a4, 990635
                  xori         s8, zero, -2044
                  slt          s2, s2, s1
                  add          t0, zero, s3
                  rem          a1, a2, t3
                  div          zero, t6, s10
                  nop
                  slt          t6, s4, s9
                  rem          a2, gp, a1
                  srli         t0, t4, 12
                  sll          a1, t3, a3
                  add          s3, a1, a7
                  mul          a1, a7, a4
                  ori          a0, s4, -183
                  slti         a3, a7, 1861
                  divu         t1, a3, a6
                  or           t5, a5, s10
                  sltiu        tp, a5, 275
                  addi         a7, s1, -1867
                  rem          s5, t1, sp
                  slli         t3, s0, 3
                  srli         s8, a3, 1
                  mulhu        s8, s3, s6
                  add          a1, a5, s11
                  slt          ra, s3, gp
                  slti         a5, a0, -533
                  ori          a0, s11, 380
                  mulh         a3, s6, s4
                  srai         zero, s11, 11
                  xor          s8, a2, t0
                  and          s7, s10, s0
                  srai         a2, a3, 25
                  divu         s10, s7, a3
                  mul          s8, s9, s11
                  mulhsu       t0, t4, a3
                  remu         s11, zero, a2
                  div          s8, t1, s3
                  rem          s5, sp, zero
                  mulh         a4, a2, a0
                  add          zero, s4, a2
                  andi         ra, a5, 1852
                  mulhsu       t0, a0, a1
                  xori         t1, s3, -1736
                  and          s8, a1, s8
                  mulhsu       s11, a5, zero
                  sra          a0, s3, a3
                  addi         s6, s8, 1949
                  srli         zero, t2, 21
                  slli         s6, a2, 20
                  sltiu        t4, s0, 1873
                  xori         s0, t0, 546
                  slli         s9, t4, 9
                  sll          s7, a2, a4
                  slli         a4, t2, 13
                  sltiu        s11, t0, -521
                  mulhsu       zero, s8, s0
                  srl          t1, s6, t5
                  sltu         t2, s3, zero
                  andi         s2, t6, -922
                  mul          a5, s3, t0
                  auipc        s0, 382821
                  slli         t0, zero, 7
                  mulh         a3, s9, s2
                  sltiu        t3, t3, -180
                  mulh         a2, zero, s10
                  ori          sp, t4, 342
                  divu         a7, t4, t3
                  srli         t6, sp, 31
                  mulh         zero, t6, s2
                  add          s10, s11, t5
                  slt          s7, s0, a5
                  srl          a2, s10, a0
                  ori          tp, t1, 11
                  lui          a3, 41386
                  mul          gp, t6, s10
                  divu         a5, a6, tp
                  slt          s0, s11, a5
                  nop
                  andi         ra, t1, 1446
                  sub          s7, a2, s7
                  sra          t1, gp, t0
                  slt          s9, s10, s0
                  slt          t3, t4, ra
                  divu         a0, t4, t0
                  sra          s6, a1, s9
                  sll          tp, a1, a3
                  nop
                  auipc        sp, 360668
                  div          a2, s0, ra
                  slli         s5, zero, 1
                  rem          a4, ra, s1
                  addi         a3, s7, -590
                  slli         a1, a1, 14
                  divu         a2, s9, s9
                  sra          a7, a7, a1
                  slli         s8, s4, 13
                  divu         t4, gp, t3
                  srai         sp, a6, 11
                  srl          s11, a7, s9
                  or           s2, sp, gp
                  or           s5, a1, gp
                  sltu         s9, s7, t2
                  mulhu        a2, gp, t1
                  srl          s0, ra, a1
                  add          t1, s11, s4
                  rem          s8, t6, a0
                  srl          s10, t6, t3
                  remu         tp, s10, sp
                  and          a4, s5, a3
                  mulh         a2, s2, zero
                  sltiu        a1, tp, -1784
                  nop
                  sll          s9, s7, s7
                  sltiu        s6, ra, 728
                  and          a4, sp, s11
                  sltu         zero, s5, sp
                  sltiu        a1, a0, -1716
                  xori         a4, s10, -737
                  rem          a7, a3, s10
                  nop
                  add          t2, sp, t1
                  sltiu        a1, a1, 273
                  addi         s2, s1, 2036
                  and          s10, a2, s8
                  slt          t0, a6, s11
                  ori          t5, gp, -711
                  slt          a2, s3, s4
                  div          s11, t3, a0
                  mulh         zero, s9, s5
                  lui          a3, 607151
                  sub          s8, zero, zero
                  nop
                  srai         t3, s7, 8
                  mulh         a4, sp, s11
                  mul          s8, a4, t6
                  divu         a0, t0, a7
                  mulhu        t5, a6, t0
                  xor          a7, t3, a3
                  nop
                  sltiu        a3, a3, 579
                  andi         s2, s5, 1006
                  auipc        s6, 995051
                  mulhsu       a1, t0, s10
                  srli         a1, t6, 29
                  mul          sp, s7, zero
                  xor          t0, t0, a4
                  mulh         t0, a3, zero
                  slli         s11, a2, 4
                  sltu         ra, s5, t5
                  nop
                  and          ra, a5, t6
                  sll          ra, s1, a1
                  xori         s3, a4, -1817
                  add          a1, s9, s4
                  mul          s5, zero, t0
                  div          s9, s1, s10
                  slt          sp, s10, s10
                  mulhsu       ra, s7, a0
                  xori         s0, s5, 441
                  remu         gp, s4, a1
                  lui          t1, 318261
                  sltiu        zero, ra, -1254
                  remu         t6, s4, t2
                  mulhsu       a3, t6, tp
                  divu         s10, s9, s7
                  xor          s11, s5, a5
                  nop
                  srai         t4, tp, 2
                  mul          s9, s2, s11
                  addi         a1, s3, -1617
                  mulhsu       a4, t5, s9
                  slt          tp, t4, s11
                  mulhsu       a0, s11, zero
                  divu         s5, t2, a5
                  sll          t4, s6, t5
                  auipc        s0, 802544
                  add          s9, a3, a5
                  rem          ra, t1, gp
                  sll          tp, sp, a4
                  xor          t6, a7, t3
                  sltu         s9, gp, a1
                  add          a1, s5, s6
                  and          ra, t1, s7
                  srli         s6, t5, 18
                  sll          ra, s5, t0
                  add          a3, a7, s3
                  mulhsu       s0, t6, s10
                  divu         s6, s7, s11
                  mulh         gp, t6, a0
                  and          a3, zero, tp
                  nop
                  mulhsu       s6, s11, a6
                  xori         zero, s2, 1185
                  srli         s8, s5, 20
                  or           sp, s11, a4
                  sll          a2, t1, t0
                  remu         t4, s6, t4
                  mulhsu       s2, t3, t0
                  andi         t4, s9, 778
                  slti         a5, t4, 672
                  addi         t5, s6, 857
                  add          s8, t6, s9
                  divu         t0, s0, s4
                  srai         a0, t5, 16
                  nop
                  srli         s6, sp, 6
                  rem          gp, s2, s6
                  or           s10, s9, t2
                  xori         t2, ra, -1059
                  remu         s10, s0, t3
                  mulhsu       s8, t1, s9
                  rem          a0, s11, a4
                  nop
                  slti         t6, t2, -2035
                  sltu         s3, s7, s5
                  mulh         s11, a1, gp
                  auipc        s11, 12711
                  andi         a5, s8, -346
                  and          t5, a2, a0
                  sltiu        sp, sp, -797
                  sra          a2, s11, s7
                  xori         s10, s1, 1644
                  srai         s6, s0, 29
                  sll          s9, s9, a1
                  add          s0, t6, a2
                  remu         s10, gp, tp
                  slti         tp, t1, -1798
                  nop
                  mulh         s6, t2, s8
                  mul          s2, s8, s1
                  sub          ra, s11, ra
                  rem          tp, tp, a3
                  divu         zero, a1, zero
                  or           gp, a6, s0
                  remu         zero, s9, a2
                  sub          s7, s3, t4
                  lui          t1, 134777
                  lui          a3, 251678
                  andi         t4, s2, -1458
                  rem          a5, a2, t2
                  srai         t5, s1, 30
                  sra          zero, t2, a4
                  div          t2, t5, a3
                  srli         a1, t6, 16
                  divu         t1, a1, s0
                  or           sp, sp, ra
                  srl          a1, sp, t0
                  sltiu        ra, t3, -1977
                  slti         s11, a3, 1741
                  sltu         s0, s4, t6
                  mulhu        t1, s5, ra
                  sra          s6, a3, t2
                  nop
                  divu         a4, tp, s10
                  and          s0, zero, s6
                  xori         s10, s11, -1195
                  auipc        gp, 146991
                  xor          t3, s11, a1
                  lui          s7, 815276
                  andi         t6, s2, -397
                  sll          a1, s7, a0
                  xor          a4, gp, a5
                  rem          s2, t2, a7
                  mulh         s5, s3, s3
                  sltu         a7, t2, a7
                  srl          s6, a2, sp
                  mul          s11, s7, s3
                  div          t1, t1, s9
                  srl          zero, s3, s11
                  sub          a2, s1, zero
                  mul          s0, t5, t5
                  mulhu        a2, s6, a6
                  andi         ra, tp, 357
                  divu         sp, s0, sp
                  mulhu        a1, a1, s2
                  slti         a1, ra, 827
                  slt          s2, zero, t2
                  add          s2, t2, s11
                  ori          t2, a2, 946
                  rem          t3, a1, a6
                  slt          t3, s5, t2
                  srli         a4, t2, 29
                  mulh         tp, a7, s0
                  or           s5, tp, s10
                  xori         s8, s5, 791
                  sll          s2, s11, t0
                  and          t4, s9, zero
                  sra          zero, a0, a7
                  sub          a3, a5, t5
                  ori          s3, a6, 70
                  mulh         s8, s5, s11
                  slti         t0, s0, 853
                  ori          s2, a3, -118
                  sll          t3, tp, s9
                  mulhu        a1, s0, s7
                  slli         s10, s3, 24
                  auipc        t5, 13410
                  mulh         s6, s10, tp
                  mul          s9, t4, s10
                  auipc        t0, 492051
                  xor          s11, s10, t4
                  andi         t4, s6, -24
                  mulhsu       s8, a0, tp
                  addi         a0, t1, -1516
                  rem          s8, t3, a3
                  mulh         a0, s8, s8
                  sltu         t4, zero, zero
                  sll          a1, a2, t6
                  andi         s6, t5, 944
                  or           s11, a7, a3
                  andi         a1, a5, 618
                  sra          s7, t5, a3
                  rem          a4, t5, t4
                  div          a7, a0, t1
                  add          a0, t4, zero
                  slt          zero, a4, t0
                  srai         s8, a5, 16
                  ori          s8, sp, -602
                  lui          a4, 588179
                  andi         a5, s9, 451
                  srai         gp, s1, 16
                  ori          tp, t4, 1970
                  divu         gp, s0, s8
                  remu         tp, t4, t1
                  lui          s3, 198560
                  sub          a2, a4, s3
                  mulhsu       s9, s4, t2
                  mulh         tp, t2, t5
                  sub          a3, t3, t4
                  add          a0, a3, a7
                  sltu         s9, t2, t1
                  rem          s5, a7, sp
                  srai         ra, a2, 5
                  mul          zero, s5, sp
                  slt          zero, t1, a4
                  andi         s10, s9, -1821
                  auipc        s11, 199835
                  sub          s5, s2, t1
                  xor          ra, s4, a1
                  slli         s8, a0, 30
                  sll          tp, tp, t4
                  lui          s2, 114076
                  xori         s2, a1, -312
                  ori          s5, a2, 1019
                  lui          t4, 380494
                  ori          t2, a7, -1162
                  divu         a2, a6, a3
                  mulh         tp, t5, sp
                  sll          s8, t1, s11
                  divu         tp, s6, tp
                  lui          a0, 258067
                  mul          a2, s9, s5
                  remu         sp, t1, s4
                  add          t3, s3, t1
                  xor          t6, a5, a4
                  srl          t1, t6, s7
                  mulhsu       a7, s8, s7
                  xor          t5, ra, s10
                  rem          a0, s2, s1
                  add          s9, a3, s0
                  mulhsu       gp, sp, s10
                  srai         a2, a3, 23
                  auipc        a4, 157454
                  andi         a7, s5, -308
                  div          s0, t5, a2
                  sub          a3, s9, t0
                  andi         a3, s5, 1800
                  ori          s7, s8, 914
                  sltiu        t6, s9, 1078
                  srai         s0, t1, 1
                  slli         zero, a6, 8
                  srai         ra, a7, 26
                  lui          t3, 193149
                  xori         t0, a3, 1984
                  remu         a3, a6, a3
                  or           sp, a7, sp
                  sra          gp, t5, t4
                  nop
                  div          s11, s7, a2
                  sltiu        s9, a3, -673
                  xori         s5, t6, -2017
                  or           s2, s8, s9
                  srli         a2, a1, 8
                  sra          a4, zero, a3
                  and          a7, a2, t3
                  sltu         zero, s7, t4
                  remu         gp, s1, a4
                  xor          t0, t0, t5
                  sub          a7, sp, s10
                  slli         s11, a6, 14
                  mulhu        s9, t5, sp
                  andi         t6, s5, 1391
                  slt          t6, zero, t0
                  divu         s6, t2, t3
                  srl          s0, gp, s7
                  addi         a5, s9, 829
                  sltu         s8, a1, a6
                  addi         a7, t5, 135
                  slt          s10, t5, s10
                  sltiu        gp, t6, 1262
                  mulhsu       a0, s1, s5
                  mulh         gp, t1, a7
                  sra          s8, ra, gp
                  slli         s2, sp, 28
                  slli         t3, s0, 29
                  or           t1, a6, ra
                  lui          a5, 542064
                  div          s5, gp, s1
                  sra          t6, s10, a7
                  sltu         s0, a4, s6
                  addi         s10, a6, 91
                  andi         zero, t2, 1536
                  srli         t3, s11, 30
                  mulh         a7, t2, t0
                  sll          ra, s4, t6
                  sll          s11, a3, a3
                  sra          t6, s1, zero
                  nop
                  slli         s7, s9, 22
                  sll          a0, t3, t1
                  mulhu        a4, a3, s8
                  sll          s10, t5, t5
                  add          a0, s11, a6
                  addi         s3, s2, 1776
                  sra          t4, s8, t4
                  nop
                  nop
                  ori          s5, s6, 826
                  xori         s2, s6, -1649
                  sltiu        tp, s0, 1249
                  xori         t6, s9, 1950
                  sll          a3, a2, t0
                  rem          a5, t2, s5
                  mulh         s5, sp, a4
                  sltu         s0, s9, s2
                  xor          gp, a1, a6
                  mulhsu       s0, gp, a1
                  mulhu        t3, a6, t2
                  divu         t6, a5, t5
                  mulhsu       s10, s10, a2
                  srai         s8, s11, 21
                  div          a2, t1, s1
                  remu         t6, t4, a3
                  slt          a1, sp, s2
                  sltu         a1, s11, t0
                  addi         tp, t2, 1798
                  andi         s2, a1, 557
                  srl          t2, gp, t3
                  slti         a0, s11, 1657
                  sub          s9, s5, s10
                  sltu         t6, s1, t5
                  slt          s9, a1, t4
                  ori          a2, a1, -377
                  sub          t0, a5, t6
                  remu         t2, s2, zero
                  sltu         t1, s8, a2
                  slt          a1, s0, a7
                  mulhu        t6, t2, s1
                  mulhsu       a3, s3, s7
                  addi         a2, a1, -348
                  sub          s6, s10, a6
                  ori          s0, a1, 1105
                  slli         t5, t6, 29
                  srai         t1, s5, 21
                  divu         s3, sp, sp
                  srl          s0, a6, s1
                  mulh         t6, s11, t4
                  divu         t2, s2, a4
                  mulhsu       a5, ra, t2
                  srai         ra, t3, 10
                  mulh         s2, t1, s0
                  ori          ra, t6, -1772
                  and          s7, gp, t4
                  xor          a0, t1, s3
                  add          sp, a1, t4
                  mul          a3, t2, a3
                  rem          s2, a0, a3
                  slli         s6, a3, 8
                  add          s2, s3, s3
                  addi         a5, a1, 501
                  xor          s8, s0, a5
                  xori         a3, s1, -430
                  sltu         s10, s5, t3
                  nop
                  mulh         s0, s10, s1
                  mulhu        zero, gp, s7
                  and          a0, s2, a6
                  mulh         s3, t0, a6
                  sltu         s6, s8, a7
                  andi         s3, t5, 579
                  or           zero, s5, a2
                  and          a1, a5, s8
                  sll          t5, t6, a5
                  srai         t5, s4, 23
                  sra          s8, t3, t3
                  mulhu        s8, t6, s0
                  addi         s11, a5, -621
                  ori          s8, a5, 56
                  sltiu        a0, s5, 651
                  or           s7, s4, sp
                  or           t6, s3, s2
                  sra          s2, t2, s4
                  sll          ra, t5, t5
                  ori          t3, tp, -1799
                  remu         t2, t6, s11
                  slt          s6, t5, ra
                  andi         s5, s0, 1517
                  rem          a3, s10, s9
                  rem          t1, s11, sp
                  sra          a4, t1, s8
                  sub          s6, s3, t3
                  mulhu        zero, a0, a5
                  mul          t2, s8, s8
                  nop
                  xor          tp, s4, a3
                  ori          s8, s2, 641
                  addi         gp, a1, -1293
                  remu         gp, s1, ra
                  rem          a7, t2, s1
                  rem          t3, s5, tp
                  sub          s9, s8, s10
                  nop
                  mul          a0, a3, ra
                  sll          s3, s11, a4
                  mulhu        a3, tp, tp
                  auipc        s9, 164536
                  nop
                  sll          s2, a4, zero
                  add          t2, zero, t4
                  mulh         t0, s11, t4
                  slli         s8, a5, 13
                  sra          t2, s3, a4
                  sra          s7, s11, sp
                  or           t0, t6, a0
                  add          s2, a7, a4
                  div          tp, s8, a4
                  and          tp, a6, a6
                  sltiu        a4, ra, -1288
                  lui          a2, 763005
                  slti         s11, s1, -1106
                  slti         zero, s5, 1538
                  sra          t1, t2, s4
                  addi         sp, a4, 1830
                  or           tp, s5, s11
                  slt          zero, s5, a3
                  divu         tp, s5, a1
                  mul          gp, s6, t2
                  mulh         a5, s2, ra
                  divu         zero, t6, s1
                  lui          a2, 367943
                  addi         s3, zero, 1442
                  srli         ra, a1, 16
                  lui          a7, 502791
                  nop
                  auipc        zero, 711285
                  mulhsu       s2, t0, s1
                  mulhu        t3, a6, s9
                  addi         t0, s5, -1851
                  sltiu        t1, s11, -1272
                  rem          t4, s10, t6
                  slli         s9, t4, 19
                  andi         s9, t3, -865
                  xori         t3, a5, 1785
                  div          sp, gp, s2
                  lui          t5, 993003
                  sub          s11, s6, s8
                  mul          a5, tp, s8
                  xori         t2, t1, 1609
                  slt          s9, t5, s3
                  srl          zero, ra, s11
                  xor          s11, s3, a2
                  lui          t4, 168830
                  sltiu        s11, s4, -702
                  add          s2, s4, s10
                  xori         s7, s10, -1408
                  srli         tp, t1, 30
                  addi         t5, s4, -93
                  mulhsu       t2, s8, a0
                  srl          s2, s10, s5
                  add          a3, gp, s0
                  ori          a5, t6, -168
                  sltu         a0, t2, s2
                  xor          s5, a1, a6
                  ori          s10, s4, 1545
                  sltiu        gp, s5, 1488
                  addi         s5, t1, 1806
                  slli         s11, s5, 4
                  srli         zero, s2, 8
                  mulhsu       s6, t6, s8
                  srl          a7, zero, a1
                  srai         zero, t0, 1
                  xori         t4, a1, 201
                  sub          t3, s3, s10
                  sll          tp, s5, s10
                  sll          t3, s9, a4
                  srai         s11, t0, 25
                  mulhu        t4, s0, a7
                  mulhu        a2, a1, sp
                  sub          ra, s3, a6
                  sll          s5, s7, t2
                  rem          s6, gp, t5
                  or           s0, s4, t2
                  add          ra, sp, s3
                  sub          s0, t1, gp
                  mulhu        a4, t3, t3
                  ori          t3, a1, 626
                  sra          a7, s0, s3
                  sra          s7, a6, a6
                  slt          a2, s1, a1
                  sub          a7, s5, tp
                  remu         a1, t3, zero
                  nop
                  sltu         s10, a5, ra
                  srl          a7, a2, t0
                  mulhsu       s8, zero, s10
                  sll          t3, s8, a2
                  slli         a7, a5, 13
                  sra          a7, a1, s6
                  sra          ra, t1, t3
                  ori          tp, a0, -553
                  addi         t2, s0, -793
                  remu         a4, sp, a1
                  addi         s10, t2, -313
                  slt          t3, t1, a1
                  slti         zero, a0, 1729
                  lui          s8, 978971
                  and          a2, s2, a0
                  srai         t1, t4, 1
                  mulhsu       t4, gp, sp
                  sub          t5, s10, s4
                  div          t4, tp, s4
                  add          s10, a6, s8
                  andi         s5, a1, 920
                  div          t2, s1, tp
                  mulhsu       a4, a5, s10
                  or           s2, a0, s4
                  slli         a2, t6, 27
                  sub          a5, a0, s4
                  mul          s8, a7, s1
                  srai         sp, a3, 22
                  srl          s11, s7, s0
                  remu         t4, s0, ra
                  xor          t2, a0, sp
                  and          ra, s1, a3
                  mulhu        t2, s8, t3
                  srl          a4, s2, t2
                  nop
                  lui          a2, 670253
                  srl          a7, t4, a5
                  slt          s3, t6, a4
                  sll          s3, s2, s7
                  srai         s11, s4, 18
                  srai         a2, t2, 28
                  mulh         a7, t2, s1
                  sltiu        t1, s5, -63
                  srai         s7, a2, 28
                  slt          zero, t6, t4
                  ori          a2, a2, -224
                  ori          sp, zero, 1320
                  sra          s3, t5, s6
                  divu         a3, s5, s0
                  nop
                  sltu         tp, tp, s2
                  auipc        t2, 305547
                  sub          s9, t4, t0
                  ori          s6, a7, -153
                  xori         a1, tp, 1111
                  xor          ra, s0, s2
                  srli         s5, s8, 7
                  srli         t6, a7, 9
                  srli         s6, s9, 18
                  ori          s0, t3, 637
                  xor          t2, a3, t2
                  slti         zero, t1, -1125
                  or           s10, tp, a3
                  sra          s5, a4, sp
                  mulh         s8, s3, s11
                  slt          s7, s10, a2
                  sltu         a3, s3, a3
                  mulhsu       s10, a2, tp
                  auipc        s2, 802165
                  and          a4, t2, t4
                  slti         zero, s4, 444
                  mulhu        a0, s5, s4
                  divu         t5, t6, a1
                  srai         a3, a5, 4
                  mulhsu       s11, s7, t3
                  andi         tp, t1, -1200
                  mulhu        s11, s0, ra
                  mulh         a1, a4, a6
                  xor          a5, sp, a6
                  auipc        zero, 561530
                  srai         tp, s2, 23
                  add          tp, t1, s4
                  lui          t3, 766988
                  nop
                  remu         t4, t1, s9
                  lui          t3, 1006410
                  sra          t4, a3, s7
                  lui          t0, 722172
                  andi         zero, a6, -1408
                  div          s0, s0, a4
                  and          ra, t2, a3
                  slti         gp, s9, -1705
                  mul          tp, a6, a1
                  andi         s7, s1, -1193
                  auipc        s0, 889989
                  srli         s9, s11, 11
                  or           a1, a6, t4
                  ori          s8, t1, -1307
                  sub          a5, zero, t4
                  xor          a1, s11, a6
                  addi         s6, zero, 688
                  slt          zero, s2, tp
                  nop
                  slli         t0, a6, 27
                  and          a4, a0, s10
                  slt          t6, sp, t2
                  mul          t0, s1, s2
                  mulhsu       a2, s6, a1
                  auipc        t6, 602957
                  mul          a4, s5, gp
                  mulh         zero, s5, tp
                  addi         t3, a7, -1304
                  addi         zero, a3, -929
                  mul          a4, s7, s7
                  sub          s9, s5, t4
                  divu         t5, t3, s1
                  sltu         t2, s10, a5
                  rem          t2, s9, t1
                  srai         a0, tp, 7
                  or           s6, sp, t1
                  remu         a4, s3, a0
                  mul          a5, a0, s5
                  divu         t5, s3, s0
                  mulh         s10, a1, a4
                  addi         a3, s11, -1904
                  sltiu        s0, t4, 285
                  and          t6, a7, t0
                  mulh         t3, t1, s9
                  divu         a5, s5, a7
                  srai         ra, t3, 13
                  srai         a5, s0, 2
                  divu         s10, t6, t1
                  mulhu        ra, s1, s3
                  xor          a2, ra, t1
                  add          a1, ra, s9
                  mul          s11, a5, a1
                  sub          t1, s11, s3
                  auipc        a0, 641994
                  sub          a5, t4, a3
                  slt          s10, s9, sp
                  mul          zero, s1, t0
                  remu         zero, t3, a2
                  mulhsu       s5, zero, s2
                  remu         s3, s7, a7
                  add          a3, tp, tp
                  srl          tp, s8, s6
                  sltu         t3, s7, s5
                  addi         t6, s9, -596
                  sltiu        gp, s4, 1900
                  srli         t1, s4, 2
                  srl          s0, t5, s5
                  slli         a2, gp, 4
                  ori          t5, s11, -1054
                  srli         t6, ra, 8
                  srai         s11, s1, 1
                  add          ra, t1, t4
                  auipc        sp, 920928
                  add          a1, sp, a5
                  andi         ra, zero, 155
                  mulhsu       a7, s9, t0
                  rem          s10, s5, a0
                  sltu         gp, ra, t1
                  nop
                  andi         sp, gp, 387
                  add          t2, a1, gp
                  div          a3, s10, s7
                  srl          ra, a5, tp
                  addi         t5, t4, 632
                  slli         s8, t3, 0
                  srl          s0, s0, s11
                  and          a1, zero, t0
                  ori          s10, a6, 1601
                  srli         t0, t1, 13
                  add          s11, ra, a4
                  and          s3, a2, zero
                  or           s6, a7, s10
                  auipc        t1, 554680
                  mul          a7, s8, a2
                  addi         a0, a7, 632
                  nop
                  sra          t1, t0, s1
                  auipc        a0, 201630
                  srli         s9, s7, 23
                  slt          s11, s1, a3
                  add          s9, s8, a7
                  xor          s11, t3, t2
                  lui          a1, 252345
                  lui          t0, 624665
                  sltiu        s2, s2, -920
                  slti         t6, t3, -891
                  sub          s3, t4, sp
                  rem          s9, s7, s2
                  xori         t0, s5, 1351
                  andi         t5, a4, -1277
                  slti         gp, s11, -575
                  ori          gp, s3, 1791
                  lui          t3, 758569
                  sll          s10, t5, a5
                  sra          ra, s10, a6
                  and          s0, s4, a4
                  lui          s9, 751292
                  div          a7, a6, s10
                  rem          sp, s6, tp
                  sub          a3, s0, s9
                  or           a4, s11, s5
                  remu         gp, s9, s4
                  and          a3, t6, t0
                  rem          a1, t2, a1
                  sll          t4, s4, s3
                  mul          s6, tp, a0
                  slli         t0, tp, 11
                  auipc        s6, 117018
                  remu         zero, s10, s9
                  rem          t3, s3, ra
                  lui          a0, 748494
                  div          s8, a6, a4
                  auipc        ra, 484582
                  ori          s11, t4, 331
                  slt          t4, s6, s3
                  srli         a3, s7, 19
                  div          s2, s2, tp
                  ori          s6, t5, -925
                  sub          sp, s11, sp
                  mul          a4, a3, s1
                  div          s6, t6, s1
                  srli         a7, tp, 14
                  slti         s2, t3, 2035
                  add          s11, gp, zero
                  sltu         a4, s8, t0
                  and          s10, a0, s10
                  mulhu        gp, zero, s6
                  sra          s0, s9, t2
                  ori          s6, s4, 1333
                  sub          t2, t1, a0
                  addi         s0, zero, -1330
                  mul          t0, a6, ra
                  sltu         t2, s3, s8
                  sll          s9, t5, s0
                  srai         a0, s6, 30
                  srli         gp, t2, 25
                  slti         s5, tp, -1795
                  or           t3, tp, t0
                  mulh         s10, tp, gp
                  xor          t2, t6, a1
                  nop
                  srai         a7, s0, 18
                  sltiu        t2, s4, -1043
                  nop
                  xor          s10, s8, s8
                  and          gp, a4, s5
                  lui          t4, 538225
                  divu         s10, a6, gp
                  slli         s5, ra, 10
                  slli         a4, t4, 26
                  andi         a0, s4, -1798
                  or           s2, a0, t0
                  and          a5, s9, s4
                  slti         s10, gp, -91
                  srl          zero, s11, t3
                  sltiu        a5, a5, 780
                  mulhsu       s11, t0, t2
                  or           t5, s9, sp
                  srli         t6, a4, 23
                  slt          s8, a2, gp
                  remu         sp, t6, s11
                  srl          s11, s7, s4
                  rem          s0, s3, s0
                  mulh         a2, gp, t6
                  rem          tp, s7, a5
                  srl          s7, s0, t4
                  mul          s11, t0, a0
                  addi         s3, s10, -1261
                  add          s7, ra, s6
                  mulhu        a2, t0, a4
                  nop
                  addi         s3, s10, 1867
                  rem          s7, s6, s8
                  addi         s9, a3, -1678
                  sll          s0, gp, t5
                  or           s5, a0, a4
                  mulhu        gp, a7, t6
                  srli         ra, ra, 29
                  srli         s9, a0, 21
                  div          t3, a6, a0
                  slt          t3, t0, gp
                  srli         s0, ra, 26
                  or           a0, a7, s11
                  sltiu        t1, s11, 1326
                  srl          s3, t5, t5
                  remu         sp, a5, t6
                  srai         a7, s6, 31
                  sub          a0, a5, s10
                  xor          a4, tp, a3
                  rem          tp, tp, gp
                  nop
                  xori         a0, s5, 936
                  remu         s9, tp, a0
                  div          s8, s7, a3
                  mulh         a3, s4, t1
                  sltiu        t4, t2, 1533
                  sub          t6, s3, a0
                  sub          a4, t4, s1
                  srai         a1, s0, 14
                  slti         a5, t5, -670
                  addi         t4, a6, 788
                  sltiu        a7, a6, 1102
                  lui          zero, 404738
                  divu         t0, s8, a2
                  andi         a7, a7, 1456
                  sub          a3, ra, a0
                  xori         a3, a2, -1453
                  sltu         t5, s4, t3
                  mulhu        s7, a4, t1
                  srai         t5, s8, 11
                  div          s8, s10, a1
                  xor          t0, s2, t5
                  div          s8, s9, t3
                  lui          s11, 881383
                  sra          s8, t0, t4
                  slli         t5, t2, 17
                  slti         t0, a2, 1758
                  sll          a4, s2, tp
                  mulhsu       tp, s7, gp
                  slt          t2, s4, t6
                  sll          s10, zero, t1
                  div          s2, s2, a6
                  srli         a3, a2, 20
                  divu         s3, sp, t4
                  andi         a4, s9, 1681
                  slt          s6, a3, s6
                  div          s10, s3, a5
                  mul          s5, zero, s6
                  divu         t5, sp, a5
                  mulhsu       ra, s6, a6
                  div          s7, s9, a2
                  mulhsu       gp, a1, s9
                  mul          gp, ra, a3
                  rem          s3, t5, s9
                  or           t5, s9, t6
                  slli         gp, a1, 23
                  nop
                  srl          sp, t2, t4
                  auipc        t3, 35851
                  xori         ra, a0, 1463
                  add          zero, s3, t1
                  mulhsu       s2, s8, s1
                  andi         t3, s9, -1555
                  sltu         s8, s11, s5
                  or           a4, s11, s7
                  srli         zero, a6, 0
                  remu         t4, ra, a0
                  ori          s10, t1, 747
                  mulhu        zero, t6, t4
                  nop
                  slti         a5, a2, 78
                  mulhu        s0, a4, t1
                  sltiu        t0, a3, 1475
                  mul          t5, t1, s0
                  add          s11, a2, s2
                  divu         s6, s8, s11
                  mul          t1, a4, s8
                  div          a5, a1, s6
                  slti         s6, s1, -32
                  nop
                  auipc        sp, 26804
                  add          s6, tp, a4
                  divu         gp, a7, ra
                  srai         s11, s5, 18
                  sub          t6, a2, s0
                  remu         t0, s10, t4
                  xori         a2, gp, -1649
                  sub          a3, s10, ra
                  lui          s7, 122888
                  srli         a2, t6, 9
                  lui          s8, 882145
                  mulhu        a4, s7, gp
                  xor          s9, tp, s1
                  ori          t3, s2, 1177
                  slti         a1, t0, -122
                  sltiu        t1, s5, 599
                  sub          t5, t5, s3
                  lui          t6, 111931
                  mulhsu       ra, a0, zero
                  or           t1, s5, s5
                  nop
                  slt          a4, tp, a2
                  sra          a2, sp, a0
                  sub          s7, tp, tp
                  xor          s3, t6, t2
                  xori         t5, ra, -1361
                  auipc        t6, 175008
                  nop
                  mulhsu       a0, a1, a2
                  div          t5, a6, gp
                  sub          t3, s11, s6
                  addi         s7, a2, 893
                  srl          s9, s3, s3
                  xor          tp, tp, a0
                  addi         tp, a0, -1759
                  or           s5, s10, t5
                  remu         a2, a6, ra
                  mulhsu       s2, t1, a5
                  or           a1, gp, s1
                  slt          s2, a1, s11
                  auipc        s11, 362668
                  srai         a0, s11, 10
                  xor          sp, s1, a7
                  ori          sp, t1, -777
                  auipc        a1, 793107
                  srai         s9, a1, 11
                  sll          a4, s6, s8
                  addi         s6, t0, 52
                  nop
                  nop
                  srl          a3, s1, t5
                  nop
                  xori         zero, gp, 501
                  divu         tp, s1, s6
                  sltu         s9, t2, t2
                  sra          s5, zero, t0
                  mulh         ra, a7, a2
                  mulhsu       sp, gp, a7
                  ori          t4, a6, 1895
                  nop
                  addi         s7, t5, -1348
                  sltiu        s5, a7, -2021
                  sltiu        s8, s11, -849
                  rem          a0, t1, ra
                  div          s6, t5, s9
                  sltu         t5, a1, s9
                  srli         s8, t5, 12
                  sll          a5, s11, t5
                  ori          gp, s2, 1390
                  and          a7, ra, tp
                  andi         s8, s4, -927
                  mulhsu       t0, s7, t0
                  mulhu        s3, s8, t0
                  slti         s9, s9, -1454
                  sltu         a4, sp, s9
                  nop
                  mulhu        s0, t0, s7
                  ori          tp, t4, -429
                  andi         zero, s5, 1386
                  xor          a5, t2, a5
                  slti         zero, t6, 376
                  mulh         s8, s6, gp
                  nop
                  xori         s9, sp, -1440
                  rem          a0, a5, a3
                  mulhu        s3, t2, t2
                  add          a5, s4, t6
                  sub          zero, gp, gp
                  and          s8, a5, t4
                  mulh         a7, sp, a2
                  sub          a7, t6, zero
                  ori          s3, s7, -620
                  mulhu        a1, sp, a2
                  mul          sp, a6, s0
                  rem          s8, a4, s7
                  or           s5, a5, gp
                  mulhu        a3, a2, a3
                  sltu         t2, s6, tp
                  mulhu        a7, s5, s5
                  remu         a1, s8, s4
                  slli         a5, s4, 19
                  and          a1, sp, t0
                  rem          s9, s10, a5
                  addi         t0, t6, 29
                  addi         s5, t1, 894
                  ori          s11, s1, -1355
                  remu         s9, s7, s0
                  lui          s9, 582699
                  xori         a3, s0, -1079
                  remu         a4, a3, s0
                  slli         tp, ra, 9
                  sll          t2, s6, a5
                  mulhsu       a1, a5, a6
                  sub          a1, t0, s3
                  addi         a0, a5, -494
                  lui          zero, 293924
                  addi         t3, s4, 1389
                  addi         zero, a4, 1570
                  and          t1, s11, t6
                  div          a0, sp, s6
                  srai         tp, s2, 23
                  sltiu        a4, t4, -393
                  remu         ra, s3, s9
                  addi         s10, a1, -488
                  addi         a3, sp, -712
                  and          a4, t3, a7
                  div          s10, s4, s11
                  addi         s9, sp, 1193
                  xor          s9, a4, t2
                  sll          s9, s2, t0
                  remu         ra, s0, s6
                  auipc        s9, 324591
                  xor          s8, s8, s8
                  slt          t1, t3, s4
                  srli         s2, s3, 5
                  slli         t4, ra, 12
                  slli         s6, s2, 3
                  nop
                  nop
                  xor          s11, s11, t6
                  mulh         a5, a7, a7
                  xor          zero, s11, t2
                  sub          s6, a4, t5
                  slt          a7, sp, t2
                  mulh         a5, a7, gp
                  sll          t2, gp, s2
                  lui          tp, 432345
                  andi         s11, a3, 168
                  ori          zero, s8, 1957
                  xor          tp, a1, s11
                  ori          t2, t2, -56
                  sltu         t3, t2, s4
                  mul          t6, t3, t2
                  andi         s2, t3, -1808
                  and          t3, t2, ra
                  ori          s5, a6, -271
                  lui          zero, 155938
                  ori          s9, a1, -1386
                  xor          a7, ra, t0
                  mulh         s3, t2, s8
                  xori         s5, a0, -790
                  xori         t1, t1, -155
                  andi         s11, a2, 2037
                  slli         t4, t3, 27
                  addi         t4, s4, 1517
                  slli         s9, a6, 27
                  auipc        ra, 625528
                  slt          s8, sp, tp
                  addi         t0, gp, -1084
                  sub          s8, tp, sp
                  div          t2, s0, s8
                  addi         sp, t0, 1966
                  andi         gp, a6, -2048
                  or           t3, t2, a2
                  srli         zero, sp, 0
                  sltiu        zero, a2, -1611
                  xor          t2, s0, s6
                  sltu         s10, s1, a6
                  and          s11, s3, s9
                  auipc        tp, 882858
                  or           s0, t6, t1
                  add          t3, a0, a1
                  rem          zero, a2, s7
                  mul          s7, zero, t3
                  add          a5, t5, a5
                  mulhsu       t2, s6, s2
                  sltu         a4, t2, s1
                  sub          s5, a1, tp
                  auipc        t0, 596138
                  mul          s2, s2, s7
                  div          s0, a0, s11
                  ori          t1, s8, 1539
                  addi         t6, t5, -154
                  lui          t3, 157553
                  sub          a2, a1, sp
                  nop
                  remu         tp, s5, s2
                  lui          s8, 175801
                  slt          t5, s1, s1
                  xor          a1, s11, s5
                  sltiu        a1, a0, -113
                  ori          s6, a5, 511
                  sub          a1, s7, a5
                  remu         a2, a3, s0
                  srli         a5, a1, 17
                  sub          t1, a5, ra
                  rem          s2, t2, s8
                  remu         t6, a5, s4
                  srai         a3, a1, 7
                  sra          t6, s11, a5
                  sll          gp, s3, zero
                  sltiu        gp, ra, 688
                  mulh         t4, s1, sp
                  mulh         a5, s5, a3
                  slti         a4, gp, 752
                  srli         s2, t2, 3
                  nop
                  auipc        t0, 173440
                  slt          tp, t1, zero
                  addi         t2, s11, -1696
                  xor          s2, a6, s1
                  addi         s9, t5, -843
                  slli         a2, sp, 19
                  mulhsu       a5, a2, a2
                  add          t4, zero, s9
                  add          s6, s1, t3
                  sub          a3, t4, s7
                  and          s3, ra, s2
                  sltu         s0, gp, a3
                  sll          zero, s0, a2
                  mul          t2, s1, s10
                  ori          a4, t2, -1608
                  or           s7, a0, s8
                  srl          s8, gp, gp
                  and          s5, a2, a7
                  xori         s11, s0, 1009
                  auipc        zero, 116092
                  slti         s2, s3, -1229
                  mulhu        s2, s7, gp
                  or           ra, tp, s7
                  xori         s8, sp, 829
                  srl          ra, a6, tp
                  add          s6, t6, a7
                  auipc        s0, 495245
                  mul          ra, tp, a0
                  sra          s0, s6, s4
                  addi         a1, sp, 233
                  mulhu        t3, s8, s8
                  nop
                  andi         gp, a0, 475
                  nop
                  sub          s10, s4, s1
                  remu         t0, t1, s10
                  mul          t6, a0, a3
                  mulhsu       s5, t2, s8
                  srli         t4, gp, 1
                  sra          t1, s0, s7
                  rem          a2, ra, a5
                  slti         s5, s5, -80
                  addi         t5, s8, 1487
                  auipc        s8, 302604
                  remu         s0, a3, s7
                  div          a2, a0, s11
                  nop
                  srl          t2, a0, a7
                  sltiu        s6, a4, 1708
                  xor          ra, t0, a5
                  ori          t5, s3, -621
                  divu         t3, a0, tp
                  ori          t1, a0, 998
                  add          gp, s1, a5
                  slli         s2, tp, 10
                  div          a7, a5, a5
                  sub          s10, t1, a4
                  slli         t4, t2, 27
                  slti         a7, gp, -712
                  mul          a2, t3, s8
                  sltiu        t2, a5, 1724
                  lui          a2, 221546
                  srli         s2, s2, 6
                  add          ra, zero, s0
                  sub          a1, s11, s9
                  xori         s3, a3, -1444
                  srli         s3, s3, 12
                  sll          t3, a4, s1
                  or           tp, t3, gp
                  lui          a5, 830296
                  and          s8, zero, t6
                  slt          s11, t5, t2
                  slt          s7, s6, t5
                  mul          tp, s9, gp
                  xori         t0, a3, 149
                  sub          s2, s3, a1
                  srli         s6, t1, 8
                  xori         a7, a5, 807
                  sltu         s5, a0, s1
                  sra          zero, a3, s10
                  sltiu        sp, a7, 1860
                  andi         s5, ra, -267
                  slli         s3, t6, 0
                  or           zero, s11, a0
                  slli         a1, s5, 22
                  divu         s2, a3, t2
                  or           a3, s10, gp
                  add          s2, t0, s6
                  mul          a4, s5, s5
                  srli         ra, a0, 15
                  andi         t0, t5, -574
                  srai         zero, a2, 2
                  auipc        a0, 912606
                  mulhu        s2, a1, a2
                  auipc        s0, 421198
                  addi         a4, t5, 592
                  sltu         t5, a3, s5
                  sll          t6, a6, s2
                  ori          tp, t2, 1272
                  and          a5, s8, t5
                  add          t5, s2, s10
                  rem          s2, s2, sp
                  srl          gp, s7, t6
                  add          t3, a3, t5
                  auipc        sp, 528381
                  xori         t4, s11, 460
                  mul          t3, s7, ra
                  sra          s7, a2, sp
                  sltu         a3, s0, t5
                  xor          a1, t5, s5
                  srl          t2, sp, a3
                  mul          s6, a1, a1
                  remu         t0, t6, a5
                  srl          s6, s11, s1
                  mul          gp, a3, a4
                  slli         s8, s0, 14
                  xor          s0, sp, t2
                  sltiu        t4, a4, -955
                  xor          zero, s8, t5
                  sub          s10, s8, s5
                  srli         s5, a7, 28
                  div          s0, s0, s2
                  slli         a2, t5, 9
                  slt          tp, ra, a7
                  sub          zero, t5, gp
                  xori         sp, a2, -195
                  auipc        zero, 838446
                  rem          t0, t2, tp
                  lui          t6, 701127
                  andi         s9, t6, -1391
                  sub          tp, a5, t1
                  sltiu        t3, s10, 67
                  xori         t2, t2, -1194
                  srli         zero, t1, 20
                  addi         a3, t0, 1128
                  ori          s7, sp, 665
                  mulhu        ra, t1, sp
                  andi         a4, t3, 2029
                  sltiu        gp, s6, 599
                  mul          s7, s3, s2
                  mul          a1, gp, s5
                  auipc        t1, 472584
                  sltu         a5, a7, s4
                  mulh         a0, s6, sp
                  addi         tp, s6, -676
                  sra          s11, gp, a1
                  divu         t6, zero, ra
                  xor          s2, s11, s1
                  sltu         zero, a7, a0
                  slli         s3, t0, 6
                  div          a1, a0, t5
                  rem          s7, sp, a1
                  srai         s8, t3, 26
                  slt          t5, a6, t1
                  srli         t3, zero, 15
                  mulhsu       a4, gp, t6
                  divu         t0, a6, t4
                  andi         a5, ra, -1882
                  xori         a1, s8, 1194
                  xor          ra, s1, gp
                  lui          ra, 51995
                  nop
                  andi         t0, s6, 1542
                  or           s10, a4, s7
                  mulhsu       t6, zero, s4
                  slt          tp, s4, s2
                  divu         t6, s7, s4
                  lui          s2, 4492
                  sltiu        tp, a5, 271
                  slt          ra, zero, zero
                  sltu         a0, a1, s6
                  or           t0, ra, t5
                  andi         t1, a3, 452
                  lui          a1, 763397
                  srl          s2, s0, s5
                  sll          t6, zero, t0
                  mulhsu       s8, t0, s9
                  xor          t3, t0, gp
                  sltiu        t3, a6, 44
                  srai         a4, t4, 24
                  addi         s6, a0, -1356
                  rem          t4, a7, sp
                  divu         s7, s0, sp
                  xor          s5, gp, a1
                  mulhsu       t4, a6, s7
                  srli         s6, sp, 3
                  mulhu        gp, sp, s2
                  srai         t1, a3, 15
                  ori          s10, s2, 196
                  sra          t3, t4, tp
                  remu         t5, a5, a2
                  mul          gp, t4, s4
                  xor          t1, a1, s4
                  remu         a5, s6, s4
                  sub          s7, ra, s5
                  div          t6, a6, t6
                  srai         s6, ra, 4
                  slti         t0, a3, -1575
                  sub          sp, s7, s9
                  rem          s5, s8, s8
                  xori         t4, t2, 207
                  sltiu        s5, s2, 1658
                  rem          a7, tp, s9
                  sltiu        a3, s9, -1777
                  rem          s6, gp, s0
                  srl          s2, t5, s4
                  xori         s6, a0, 1520
                  nop
                  rem          s2, a4, a7
                  xor          zero, s10, a3
                  mulhsu       s9, sp, a7
                  addi         s3, s11, -179
                  nop
                  mulh         t1, ra, s9
                  mul          gp, sp, a0
                  lui          ra, 716193
                  auipc        t6, 822511
                  slti         tp, s1, -1218
                  lui          a5, 998817
                  srli         zero, s7, 23
                  slt          zero, zero, a0
                  srl          ra, s8, s8
                  andi         t6, t0, 879
                  sub          ra, t2, gp
                  add          a7, a2, s5
                  slli         ra, s0, 28
                  mulh         sp, a6, zero
                  mul          a0, s7, a2
                  and          s8, s6, s5
                  add          s5, s1, a6
                  xor          s6, a7, s3
                  addi         tp, s7, -1132
                  srl          a2, s7, ra
                  rem          t2, zero, a5
                  sltu         a1, s3, s7
                  add          s2, t4, s0
                  srl          a0, gp, a0
                  auipc        t4, 513511
                  lui          a5, 544194
                  mulh         t4, t3, a5
                  divu         t0, s9, s3
                  andi         s9, t5, 952
                  srl          s3, s1, tp
                  lui          zero, 971188
                  ori          a3, s5, -1192
                  nop
                  rem          a3, t6, t1
                  slti         t3, a1, -510
                  rem          ra, a5, a3
                  andi         s6, a6, 1114
                  auipc        a5, 708997
                  remu         a7, t2, a4
                  ori          s7, ra, 495
                  auipc        s9, 698748
                  srai         t0, s5, 20
                  divu         a7, s10, s2
                  andi         t2, gp, -472
                  remu         a7, s11, s6
                  slt          a2, s3, s0
                  sra          a3, t3, t3
                  sltiu        a1, t6, -57
                  sltiu        t3, a7, -1485
                  lui          s7, 811279
                  sub          tp, t0, t0
                  xor          zero, a6, s6
                  addi         gp, s0, -1120
                  rem          tp, a4, t2
                  nop
                  ori          s5, s6, 1970
                  sll          a2, a7, t2
                  xor          t4, s0, zero
                  divu         t6, s10, s2
                  sltu         a3, s0, t4
                  srli         tp, sp, 30
                  mulhsu       s11, s9, t6
                  sll          s5, a1, zero
                  divu         t3, s2, t5
                  auipc        t0, 300908
                  remu         a0, t1, sp
                  mulhu        s5, s3, a6
                  xor          a2, t1, s8
                  addi         t1, t3, 1595
                  sltu         zero, t3, s9
                  srli         t4, s11, 12
                  sltiu        a0, sp, -774
                  xori         a4, s4, -191
                  srl          a5, s10, tp
                  lui          sp, 293171
                  andi         tp, t0, -1329
                  divu         s6, a7, a4
                  div          s5, s2, gp
                  sll          s9, s8, a2
                  auipc        a3, 113298
                  auipc        tp, 455516
                  or           s2, s5, tp
                  divu         s2, s6, a7
                  srl          s7, a6, tp
                  mul          zero, s2, ra
                  srl          t0, s3, a4
                  div          s10, t4, a3
                  sra          a5, t5, s3
                  slli         t4, a6, 18
                  slt          a3, s10, s7
                  add          s8, s0, t3
                  sltu         sp, a5, s11
                  or           s6, s10, s3
                  or           a4, s0, s11
                  xori         t2, s9, 169
                  lui          t6, 844144
                  slt          t6, t4, t4
                  slli         ra, t6, 16
                  mul          s0, t0, s6
                  sll          tp, t5, s3
                  mulhsu       a7, a6, t3
                  sltiu        s8, gp, -835
                  auipc        s0, 129477
                  xor          s10, a2, s10
                  sra          a0, tp, s6
                  slli         s9, ra, 24
                  xori         a1, t2, -613
                  mulhsu       a2, zero, s9
                  xori         ra, t5, 1980
                  ori          s0, t5, 1184
                  xor          s7, a2, s9
                  xor          t1, t3, a0
                  slli         s5, ra, 15
                  slti         a5, s7, 14
                  mul          t4, s11, s0
                  slt          s9, s9, a2
                  sltiu        s9, t4, -1670
                  div          s2, t5, s5
                  srli         sp, tp, 27
                  remu         t1, s6, a3
                  xori         tp, a3, -374
                  andi         s6, t1, 1633
                  add          ra, s0, t2
                  addi         s7, s2, -1528
                  srai         s8, a6, 20
                  lui          s2, 918165
                  slt          t0, a5, s1
                  xori         s11, s0, -350
                  mulh         a4, a3, s3
                  sra          a7, a3, a3
                  remu         t0, t3, s6
                  sra          t4, s1, gp
                  mulhsu       t5, tp, s7
                  slti         s8, sp, 1801
                  sub          gp, s4, s8
                  or           a4, s5, a1
                  slli         a0, s10, 16
                  sra          a3, s4, s2
                  mul          a5, ra, tp
                  and          s2, tp, s8
                  mulhu        a7, a1, a6
                  divu         a7, s2, ra
                  auipc        s6, 48058
                  lui          tp, 475334
                  sltu         t6, t0, s6
                  divu         t3, ra, t0
                  slt          s7, ra, sp
                  sltu         ra, s8, t1
                  or           t3, a4, zero
                  slt          t6, a5, s1
                  srl          zero, a5, t6
                  rem          s9, a1, s7
                  nop
                  xori         s7, t2, 1033
                  mulh         t3, s10, s1
                  sub          a4, tp, a6
                  div          s5, t1, t3
                  mul          t4, s6, t3
                  mulh         sp, a3, s8
                  and          a1, gp, ra
                  xor          s10, s10, s10
                  div          a4, s2, tp
                  slti         a0, a5, 1192
                  mulhsu       a7, a6, t3
                  slti         t1, zero, 284
                  sltiu        s2, s8, 1924
                  sra          t2, s5, s3
                  srli         s8, s2, 2
                  srli         t6, a5, 23
                  ori          a0, a2, 1545
                  srl          ra, s2, ra
                  lui          t4, 564693
                  mulhsu       a5, a3, a2
                  srai         s2, s1, 19
                  sltu         s3, a7, t1
                  srl          t2, t5, s0
                  sltiu        zero, s3, 1174
                  sll          s5, a0, s11
                  sltu         t2, sp, a2
                  sll          t4, s7, s10
                  rem          s7, t3, a7
                  andi         a2, t4, 1455
                  slt          ra, a2, t0
                  sltu         s2, gp, s7
                  slli         a3, ra, 18
                  andi         s3, t0, -190
                  xori         t1, s2, -134
                  sll          a5, sp, ra
                  or           t5, a0, a0
                  sltiu        gp, tp, 220
                  srai         a7, s2, 20
                  mulhsu       s6, s0, t1
                  slt          s3, t5, a1
                  rem          t0, t3, t2
                  div          a4, a6, t0
                  xor          a3, tp, s6
                  mulhsu       t3, a0, t3
                  auipc        a5, 375087
                  xori         gp, s6, 495
                  ori          t3, s4, -240
                  rem          s2, s10, s8
                  srai         t3, a1, 22
                  remu         s8, tp, s2
                  rem          s6, s9, s9
                  and          s9, t2, s10
                  or           a2, s9, s2
                  and          t4, a3, s0
                  slli         a4, a3, 29
                  divu         s8, s3, tp
                  remu         s11, s7, tp
                  slt          t1, t6, t6
                  nop
                  sltu         s5, t6, a7
                  divu         t2, s5, s6
                  mulhu        a5, a0, s8
                  sltu         t3, t2, s2
                  sltu         s3, s10, t6
                  mulhsu       s8, gp, a2
                  lui          a0, 888246
                  lui          tp, 935250
                  auipc        s5, 586349
                  srli         s6, t2, 15
                  auipc        t4, 952827
                  auipc        t2, 89448
                  srai         s10, sp, 7
                  xor          s9, s7, ra
                  rem          t3, s7, ra
                  slti         tp, a0, 184
                  nop
                  nop
                  div          t4, s4, s6
                  mulhsu       s2, s7, a7
                  xori         t5, s1, -313
                  auipc        s8, 33038
                  srli         t4, t5, 18
                  xor          s9, s0, a0
                  divu         s8, s8, s9
                  srl          t6, s1, s6
                  sra          a7, tp, s11
                  srl          a0, a7, t0
                  sltiu        a0, t2, -525
                  nop
                  slli         a2, a2, 24
                  slti         tp, t6, -1789
                  sltu         ra, s2, t3
                  add          a5, a0, t0
                  or           t0, s7, t6
                  srl          t5, tp, s6
                  lui          a7, 718223
                  or           t0, a2, s11
                  mulh         s6, s5, s9
                  and          s7, s3, s9
                  slt          t6, ra, s6
                  andi         s2, s2, -705
                  remu         s9, t3, gp
                  rem          t6, sp, a2
                  sub          s0, t0, s0
                  mulh         zero, s7, t1
                  or           t6, sp, s10
                  ori          s5, s7, 1909
                  slli         t6, t5, 9
                  srai         s8, t3, 7
                  mulhsu       s2, s9, t2
                  nop
                  remu         s5, t5, a7
                  xori         a1, s10, -1267
                  mulh         a3, a6, t4
                  sltiu        gp, s11, 1620
                  mulhsu       s7, t2, s0
                  lui          s10, 896934
                  ori          s2, t3, -2024
                  xori         s11, t5, 404
                  and          a4, ra, ra
                  mulh         s6, s8, t0
                  slt          s7, t6, a0
                  slti         a1, a5, 969
                  sltiu        a0, ra, -1702
                  srli         t6, a0, 1
                  andi         t5, s8, -1573
                  mulh         t2, s11, s5
                  sra          t5, s3, s6
                  sra          t2, a2, s7
                  and          a1, s7, a7
                  or           a7, s11, t6
                  sltiu        s6, s9, 1018
                  ori          gp, zero, -1747
                  div          t4, t2, t3
                  sltiu        gp, a6, 111
                  slti         s8, sp, 554
                  slli         s10, a5, 10
                  divu         a1, s6, t0
                  addi         s2, s9, -104
                  srai         tp, s10, 19
                  addi         ra, t2, -1804
                  sll          s11, s9, a6
                  xor          t1, tp, s0
                  rem          tp, a6, a3
                  add          t1, s0, s3
                  addi         ra, t4, -1760
                  sltiu        s10, t5, 1168
                  sra          ra, tp, s9
                  and          ra, a6, t4
                  divu         t4, a0, s3
                  remu         t5, s5, s6
                  addi         t1, s5, -1298
                  slt          s2, t3, s4
                  auipc        sp, 841271
                  xori         gp, a5, 1620
                  nop
                  sll          tp, s4, s6
                  sra          t1, t1, gp
                  lui          s8, 510845
                  sltu         sp, a2, a2
                  divu         s6, s6, t6
                  sra          a3, t5, s9
                  div          s10, s6, t6
                  sltiu        s10, s3, 299
                  mulh         a7, s8, s3
                  mulhu        s6, a0, s7
                  nop
                  sltiu        s8, s1, -107
                  and          zero, s1, a6
                  sltiu        a7, s10, 1930
                  xor          a0, t5, a2
                  rem          a2, t3, ra
                  sra          a4, s9, t1
                  slt          s0, t6, a2
                  mul          s0, s6, a3
                  srai         a3, s2, 24
                  remu         s3, a2, s5
                  slli         a7, a2, 18
                  auipc        t0, 88344
                  srli         a0, s8, 28
                  divu         zero, a7, a2
                  sub          t0, sp, ra
                  slt          a2, t4, t6
                  auipc        t3, 766395
                  slli         t6, s7, 9
                  slli         tp, s9, 14
                  ori          t6, a1, 430
                  addi         s5, t3, 664
                  srai         t0, s6, 26
                  xor          s2, t4, s0
                  srai         zero, s4, 18
                  sll          t4, s10, s2
                  nop
                  addi         s5, s9, 339
                  srai         a0, t3, 16
                  mul          a4, s10, a4
                  sll          sp, s6, t6
                  divu         a0, s4, s11
                  srli         a5, s4, 14
                  or           s11, ra, t0
                  addi         a3, s1, -695
                  div          a1, s6, a4
                  nop
                  sltiu        sp, a5, 1812
                  lui          t4, 797845
                  mulhsu       t3, t2, s7
                  sub          t2, s5, t1
                  sra          s2, t6, ra
                  mulhu        a2, a5, t2
                  mulh         zero, s4, a2
                  sltu         a0, a0, a2
                  addi         t2, s6, 464
                  ori          s11, s6, -1566
                  srli         a7, t2, 30
                  sub          s9, a4, a1
                  and          s7, t6, a4
                  andi         a7, s6, -1544
                  sll          a2, s6, zero
                  divu         gp, t4, ra
                  or           s11, s0, t3
                  ori          a0, t6, 298
                  addi         t6, a2, -1173
                  srai         t5, sp, 22
                  or           t1, t2, s6
                  mulhu        a1, s8, a2
                  sra          t2, s8, t3
                  srai         s2, t3, 14
                  and          a0, s4, a1
                  rem          t2, s3, t2
                  lui          a3, 608820
                  slti         t2, t1, -120
                  and          s9, a1, a0
                  xori         sp, tp, 1470
                  sltiu        sp, t4, 1459
                  mulhu        a4, s0, s3
                  div          s10, zero, ra
                  srai         t1, a3, 23
                  srli         s11, ra, 22
                  srai         a1, s7, 7
                  divu         s11, s11, s8
                  nop
                  nop
                  slti         t4, s2, 464
                  slti         gp, tp, 883
                  sub          s9, tp, s1
                  srai         s7, s1, 6
                  mul          t5, gp, tp
                  srl          a3, t0, a7
                  auipc        s2, 508260
                  sltu         ra, s4, s2
                  slt          ra, a0, a7
                  mulhu        s3, gp, a4
                  sll          a2, sp, a7
                  lui          t3, 49454
                  divu         a7, s5, s7
                  xori         s6, s10, -354
                  mul          s9, s7, a1
                  srl          tp, a2, a7
                  xor          s5, s10, a6
                  addi         a7, a4, -1184
                  remu         sp, s11, t2
                  add          zero, a4, a7
                  remu         s3, t1, tp
                  mul          s0, s3, s4
                  nop
                  srai         a5, t6, 22
                  rem          t2, s0, a0
                  mulhsu       tp, s11, a4
                  remu         a0, gp, s0
                  slt          a0, s2, zero
                  mul          s6, t1, s10
                  mulh         a0, a0, s1
                  srai         s2, ra, 23
                  sltiu        t0, s5, -1869
                  lui          s6, 125451
                  rem          t4, ra, a5
                  lui          s5, 143070
                  addi         s11, t3, 2042
                  remu         t1, t3, t0
                  addi         t2, s2, -1683
                  divu         t5, a4, s4
                  and          t0, sp, t1
                  div          s5, s4, a7
                  sra          t1, a0, s5
                  mulhsu       s5, t6, s0
                  srl          s11, a1, a2
                  sub          s3, s8, s7
                  slt          a4, s5, a1
                  slti         t3, a3, 1491
                  div          s3, t4, tp
                  srai         s5, s11, 19
                  xori         t2, s0, 978
                  divu         gp, s3, s3
                  sra          t3, zero, ra
                  sltu         t3, tp, t0
                  sltiu        s2, s3, -344
                  ori          t3, gp, 1959
                  xor          s5, ra, s2
                  addi         s8, zero, 894
                  slti         a5, t4, 1695
                  srai         s8, a3, 20
                  mulh         t3, s11, a6
                  mulhsu       s10, t1, s10
                  divu         a1, s9, s9
                  slli         t3, s4, 24
                  addi         tp, s10, 1594
                  sltiu        t5, a3, 168
                  srai         s3, s3, 9
                  and          gp, s10, gp
                  slt          t0, s7, s4
                  add          s11, t4, t4
                  mulhu        t5, s10, s9
                  xor          t0, t0, s5
                  mulhsu       a4, a5, s11
                  addi         t2, s0, -669
                  slti         s10, s7, 694
                  nop
                  mulh         a0, a5, s9
                  mulhsu       s6, s4, s2
                  mulh         s11, t0, a3
                  add          s5, t1, a4
                  sltiu        t5, t3, -1556
                  mul          a3, s7, t1
                  xor          s2, a1, s6
                  div          zero, zero, s3
                  mulhu        s0, sp, zero
                  mul          gp, a0, a0
                  and          s10, s2, s10
                  sltiu        gp, tp, -749
                  mulh         t5, t3, ra
                  sra          s0, t2, tp
                  lui          s9, 291661
                  ori          s8, s0, 2041
                  remu         sp, ra, sp
                  slti         s8, a2, -1815
                  lui          s0, 670750
                  srli         a3, s2, 12
                  and          t3, s5, a0
                  mulhu        t5, a1, s5
                  remu         s3, t2, s3
                  mulh         s2, ra, s7
                  ori          s7, s2, 1763
                  remu         s0, s7, sp
                  slli         t0, a7, 21
                  sltiu        s3, a6, 1108
                  mul          t4, a2, zero
                  srl          s5, s9, s5
                  slli         t3, s0, 6
                  mulhu        ra, s9, sp
                  mulhu        s0, s8, a0
                  mul          a7, s3, s7
                  mulh         s5, a0, t5
                  divu         t2, t4, sp
                  slli         s2, t2, 2
                  slti         sp, s5, 1974
                  srai         t3, a3, 23
                  nop
                  mulh         s5, a5, t3
                  addi         s11, t4, -197
                  andi         a2, s9, -977
                  add          s3, s10, s2
                  srl          ra, s4, t5
                  srl          s10, a2, s0
                  addi         sp, s3, -1593
                  sra          ra, tp, a4
                  rem          a3, s8, t4
                  mul          s7, a5, a5
                  auipc        s11, 42870
                  mulh         s8, a7, s11
                  sra          a4, t1, t6
                  sll          gp, t4, s4
                  mulhu        t1, s6, t3
                  slli         ra, s2, 14
                  ori          a7, s4, 296
                  xori         s6, t4, -841
                  srl          s0, s9, t5
                  sltu         s9, a5, sp
                  xor          ra, s8, s2
                  addi         s5, zero, -31
                  add          t3, s9, s5
                  slti         a7, s5, -1901
                  divu         a2, s0, a5
                  sltu         s0, tp, s2
                  and          tp, a5, s5
                  sltu         zero, s8, t2
                  andi         t6, a5, -1430
                  srl          a7, a1, t0
                  slt          t3, s3, t4
                  ori          s9, a0, -1246
                  rem          t6, s4, t1
                  or           s2, t0, s8
                  srl          ra, s6, zero
                  sll          sp, t2, s8
                  xori         t4, s0, -1189
                  srli         sp, t3, 10
                  lui          s10, 560382
                  add          a2, s1, zero
                  add          s11, s2, zero
                  mul          s10, zero, a0
                  srli         s8, a7, 9
                  srl          a0, t5, t6
                  srli         a7, a1, 8
                  mulhu        s8, a0, a1
                  remu         s2, s6, a2
                  addi         t0, a5, -999
                  mulhsu       s8, a5, s2
                  add          a1, t4, zero
                  sra          t5, sp, zero
                  sltu         a5, s10, s8
                  mulhu        s11, s10, t0
                  or           s5, s10, s0
                  xori         s11, s4, 537
                  remu         a1, a1, s2
                  sltiu        a5, s10, -884
                  nop
                  slli         ra, a5, 29
                  sub          s2, s11, s9
                  lui          t3, 487537
                  divu         t1, t4, t5
                  mulhu        s10, s10, ra
                  slti         sp, t0, -1589
                  slt          t5, tp, a5
                  srai         t0, s2, 11
                  xori         a2, a7, -1326
                  remu         a3, t6, s11
                  mul          a1, s0, a5
                  slt          a7, t4, s0
                  sub          t2, t4, t2
                  lui          ra, 561023
                  ori          a3, s11, -2007
                  mulh         t0, a6, t2
                  divu         a4, t0, s5
                  sub          t3, a7, s5
                  sub          a2, s7, s1
                  slli         a5, s9, 25
                  or           a7, s5, gp
                  xori         zero, t0, -980
                  slt          s0, a2, gp
                  add          s0, s10, s11
                  divu         t4, a4, t5
                  sltiu        s9, s7, 1606
                  srli         s8, t2, 21
                  srl          a4, a3, s0
                  mulhsu       s2, a1, tp
                  add          s5, s2, s0
                  div          s7, s10, t1
                  srl          s11, s7, s7
                  slt          s3, a7, a0
                  sltu         s11, s5, t3
                  rem          t0, tp, s10
                  srli         s6, s10, 5
                  remu         t2, s9, a6
                  slti         ra, s4, 963
                  and          s8, s3, a6
                  slli         s6, a5, 1
                  sltu         a4, a7, s8
                  srai         sp, s8, 8
                  mulhu        a7, s9, s4
                  sltiu        a5, t3, 1351
                  mul          s9, s0, s3
                  srl          t6, a0, s0
                  rem          s6, a7, s9
                  mulhsu       s7, t4, s0
                  addi         t3, s3, 1441
                  sltiu        s9, a4, 320
                  sra          t3, s3, s4
                  remu         a4, tp, s8
                  divu         t4, s6, s11
                  nop
                  mulhsu       a7, a0, gp
                  addi         s8, t4, -1911
                  ori          s5, a0, 973
                  xor          s0, s4, s7
                  divu         a0, a0, ra
                  xori         a4, a2, -1213
                  auipc        t5, 508398
                  mulhu        t4, t3, sp
                  divu         s2, s8, s0
                  srl          s0, s0, s0
                  srl          s6, t1, a3
                  remu         s5, a4, t0
                  nop
                  srli         ra, s0, 0
                  srai         s7, a7, 5
                  divu         t2, a4, s4
                  sra          a3, s4, s10
                  mulhsu       a5, t4, t0
                  or           t2, s10, s11
                  xori         a2, t3, -1994
                  ori          s11, s8, -1373
                  auipc        zero, 320889
                  add          t1, s10, s1
                  xori         t4, t4, 2038
                  andi         s2, s4, -838
                  and          t3, t6, s5
                  lui          a0, 568062
                  sll          t2, t4, s4
                  andi         sp, s11, 386
                  slt          tp, s0, s9
                  add          gp, zero, s5
                  addi         s10, s3, 1686
                  sltiu        a4, a2, -799
                  ori          s2, t6, 1681
                  sll          t1, s1, a5
                  mulhsu       s6, s10, a0
                  srli         tp, t3, 17
                  sltu         a7, a0, s5
                  and          s10, t4, s8
                  srl          sp, s5, a6
                  slt          zero, s7, a2
                  xori         a3, s4, -27
                  xori         a0, s6, 363
                  rem          a5, s6, s6
                  sll          sp, t5, a2
                  xor          s11, zero, gp
                  nop
                  mulhsu       a5, t2, t1
                  lui          s11, 122706
                  srai         s3, t3, 31
                  and          a2, s4, s3
                  rem          t2, ra, t0
                  mulhsu       t5, s6, s1
                  lui          s9, 1018593
                  mul          s9, s11, s2
                  divu         s8, a1, s4
                  xor          sp, s3, gp
                  addi         tp, s4, -725
                  slt          t2, s9, s0
                  remu         gp, s4, t2
                  divu         t3, s8, s3
                  sll          a7, a7, t6
                  sra          s6, zero, s7
                  srai         s11, gp, 1
                  mul          a7, s9, t0
                  slt          s3, gp, a2
                  auipc        s10, 429556
                  slli         a0, s7, 24
                  sltiu        s5, s8, -1542
                  remu         zero, s8, t2
                  mulhu        s7, s8, s4
                  mul          s3, s2, s3
                  div          t5, a5, tp
                  add          a3, t4, s3
                  srl          t6, a1, s5
                  remu         t3, a7, a1
                  rem          s7, a7, zero
                  sltiu        a4, s1, -386
                  xor          t0, s2, s4
                  and          t3, s0, s4
                  divu         a4, t2, t4
                  add          s6, a2, s2
                  sltu         s7, a3, gp
                  srai         t0, t6, 30
                  slt          a3, s10, sp
                  sub          tp, sp, t3
                  lui          zero, 637044
                  slti         s3, gp, -1442
                  sub          a4, t6, a3
                  andi         s8, t3, -1364
                  rem          t3, s0, s11
                  and          s10, tp, zero
                  sra          a7, s3, s1
                  sltiu        a1, t3, 1704
                  sll          a5, s7, s0
                  sll          gp, s4, tp
                  remu         s7, zero, s2
                  sra          zero, ra, tp
                  andi         t4, ra, 961
                  add          s0, s1, t0
                  nop
                  mulh         s7, s2, s5
                  xori         s3, t4, 1719
                  remu         s5, ra, s10
                  sra          zero, s6, a4
                  srli         a1, s10, 27
                  remu         s2, s7, a1
                  slli         a3, s3, 10
                  andi         s11, s4, 404
                  and          t4, t1, zero
                  mulh         s2, zero, a7
                  xori         t3, s3, 913
                  mul          t4, s7, s4
                  remu         t4, a0, t6
                  sltu         t1, a2, tp
                  auipc        t2, 1010366
                  sltiu        s8, t4, 1298
                  sra          a1, s1, t5
                  rem          gp, s4, s10
                  xor          tp, s9, zero
                  slt          a0, t4, a7
                  xori         sp, ra, 1957
                  slti         zero, a0, 1877
                  sub          t5, s10, t6
                  nop
                  xor          s11, a7, t2
                  sltiu        s2, t0, -628
                  div          s3, a6, sp
                  xori         a0, a0, 1414
                  mulh         s2, s8, zero
                  lui          a5, 940466
                  auipc        a3, 146023
                  nop
                  addi         a4, t3, 1896
                  srai         t5, a7, 17
                  mulhsu       a3, s0, t5
                  divu         s6, s2, t3
                  auipc        s0, 770158
                  slt          t6, s4, t3
                  sub          zero, a4, t0
                  xori         zero, a2, 1435
                  mulhu        s6, t0, a3
                  auipc        s3, 237427
                  ori          a1, a3, -941
                  auipc        a7, 978416
                  lui          t6, 206205
                  xor          a4, a5, a1
                  addi         a3, a3, -979
                  xor          sp, a5, t3
                  nop
                  or           a5, a2, s3
                  and          s7, ra, a4
                  slli         s5, t1, 20
                  slti         ra, a1, -1726
                  sltu         s6, t1, a2
                  mulh         s10, s6, s7
                  srai         s3, t4, 30
                  andi         s9, a0, -1492
                  sll          s2, a3, t2
                  sra          s0, s3, t1
                  sltu         s10, a6, gp
                  ori          a1, a0, 334
                  addi         t3, zero, 316
                  ori          gp, a0, -802
                  mul          a0, s6, s6
                  sll          t2, a4, sp
                  and          tp, a2, a6
                  andi         t0, a5, -924
                  nop
                  divu         s11, s7, s0
                  auipc        tp, 897900
                  slt          s11, s11, t4
                  xori         a3, s4, 1208
                  mulhsu       s7, s11, a0
                  slti         zero, tp, 1888
                  mulh         t2, tp, a4
                  sltu         t0, s10, sp
                  sra          s2, t6, t5
                  addi         s8, t3, -1679
                  addi         gp, t6, -787
                  xor          s9, ra, tp
                  ori          s2, s1, 1884
                  lui          s2, 821585
                  ori          a4, a6, -829
                  sltiu        a7, s6, 187
                  mulh         a3, t2, a2
                  remu         ra, t4, s0
                  or           gp, t3, s3
                  mulh         s5, s0, s3
                  nop
                  srai         s2, ra, 29
                  rem          s10, s4, a4
                  mulh         a2, t3, s3
                  ori          s7, a6, -1606
                  ori          ra, t2, 1793
                  remu         a3, zero, s3
                  andi         ra, s5, -2035
                  srli         a3, a0, 13
                  addi         s2, t3, 546
                  div          sp, s3, s6
                  srl          a3, t0, t5
                  srai         gp, a4, 14
                  sub          a3, a1, zero
                  mulh         ra, s4, t0
                  lui          s3, 862421
                  slt          tp, t6, a5
                  slti         s2, s3, 1429
                  srli         s0, t6, 25
                  sltu         a1, s5, s9
                  mulhsu       s5, s9, a7
                  div          zero, t0, ra
                  mul          s8, s9, sp
                  rem          zero, t4, s11
                  sll          s8, a3, a5
                  divu         t4, s5, s2
                  sub          a2, a1, zero
                  sltiu        s5, s3, -1117
                  and          s2, s11, s5
                  lui          s5, 988011
                  rem          tp, s8, ra
                  andi         s7, t6, 745
                  slt          ra, t6, t4
                  sltiu        t1, s8, 1481
                  lui          zero, 141510
                  mul          a7, s2, gp
                  sll          s5, t6, tp
                  addi         t2, zero, 2027
                  slti         tp, gp, -1304
                  lui          s0, 450068
                  auipc        t0, 297339
                  sll          t0, a2, tp
                  sra          t6, t3, t0
                  mul          a4, a5, s7
                  lui          s9, 176384
                  div          s0, sp, zero
                  srli         s0, s2, 1
                  and          ra, t2, t1
                  xori         s10, a6, 1718
                  div          s2, s1, s1
                  mulhsu       a0, t2, a6
                  srai         a5, s3, 9
                  slt          a1, s9, t5
                  div          tp, a3, t5
                  xor          a0, s1, a0
                  and          t1, s5, ra
                  div          t1, a4, a3
                  slli         zero, a6, 11
                  sltu         zero, tp, t5
                  auipc        s0, 457184
                  slt          s7, a6, a5
                  div          s10, a6, t0
                  mulhu        t2, s10, t2
                  mul          zero, t6, s9
                  addi         t3, s3, 122
                  rem          s10, s3, a0
                  sltu         s7, s11, t6
                  remu         s0, a6, s11
                  nop
                  ori          s2, s0, -1664
                  auipc        s6, 583959
                  mulh         s9, s0, t6
                  srli         ra, zero, 26
                  lui          s7, 1003605
                  lui          gp, 381994
                  div          zero, s11, s4
                  xori         s8, s8, 259
                  or           t1, s8, ra
                  mul          a7, s10, s2
                  mul          sp, t2, s1
                  srli         s0, a5, 12
                  sltiu        s5, t2, -1015
                  nop
                  mul          a7, a2, a1
                  auipc        gp, 798359
                  nop
                  mulh         ra, s3, s9
                  divu         t4, t1, tp
                  srl          a3, a4, t6
                  and          t0, sp, s5
                  slt          sp, zero, a5
                  slli         s8, t1, 27
                  slt          s7, t1, t1
                  srli         sp, s2, 1
                  xori         ra, s4, 168
                  sll          a0, s1, a5
                  or           s0, t3, s8
                  and          t5, a4, a2
                  ori          tp, a6, 1339
                  addi         s7, s0, 1147
                  sltiu        t4, a7, 1050
                  slt          a3, t5, a5
                  divu         ra, s9, a4
                  rem          t0, t4, s11
                  and          ra, s11, a1
                  slti         s6, s8, -1234
                  mulh         t2, s2, t3
                  sltiu        s7, s9, 4
                  xori         t2, t2, 1225
                  mulhu        s2, zero, zero
                  remu         s2, a0, s1
                  sltiu        s8, t0, -926
                  sll          s2, s0, t6
                  sltiu        t3, a2, -1511
                  sra          t4, ra, t0
                  xori         s11, s11, -1951
                  slti         s0, t6, 404
                  lui          s3, 732251
                  div          s9, s8, s4
                  xori         t3, a1, -1060
                  srl          s2, zero, a6
                  ori          a1, s3, 1590
                  sltu         s11, s4, s5
                  auipc        t0, 56021
                  mul          s10, t4, gp
                  remu         a4, ra, t4
                  andi         t3, s7, 1640
                  rem          gp, a4, t3
                  remu         s7, s10, a6
                  auipc        a3, 866899
                  slt          s9, s8, t6
                  sltiu        s6, t0, 769
                  slti         sp, a7, 1716
                  slti         t6, s10, 286
                  andi         s5, zero, 170
                  xori         t2, t1, 1642
                  sra          t5, sp, a1
                  xori         s0, t0, -1133
                  and          tp, t2, sp
                  andi         s11, zero, -970
                  xori         s2, t0, -564
                  rem          ra, a6, t2
                  mul          a5, a3, a0
                  mulh         s3, t4, a7
                  mulhsu       tp, t5, zero
                  lui          s6, 491640
                  slli         s3, a7, 16
                  sltiu        s6, s5, 1203
                  addi         a3, s10, 9
                  srl          s6, sp, gp
                  srai         a5, sp, 10
                  divu         sp, s2, t4
                  or           a5, t0, a1
                  divu         zero, s2, t6
                  slt          t4, a6, a6
                  sltu         s9, a7, s0
                  addi         a5, ra, 1071
                  slti         t4, s10, -791
                  and          s0, s4, a4
                  slt          a2, t1, gp
                  mulh         t6, t1, s4
                  srai         t3, sp, 21
                  sltu         s10, a0, a5
                  divu         zero, s8, s0
                  nop
                  nop
                  mulhu        ra, s3, tp
                  lui          s9, 1047467
                  xori         gp, s5, -366
                  mul          t2, t2, a0
                  ori          s2, t4, -384
                  addi         t5, t6, 1883
                  div          tp, a0, t4
                  xori         s3, t0, 1134
                  or           s5, a2, t0
                  add          zero, t5, t3
                  sub          a2, t3, s2
                  add          t4, s0, s5
                  xor          s9, s1, s1
                  divu         sp, ra, s6
                  ori          a7, s8, 76
                  mulhsu       t1, t0, t2
                  sll          t2, s1, a6
                  mulhu        a7, zero, s11
                  remu         a5, zero, s0
                  ori          s8, t6, 445
                  slt          tp, s5, t4
                  srli         s7, zero, 9
                  xor          s9, s4, t6
                  andi         tp, s11, 1047
                  div          s3, s3, s4
                  lui          ra, 541370
                  mulh         t4, t5, s1
                  mulhsu       t1, t3, a0
                  ori          s7, a6, -2036
                  xori         a2, a6, 163
                  sub          t3, sp, t1
                  div          t0, zero, a5
                  xori         s9, a4, 1168
                  mulhsu       a1, s4, ra
                  sll          a3, a1, t4
                  auipc        tp, 230415
                  mulhu        s10, a7, s5
                  divu         s0, s10, t0
                  mulh         zero, s9, s11
                  andi         a5, gp, -1181
                  mulh         s7, s9, a5
                  slli         s3, sp, 18
                  divu         s8, s8, ra
                  mulhsu       t5, a3, s0
                  srai         t6, s3, 28
                  divu         s0, t3, s7
                  auipc        t1, 979675
                  mulh         s0, t2, zero
                  xori         a3, a0, 39
                  addi         s8, gp, 585
                  sra          t4, t6, s10
                  divu         s9, a4, s6
                  sub          a4, t5, t0
                  addi         s3, gp, -1046
                  divu         s10, ra, s5
                  sltiu        t6, s4, 1734
                  slt          t2, a5, a3
                  andi         s2, s5, -1192
                  divu         s9, a2, a0
                  nop
                  slt          tp, s5, s9
                  srai         s6, s10, 9
                  div          s8, s8, a3
                  sub          s7, t6, t1
                  sltu         a7, t1, a5
                  nop
                  addi         a7, ra, 1595
                  rem          a3, sp, t2
                  slli         s7, s10, 12
                  remu         s10, t0, t4
                  sltu         s9, a1, t4
                  mulhsu       zero, s7, a4
                  nop
                  lui          s0, 629079
                  divu         a4, s11, zero
                  or           t3, gp, sp
                  lui          a5, 182486
                  lui          s6, 305749
                  slti         s7, t0, -107
                  sub          a4, s10, s11
                  xor          a4, a3, s8
                  mul          s6, sp, a4
                  srai         t2, s4, 31
                  sll          sp, a7, t4
                  ori          zero, a6, 1851
                  nop
                  xori         s9, s0, 830
                  mulh         a2, a3, a7
                  remu         t3, a0, a4
                  srli         s5, s5, 1
                  add          a0, s10, s11
                  div          a0, t5, a5
                  srl          ra, a2, s2
                  srai         tp, t6, 8
                  xori         s9, s0, 1308
                  slt          t5, a5, s7
                  auipc        zero, 1013146
                  mulhsu       a1, t5, a2
                  srl          a3, t6, s6
                  addi         t5, a1, -739
                  sll          t2, s6, t2
                  mulh         t5, s0, s0
                  sll          gp, s8, s1
                  sltu         a5, t0, t6
                  sra          a5, a0, a6
                  andi         s9, t3, -1671
                  mul          s6, s10, s5
                  srl          t1, a5, s11
                  add          zero, a3, zero
                  lui          ra, 990359
                  mulh         s5, s4, s1
                  divu         a1, sp, t5
                  mulh         a1, a3, sp
                  srai         ra, t0, 9
                  srai         t4, s2, 19
                  sub          t2, s1, t6
                  slt          s6, s9, tp
                  srai         gp, s1, 12
                  mulh         s2, s0, a4
                  srai         s9, s3, 6
                  xori         s6, t2, 60
                  xor          s0, t0, s7
                  xor          a5, zero, a1
                  mulh         s9, t3, s6
                  mulh         a7, s0, a7
                  nop
                  sra          s9, s1, s3
                  nop
                  srl          s8, s0, a6
                  sll          a1, a3, a2
                  and          a3, zero, ra
                  lui          t6, 73768
                  slli         a7, tp, 18
                  slti         t3, s1, -84
                  srli         a5, a7, 22
                  slli         tp, s7, 27
                  sltiu        a3, t3, -472
                  divu         s5, tp, s1
                  andi         s3, t1, -1299
                  sra          t4, a0, s7
                  sra          tp, a2, s6
                  xor          a2, t2, s9
                  rem          a3, t6, t6
                  div          s7, t4, t1
                  remu         t3, t3, a7
                  sll          tp, t5, s2
                  sll          a1, s3, a2
                  or           t5, t6, s4
                  slli         s2, s1, 31
                  sltiu        s2, a4, 1529
                  rem          t5, a0, a3
                  slli         sp, s11, 17
                  rem          t0, s2, t4
                  andi         a1, a0, 998
                  remu         a7, s11, t0
                  mulh         a5, s10, zero
                  and          tp, t0, a1
                  srai         t3, tp, 25
                  mulhu        a2, s11, a4
                  sltiu        t2, s7, -275
                  mulh         s10, t2, s7
                  sra          s5, s11, t4
                  mulhu        a3, s4, a6
                  or           s0, t5, t6
                  sra          t1, a3, gp
                  ori          s8, ra, -1424
                  mulhu        s10, s1, a2
                  or           s7, tp, gp
                  sll          t6, a6, s5
                  sltiu        a4, s4, 446
                  slti         s0, a3, -1380
                  sub          s9, gp, s7
                  sub          s2, a7, a4
                  mulhsu       s9, s6, a2
                  sltu         s3, s5, s4
                  xori         tp, s9, 1810
                  add          t0, a1, gp
                  srai         tp, t0, 15
                  srai         t2, s6, 18
                  sra          s5, a3, s11
                  auipc        a1, 133383
                  nop
                  lui          t0, 109466
                  srai         a7, s7, 23
                  mulh         a1, t0, t4
                  sltu         a7, sp, s10
                  add          t0, s1, a3
                  rem          s10, s5, gp
                  slt          t4, t0, a2
                  andi         gp, a1, 1112
                  and          gp, a2, s8
                  andi         a7, sp, -867
                  and          a4, t3, s8
                  add          a0, a3, a3
                  mulh         s3, a7, a1
                  xori         a2, t4, -1586
                  auipc        s5, 278886
                  remu         s3, s5, zero
                  mulh         t1, s8, s11
                  sra          t2, s0, s8
                  or           t6, a5, a1
                  srai         s8, a1, 26
                  remu         gp, s2, s2
                  sltu         s10, a6, sp
                  srai         ra, s5, 2
                  add          gp, t4, a5
                  sltiu        s10, s0, 503
                  mulhu        s9, a7, s11
                  mulh         s11, a7, a2
                  sra          t0, s3, a3
                  srl          t5, s11, s6
                  mulhsu       sp, s2, zero
                  lui          a1, 676141
                  sltiu        t1, a2, 1208
                  ori          t1, s1, 52
                  div          t6, a4, s10
                  xori         a0, s7, -68
                  remu         s9, a0, t3
                  xori         a2, s6, 83
                  slti         a2, s10, -175
                  sra          s8, t3, t0
                  add          a4, t0, s4
                  addi         s6, a3, -1654
                  sra          s11, tp, t1
                  srli         a1, sp, 16
                  or           zero, s0, a2
                  srli         t2, a0, 25
                  ori          s6, s7, -94
                  sll          s0, a3, s1
                  add          s7, zero, zero
                  addi         tp, s11, -1994
                  mulh         a7, s3, s4
                  mulh         a2, s6, s9
                  divu         t5, t5, s6
                  divu         s10, t5, s5
                  srli         ra, s8, 22
                  mulh         a4, t3, s6
                  ori          a1, zero, -367
                  xori         a1, t5, 858
                  divu         s3, tp, t2
                  sltu         s8, t4, a7
                  auipc        t4, 757859
                  mulhu        s6, s10, ra
                  srli         t4, s8, 16
                  rem          a5, s5, s1
                  and          a0, gp, s10
                  slti         t0, a3, -1304
                  sub          s6, tp, s1
                  add          s7, a2, t6
                  srl          a2, s11, tp
                  addi         a4, s9, -1408
                  sltu         t4, s8, s6
                  ori          s0, sp, -683
                  lui          ra, 755460
                  xor          s6, t2, a6
                  mulhu        a5, t4, s10
                  ori          s7, t4, -1647
                  divu         zero, s7, zero
                  or           t5, s4, s8
                  sra          t5, s3, a7
                  slti         t5, s0, 116
                  add          a4, t0, t4
                  ori          a1, s11, 1754
                  divu         s7, s9, sp
                  srai         s2, s10, 5
                  sll          gp, s4, a4
                  andi         t3, t0, -509
                  mulhsu       s2, a5, s9
                  sra          s0, zero, t6
                  mulhu        t5, s7, a5
                  mulh         t5, a7, s11
                  mulhsu       t1, s10, s6
                  xor          s6, s1, s0
                  and          a4, s8, t6
                  mulh         s11, a7, a1
                  mulhsu       s9, s1, a4
                  mulhsu       zero, s9, a4
                  mulh         t0, tp, a1
                  sltiu        s2, t6, -1282
                  slti         t0, gp, 1670
                  slti         a3, t3, -370
                  sltiu        a1, s6, -875
                  addi         s9, t5, 202
                  nop
                  sub          t3, s9, ra
                  lui          s11, 164202
                  srl          s3, ra, ra
                  sll          t3, t1, s5
                  mulhu        a7, a7, a1
                  addi         sp, a3, 1900
                  mul          a5, a3, sp
                  div          s6, a7, t6
                  sltu         t3, a2, s6
                  srli         s5, a7, 3
                  and          t3, t4, t5
                  slt          s9, s0, a1
                  srl          zero, s2, zero
                  div          tp, zero, gp
                  and          s11, tp, s2
                  sltiu        t3, s7, -522
                  ori          t0, t2, 191
                  slli         a7, a4, 18
                  sra          t0, s8, s11
                  and          s5, s4, a4
                  or           s6, a6, s6
                  lui          s11, 534315
                  mulh         a7, s10, t6
                  ori          a3, s3, 1930
                  slli         t2, s9, 13
                  sltiu        a4, s4, 86
                  add          s5, s2, a6
                  srai         s7, s1, 4
                  addi         t5, t6, 476
                  ori          t1, s1, 1282
                  mulh         s2, s7, t6
                  nop
                  ori          zero, a2, 1785
                  divu         a5, t1, s9
                  slli         s2, t0, 26
                  mul          sp, a5, a4
                  srai         ra, a4, 2
                  lui          s11, 861931
                  mulhu        tp, a1, t6
                  xori         zero, s2, -313
                  slt          t6, a3, t4
                  sltu         t1, tp, s3
                  srai         s9, gp, 16
                  divu         t5, t0, a3
                  divu         t4, t1, t4
                  sltiu        s2, a6, 1587
                  auipc        sp, 1032286
                  andi         s2, s8, -1098
                  sub          t0, s9, t3
                  and          s8, a3, sp
                  ori          a3, a2, 338
                  mul          a3, t2, a2
                  slt          t1, tp, s11
                  sra          s2, s5, t4
                  slt          t0, s9, a1
                  sltu         a1, s8, t5
                  ori          s0, ra, -1581
                  sub          sp, a3, s8
                  slt          t3, t6, s1
                  mulhu        s8, s8, a4
                  sltu         s10, a6, s10
                  mul          s11, s8, t3
                  sll          s5, t3, a1
                  sll          t5, a6, s7
                  srl          s3, ra, s8
                  slt          ra, s8, zero
                  sltu         t3, gp, a4
                  slti         t3, t3, -2026
                  srai         a1, s1, 19
                  sub          sp, s8, a2
                  slt          s2, a5, t1
                  remu         t4, s10, t1
                  remu         s9, s9, a5
                  mul          t0, s3, s8
                  auipc        s8, 230487
                  srli         s3, a7, 21
                  slti         s11, a0, -759
                  nop
                  and          s2, s8, a4
                  add          s2, s7, t1
                  sltu         a2, t0, t3
                  lui          t3, 769445
                  andi         a3, t6, 1100
                  slti         gp, a1, -204
                  srli         t4, s2, 17
                  sub          s7, s8, s3
                  xori         s8, s1, -978
                  andi         tp, t6, -1994
                  auipc        t3, 685247
                  or           t3, ra, t2
                  srli         a5, s7, 1
                  lui          ra, 556476
                  sltiu        t6, tp, 1964
                  slli         ra, s10, 11
                  sub          gp, s8, s11
                  mulhsu       s6, t4, tp
                  andi         t0, ra, -257
                  nop
                  sub          t0, a2, s4
                  slli         t2, gp, 6
                  sll          a7, a2, t4
                  add          tp, t3, a3
                  ori          sp, s1, 448
                  slti         s2, t5, -1750
                  sll          s5, s5, ra
                  divu         s3, t5, s5
                  mulhu        s3, sp, t1
                  sub          a1, a3, a7
                  sltiu        a2, t0, 421
                  nop
                  srl          t5, s10, s5
                  rem          t2, s3, t1
                  add          s11, gp, t5
                  divu         s8, s11, t0
                  slti         t5, a5, -754
                  srli         a0, gp, 22
                  sltu         ra, zero, sp
                  sltiu        a3, a6, 251
                  sub          a3, ra, s3
                  and          zero, s4, s9
                  rem          t2, a3, s8
                  lui          s5, 839587
                  lui          a7, 476452
                  xor          a2, s3, s0
                  mulhu        tp, a3, s6
                  ori          s3, gp, -1550
                  remu         t2, a7, s8
                  srl          s7, tp, s7
                  addi         s5, a0, 737
                  nop
                  mulh         zero, a3, s7
                  nop
                  andi         a0, a1, -284
                  mul          s0, s5, a3
                  and          a1, sp, zero
                  srai         s0, a0, 2
                  ori          s6, t6, -794
                  remu         t0, t5, s9
                  mul          a2, a2, t3
                  lui          t1, 521071
                  sll          s6, sp, a6
                  nop
                  sub          t0, t6, a7
                  mulhsu       s5, a6, a4
                  xor          s7, s0, s0
                  slt          s9, zero, ra
                  mulhu        t5, gp, gp
                  ori          a4, s3, -1555
                  divu         s3, a5, t3
                  or           t5, a0, s0
                  and          s9, a2, t4
                  nop
                  slti         t0, gp, -394
                  mulh         zero, s2, s9
                  nop
                  mul          a3, t0, s4
                  remu         a2, t0, t6
                  slt          s7, t1, a6
                  addi         t2, t0, 1575
                  rem          s0, s4, t6
                  addi         s11, t0, 1519
                  sltiu        a2, s0, -202
                  add          a2, t0, t2
                  divu         t5, s9, ra
                  rem          s7, s5, a0
                  ori          s8, a2, 312
                  mulhu        s5, s0, t2
                  auipc        s3, 541143
                  sltiu        a2, a3, -424
                  ori          s11, s3, -1506
                  or           t3, s9, zero
                  andi         s5, s1, -1655
                  nop
                  sra          t5, s4, s11
                  sra          a0, s8, gp
                  divu         a0, a0, ra
                  mulhu        t1, t2, s8
                  remu         t4, t4, tp
                  sltu         sp, a7, s9
                  or           s5, a3, s5
                  ori          gp, s1, -839
                  divu         ra, s10, s4
                  sll          t2, s3, t2
                  andi         t3, s0, -1581
                  div          t1, s6, a4
                  add          s11, s11, s0
                  sltiu        a1, s4, -1552
                  xor          s11, s10, s0
                  andi         t1, s10, 403
                  auipc        s6, 459862
                  slli         s11, a4, 26
                  srl          zero, s4, sp
                  srai         gp, a7, 7
                  auipc        s8, 8641
                  slt          gp, t2, s11
                  addi         s2, s5, 881
                  auipc        s0, 43553
                  xor          s8, s11, t6
                  sltu         tp, a7, a1
                  ori          s11, a3, 1836
                  mulhu        t2, s6, a4
                  or           s9, t0, t3
                  slt          a5, s11, tp
                  ori          s0, s4, -1061
                  sll          a3, t2, t6
                  rem          a2, t2, s7
                  slli         t4, s8, 8
                  sub          t6, sp, s2
                  mul          s11, a0, tp
                  mulhu        a3, a1, gp
                  sub          sp, a6, s7
                  auipc        s0, 1002163
                  sll          a0, s3, t6
                  mulhu        a0, s2, t2
                  lui          s10, 899355
                  rem          a7, s0, s9
                  sra          a2, s5, a6
                  div          a7, t4, t3
                  mul          zero, t1, a6
                  srl          a7, a2, a1
                  remu         s5, sp, tp
                  add          zero, tp, s2
                  addi         tp, a7, 585
                  slti         s7, a4, -767
                  rem          a4, a2, sp
                  sra          a4, s6, t3
                  sra          t4, t3, zero
                  srl          gp, s7, t0
                  auipc        a7, 831538
                  sltu         s7, a1, a2
                  remu         t3, t5, t5
                  slli         a4, s9, 26
                  mulhu        t2, s10, sp
                  or           a0, s9, zero
                  mul          s9, a4, s2
                  nop
                  sll          ra, a6, a4
                  xor          a7, s7, s6
                  and          a3, s4, a1
                  sltu         s5, a3, t6
                  srl          t2, sp, t6
                  or           t4, a5, t5
                  xori         s0, a3, -2039
                  sltu         t0, t4, gp
                  remu         t5, s4, t4
                  mulhsu       t3, a4, s3
                  nop
                  srli         gp, s3, 11
                  xori         s2, t2, 529
                  xor          tp, s5, a4
                  slt          s7, s8, s0
                  addi         s0, s5, -646
                  xori         t2, s6, 1033
                  srli         a3, zero, 0
                  sll          tp, t6, a5
                  remu         a7, sp, a3
                  xori         s7, s0, -1681
                  sltiu        t5, s1, 957
                  remu         s5, sp, s4
                  slt          s10, s10, a4
                  srai         ra, a7, 24
                  sub          tp, s11, a6
                  slli         zero, s3, 20
                  srai         a0, sp, 16
                  srl          t2, s10, t6
                  rem          t4, t0, s8
                  lui          s10, 963300
                  divu         s0, zero, t3
                  andi         t5, t6, -1612
                  slti         a1, a1, -1639
                  lui          t2, 258178
                  mulhu        a2, gp, a0
                  slli         s11, zero, 29
                  sll          a1, s6, t0
                  xor          s11, t2, zero
                  srli         s0, t5, 19
                  srli         t6, tp, 8
                  srai         s2, t3, 5
                  sltiu        t6, t6, 391
                  auipc        s2, 639955
                  sra          t3, sp, t1
                  div          a4, tp, s11
                  sltiu        a4, s1, 590
                  divu         s2, t1, s4
                  andi         t1, s5, 1542
                  divu         s9, ra, sp
                  srl          t2, s9, gp
                  srl          a2, s7, sp
                  andi         ra, s0, 2027
                  slli         s7, s6, 20
                  slt          a7, t0, t1
                  mulhu        s9, sp, a7
                  sub          a4, s11, sp
                  mulhu        s2, t5, s5
                  remu         a7, a7, s4
                  srai         t0, s4, 26
                  slti         a0, t4, -1599
                  slt          s7, t5, t4
                  rem          s6, s3, t0
                  remu         ra, gp, s5
                  slti         s8, s3, -781
                  add          s3, t0, a7
                  add          s2, tp, s1
                  or           a4, s2, a6
                  srl          zero, s3, a6
                  mulhu        a3, s5, zero
                  mulh         a3, s4, s8
                  mulhu        ra, s1, s2
                  sll          gp, t2, s10
                  rem          s8, t4, t5
                  sra          a4, t4, tp
                  slti         s2, s4, 820
                  sltu         a4, a3, a6
                  sub          s2, t3, t6
                  srli         t6, a2, 29
                  slti         a1, a7, 1631
                  sll          s9, s5, s5
                  srai         a7, zero, 23
                  remu         t4, a2, a1
                  slti         a4, a0, -1066
                  sltu         t0, s4, a7
                  div          t0, gp, gp
                  mulh         s2, s10, tp
                  rem          s0, s8, tp
                  mulhsu       t5, s11, a5
                  or           tp, s7, s6
                  auipc        s11, 644338
                  mulhu        s2, a6, t6
                  mulhsu       a1, s8, s11
                  div          zero, t1, t3
                  sub          zero, a1, a2
                  div          s7, s8, a0
                  or           s0, t3, a3
                  ori          t5, s1, -1114
                  sltu         s9, gp, gp
                  mulhsu       a5, a1, s5
                  sub          s5, t6, s1
                  mulhu        t2, t5, s10
                  lui          a3, 1037818
                  mulh         s2, t1, a2
                  div          sp, s2, sp
                  sltu         a3, s11, s2
                  ori          tp, t5, -1411
                  or           s3, s2, t1
                  remu         s3, a7, t0
                  remu         a0, s7, zero
                  mulh         a7, t3, s0
                  xori         a1, s1, -244
                  rem          a2, t3, t2
                  sltu         t0, s8, tp
                  mulh         t3, gp, zero
                  srli         a7, s8, 5
                  nop
                  slt          gp, t0, a2
                  mul          s11, t0, t1
                  sra          sp, s4, a7
                  srli         a1, s5, 1
                  add          t0, s1, t1
                  ori          a5, s10, 253
                  sra          t3, a2, t0
                  or           t3, s2, a0
                  srli         s3, s0, 29
                  mul          a4, s2, s3
                  xori         a5, t5, 1432
                  add          s11, t3, s0
                  xor          s6, ra, t4
                  remu         s7, t2, s3
                  sltiu        t5, t0, -681
                  sra          sp, t3, s10
                  sltu         s3, a6, s3
                  mulhu        s9, ra, a4
                  srai         t4, s3, 16
                  srl          a2, t6, s1
                  andi         a4, a4, 349
                  srl          a1, ra, sp
                  sra          t3, s3, s10
                  srli         t5, sp, 1
                  xori         gp, tp, 1163
                  rem          t1, t5, s4
                  slti         s9, a4, 133
                  div          t2, t6, t6
                  sltiu        s7, t0, -1190
                  slli         s2, a4, 7
                  xor          s11, t3, s4
                  rem          a5, s3, t5
                  sll          ra, t6, a7
                  sltu         sp, a4, a0
                  srl          s2, t5, s7
                  mulh         zero, s4, zero
                  ori          gp, a2, 1298
                  sltiu        tp, a5, 1864
                  sll          t4, t2, a1
                  srai         s6, s3, 26
                  slt          sp, s10, t2
                  lui          a5, 228445
                  srai         s6, a1, 23
                  ori          s7, a2, -1155
                  mulh         s8, t1, t5
                  addi         s3, ra, -1481
                  nop
                  sltu         a7, t0, s3
                  add          ra, ra, s1
                  xori         s9, tp, -1593
                  divu         zero, s5, gp
                  divu         a3, s2, a7
                  addi         s10, s11, -1121
                  lui          s8, 189517
                  mulhu        zero, t3, t0
                  srl          s7, t5, tp
                  xor          s3, a6, s2
                  sub          t6, s10, s3
                  srai         t5, s6, 8
                  xori         s7, s9, 1048
                  divu         tp, t2, s6
                  mulh         a5, a0, t4
                  sltiu        s5, gp, -1759
                  srai         a5, a7, 3
                  addi         s5, a5, -484
                  srl          t1, a5, t5
                  mulh         t1, tp, a2
                  sra          zero, a3, s3
                  add          s11, s9, a7
                  sltiu        a3, s3, 2006
                  andi         s5, s0, -1107
                  ori          tp, t2, -1924
                  ori          sp, a6, 1650
                  mulhu        s2, s11, a1
                  add          s7, s0, s9
                  ori          t6, a7, -1798
                  xor          a4, a5, t6
                  mulhu        zero, a5, s5
                  and          a4, t5, a5
                  andi         s6, s2, -1591
                  auipc        t2, 25170
                  slti         a5, s5, -58
                  lui          tp, 431390
                  divu         t5, a2, t1
                  mulh         a4, t2, t2
                  xor          s9, a2, s10
                  div          t6, gp, t4
                  addi         t3, a0, -1705
                  srli         s2, s8, 30
                  and          s5, t2, t6
                  sub          sp, a1, s8
                  auipc        t4, 414934
                  sltiu        s5, s8, 1685
                  mul          zero, t1, a7
                  srl          s0, s0, t1
                  sltiu        s10, t5, 466
                  lui          a5, 1017646
                  xori         a7, s5, -1648
                  sra          t3, a2, s6
                  xori         sp, s8, 1305
                  sra          t6, tp, s7
                  and          a1, t1, a5
                  ori          t2, a6, 796
                  sub          t3, s10, a1
                  andi         s0, a6, -585
                  mulh         gp, t2, sp
                  mulhsu       s7, t0, a0
                  remu         zero, a2, s5
                  sll          a3, a1, t2
                  rem          s5, a3, a0
                  sll          s11, t5, a1
                  addi         s5, s1, -411
                  slt          s9, t1, a4
                  srai         s5, t3, 24
                  auipc        a4, 186881
                  or           s9, ra, s0
                  sltiu        s6, a2, 1295
                  xor          a3, a7, s1
                  mul          s5, t2, s3
                  sltu         s5, s6, s5
                  remu         a3, t3, a4
                  remu         s10, a5, t2
                  addi         s3, a3, 486
                  srli         zero, t2, 19
                  slli         a4, t1, 25
                  lui          s11, 759338
                  slti         s9, s4, 1660
                  srli         s9, a4, 3
                  slli         zero, a7, 29
                  sub          t3, s5, a4
                  nop
                  nop
                  slli         a5, zero, 2
                  slli         s7, t1, 25
                  sltu         a5, tp, s8
                  and          a4, t6, t6
                  sub          s11, t2, t3
                  mulh         a3, a6, t5
                  lui          s9, 167297
                  lui          s2, 400317
                  or           sp, a6, t0
                  mul          a2, a6, t6
                  and          t1, s1, s4
                  slli         s2, s2, 2
                  sltu         a7, a5, s7
                  sra          s0, t4, t1
                  srai         t5, s8, 19
                  slt          t2, t1, s8
                  slt          s7, s0, s9
                  auipc        zero, 828742
                  mul          tp, a2, s6
                  sltiu        t4, zero, -1818
                  div          s3, zero, s3
                  xori         s2, t2, 976
                  srai         t6, a7, 1
                  addi         s6, ra, 1546
                  sra          s7, sp, a2
                  andi         s10, t1, 1416
                  mul          t4, t3, s11
                  srai         s11, s5, 24
                  addi         t4, a7, -238
                  ori          gp, s7, 1704
                  srl          s2, a7, tp
                  ori          a3, t2, 440
                  lui          s0, 803092
                  ori          a3, s10, -745
                  slti         gp, a5, -819
                  add          a1, a1, s10
                  andi         a5, ra, 174
                  nop
                  ori          a1, sp, -918
                  rem          tp, s8, s7
                  mulhu        t1, a0, a4
                  mul          s2, t0, s10
                  mul          s0, tp, s4
                  auipc        t4, 32237
                  mulh         s9, t6, t0
                  slt          s5, s1, s0
                  srai         t3, zero, 24
                  remu         a1, s10, sp
                  mulhu        t3, a6, s4
                  mul          s6, a7, t4
                  addi         zero, s4, 1383
                  sll          t1, a1, s1
                  xori         t6, gp, -711
                  sra          t4, sp, gp
                  mulh         gp, a3, a3
                  remu         a0, a0, ra
                  and          a3, a1, zero
                  div          t4, t1, t5
                  xor          t1, a3, a2
                  sub          a1, zero, a6
                  sltu         t1, t0, s6
                  sll          s9, s2, zero
                  ori          a5, a4, -341
                  srli         t5, s4, 31
                  or           s9, a0, a7
                  mulhsu       a3, s1, a1
                  slti         s6, a6, 1905
                  srl          a4, s0, s9
                  sll          sp, t1, t4
                  mulh         a5, s6, t0
                  andi         s0, s10, -1315
                  divu         t4, t6, s3
                  slli         t2, s10, 13
                  rem          gp, t6, ra
                  slli         s11, s2, 26
                  sltiu        s2, a7, -404
                  ori          t2, s10, 1091
                  slt          zero, s6, s3
                  ori          a1, gp, 1571
                  div          a4, s4, a7
                  addi         s2, t1, 917
                  mulhu        s5, s5, a5
                  sltiu        t0, s2, -1457
                  or           a7, a6, s9
                  slt          s0, a7, s6
                  xor          s10, a1, a1
                  xori         sp, gp, -1872
                  sub          gp, a2, s5
                  remu         a5, a4, a6
                  xori         ra, ra, 432
                  and          s7, t5, s9
                  slt          t1, s6, a7
                  mulhu        s8, zero, zero
                  sltiu        zero, s5, 1056
                  lui          s0, 29894
                  xor          s10, t3, s5
                  mulhu        a2, s6, t3
                  slti         a4, t4, -657
                  sltiu        s7, a1, 1279
                  slti         a7, t5, -729
                  mulhsu       a4, t2, sp
                  lui          s9, 402563
                  divu         sp, t5, s11
                  add          s8, a7, a1
                  auipc        a0, 910355
                  ori          a3, t3, 1309
                  xori         a5, tp, -400
                  andi         a3, s10, -873
                  remu         a2, s5, a7
                  remu         s9, s11, a0
                  mul          s3, a5, s8
                  addi         zero, t6, 622
                  div          a0, s9, t2
                  sltu         ra, sp, gp
                  divu         t3, sp, s7
                  mul          sp, s3, s9
                  sll          s2, s0, tp
                  mulhsu       ra, s9, s9
                  div          s7, t1, t1
                  srai         t6, gp, 22
                  add          s9, s8, s3
                  slt          a4, s6, a2
                  auipc        sp, 995606
                  xori         zero, t0, 1093
                  ori          a1, s8, 531
                  lui          s0, 20160
                  sltu         gp, t1, a1
                  auipc        s6, 518581
                  andi         s0, s8, 330
                  rem          s9, gp, a4
                  sll          t3, s1, s0
                  nop
                  and          a4, a5, s0
                  div          t4, a5, t6
                  slli         t6, a4, 11
                  mulh         t6, s3, a1
                  sub          s5, sp, a5
                  srli         a4, gp, 4
                  srl          s2, t0, a4
                  srl          s10, tp, t2
                  rem          s10, s1, t2
                  nop
                  andi         a0, s11, 2012
                  mul          a0, t5, t4
                  auipc        s6, 523689
                  addi         s3, s11, 185
                  slti         s2, s10, -285
                  remu         s5, a3, t4
                  sltiu        t5, s7, 250
                  rem          ra, s3, a4
                  mul          t3, a0, sp
                  slli         t0, a6, 3
                  slti         s9, tp, -1533
                  rem          a4, ra, t1
                  mul          s11, s3, gp
                  srl          ra, gp, gp
                  xor          s5, s4, t1
                  sltu         s2, s10, s11
                  addi         tp, s8, -1984
                  or           s7, t1, t1
                  divu         t3, a7, t6
                  mulhsu       a4, s1, gp
                  slt          sp, a4, ra
                  remu         s2, ra, s9
                  sll          gp, s9, a2
                  ori          t2, a7, -1342
                  mulhu        s11, s2, a2
                  sra          s7, t6, a1
                  divu         tp, t5, gp
                  mulh         t3, t4, zero
                  srli         t0, a5, 25
                  add          a1, s9, s2
                  auipc        s9, 231745
                  addi         t3, a2, 901
                  add          gp, a0, t2
                  rem          s10, t3, zero
                  srai         a5, s9, 15
                  srli         a2, s3, 7
                  remu         zero, t3, t4
                  nop
                  slti         s5, t4, 550
                  slti         t5, s4, -507
                  sra          a4, s5, zero
                  or           s9, a3, gp
                  mul          a3, s11, zero
                  ori          s7, a3, -1499
                  rem          t3, s9, t0
                  divu         s0, s11, a3
                  mulh         a0, a2, a1
                  sll          s8, s5, s0
                  mulhsu       a1, s9, tp
                  and          s11, s3, s7
                  ori          s0, a7, 788
                  mul          s8, t2, t4
                  srl          s7, s4, s10
                  sltu         t4, s5, s1
                  sra          s8, tp, gp
                  mul          t4, t2, t0
                  slt          s11, a5, t1
                  sll          a4, sp, tp
                  mulh         tp, t3, sp
                  mulh         t5, t4, a7
                  xor          s0, s2, a0
                  srl          s2, a4, s7
                  xori         ra, t3, -47
                  mul          t3, a7, s0
                  andi         t3, s9, 409
                  mul          a7, zero, s4
                  add          s6, a3, t5
                  slli         a4, zero, 2
                  slli         tp, a5, 7
                  xor          a0, s1, tp
                  xori         a0, a7, 438
                  sub          t3, s9, s3
                  sub          s5, tp, t3
                  div          zero, a6, gp
                  auipc        t3, 495151
                  xor          t3, s3, s4
                  slti         s10, s3, 1086
                  srli         a7, a3, 17
                  xor          t5, a6, gp
                  add          zero, a7, t0
                  sltu         s6, s0, s7
                  remu         t1, s10, ra
                  divu         s9, t0, sp
                  mulh         s3, a2, s11
                  xor          s5, s6, a6
                  slt          gp, s3, a0
                  andi         s2, t5, 1870
                  rem          s11, a0, a2
                  xor          zero, s6, a7
                  mulh         s10, t4, s10
                  divu         a1, s1, sp
                  sra          a1, a3, s2
                  mulhsu       a5, a2, a1
                  addi         s11, t2, -315
                  mulhu        t0, a2, a4
                  xori         s2, a4, 1083
                  xori         t2, t5, -306
                  sub          a1, s9, s5
                  slli         a5, s5, 10
                  slt          tp, tp, gp
                  mulhsu       gp, s9, t1
                  addi         a7, zero, 1130
                  xori         s10, s0, 1282
                  mul          a5, t6, s9
                  slti         sp, t0, -1677
                  sltiu        sp, a1, -267
                  and          a3, tp, s1
                  slt          a1, t6, s0
                  slli         t6, a4, 12
                  add          s0, t5, s9
                  add          a2, a1, t0
                  sra          s11, a3, a1
                  auipc        s5, 201707
                  mulhsu       zero, s8, a5
                  auipc        t6, 108219
                  xori         t0, s4, 1234
                  sra          t0, s8, s6
                  lui          s5, 26310
                  div          t2, a2, sp
                  rem          s5, s10, s4
                  sll          t5, a0, s7
                  ori          s8, a7, 625
                  or           a2, t3, a1
                  sub          t3, t6, tp
                  lui          tp, 241976
                  sll          s10, gp, t2
                  remu         s9, s8, zero
                  or           a1, s3, a1
                  and          a1, a4, t3
                  slli         tp, t6, 26
                  or           a1, a6, s3
                  slti         s9, t4, 1650
                  ori          a5, gp, -976
                  mulh         a2, sp, s9
                  sub          s9, a3, t1
                  sltiu        gp, s3, -1087
                  sub          s0, a2, tp
                  slt          a2, sp, t6
                  slti         s10, zero, -926
                  slli         a4, t4, 1
                  xori         s8, s3, 1696
                  and          a1, a1, s6
                  slt          t6, a7, s6
                  srai         t6, s3, 2
                  andi         a4, t4, -157
                  xori         s11, s5, 387
                  mulhsu       s5, sp, ra
                  sub          s2, a5, a7
                  slli         s10, a7, 22
                  and          gp, t6, a1
                  sll          s11, tp, a3
                  sra          ra, t5, s5
                  mulh         a3, s6, s7
                  srli         sp, a6, 28
                  srai         s6, t5, 6
                  addi         t1, tp, 1652
                  remu         a4, s4, t4
                  ori          a1, t5, -111
                  div          a1, s0, s7
                  mul          t5, s4, t3
                  srli         s9, t3, 2
                  sltiu        sp, a1, 1360
                  srai         t4, s2, 14
                  xor          a5, t3, t1
                  or           s11, s1, zero
                  sra          a2, s6, s6
                  slt          s6, s10, s9
                  sltiu        a0, s7, 888
                  xor          a0, a7, t0
                  add          t3, s8, zero
                  srl          t4, a6, s7
                  nop
                  add          t6, s4, t1
                  and          t1, ra, s9
                  slli         zero, s7, 0
                  nop
                  srai         ra, tp, 27
                  mulhu        tp, s1, s6
                  ori          s6, s9, -769
                  and          t3, s4, s2
                  sra          s9, a6, s6
                  srli         a0, zero, 16
                  slli         t6, s5, 10
                  nop
                  sltiu        a2, s10, 621
                  slli         ra, s7, 18
                  div          a3, sp, a3
                  sltiu        t6, t0, 631
                  mulhsu       t4, s6, s10
                  sltu         ra, t4, a2
                  slli         s7, a2, 6
                  slli         a2, s5, 23
                  srai         zero, s8, 0
                  divu         s7, s2, s10
                  xor          sp, t5, s5
                  or           t3, t1, s4
                  srai         ra, s6, 25
                  div          a7, a1, s3
                  ori          a1, a6, -1181
                  sltu         s3, gp, s4
                  sltiu        t0, t2, -625
                  slli         a0, a2, 10
                  remu         a3, a4, t3
                  srli         tp, s3, 31
                  sll          s0, ra, s2
                  sub          s9, gp, s6
                  nop
                  sra          zero, s5, s3
                  andi         a7, t2, 984
                  lui          s11, 123141
                  slli         t1, t2, 19
                  remu         s10, s0, t2
                  slt          s10, t0, t2
                  auipc        gp, 1015945
                  xori         s2, s10, -689
                  rem          t4, s8, t0
                  sra          a3, s8, s11
                  xori         s8, t5, -609
                  divu         s11, a1, a1
                  or           t3, a0, t6
                  sltu         a7, gp, a0
                  mulh         a1, a7, t1
                  auipc        t0, 533553
                  slti         s6, ra, -53
                  xor          tp, t4, s3
                  mulhsu       s9, gp, t2
                  divu         s0, ra, t3
                  add          s9, s2, s7
                  sra          s5, a7, s10
                  and          t6, sp, s11
                  and          s10, tp, s9
                  slt          t0, tp, s2
                  and          zero, s6, t1
                  remu         gp, t1, gp
                  div          s3, s3, s4
                  divu         s7, s7, t4
                  sll          sp, ra, s7
                  sltu         t5, a3, tp
                  srl          gp, a2, t5
                  mulhu        s9, a1, s5
                  mulh         s2, s10, s11
                  srli         t3, t1, 31
                  sra          s5, a5, zero
                  auipc        zero, 984090
                  or           a7, s10, a0
                  srl          t4, t4, s11
                  mulhu        a1, tp, tp
                  ori          t5, s1, -671
                  mulh         t3, s9, a4
                  remu         a1, ra, sp
                  remu         a4, a1, a2
                  sra          t0, s9, tp
                  nop
                  mulh         s2, t1, s8
                  sltu         t5, s8, t1
                  lui          t5, 10945
                  sll          a4, t2, a7
                  srl          t0, a6, s7
                  sltiu        s9, s2, -889
                  divu         s6, a2, s10
                  slli         zero, zero, 10
                  ori          t3, t6, -471
                  mul          t4, s3, sp
                  slli         tp, a5, 25
                  nop
                  auipc        a3, 693408
                  srl          zero, a3, s2
                  auipc        ra, 630674
                  sll          s8, s0, t5
                  sra          s3, a1, s4
                  slli         s2, s8, 30
                  auipc        gp, 389241
                  and          s11, a1, t0
                  lui          a3, 931840
                  rem          a1, s9, s9
                  mul          t6, a7, t4
                  remu         s5, tp, a6
                  ori          s9, a4, -424
                  xor          a3, tp, s1
                  xor          s0, s8, s11
                  mulhu        t3, t1, t5
                  and          s2, gp, t6
                  mulh         zero, s6, t0
                  ori          s6, t6, 327
                  rem          s9, t2, t1
                  srli         ra, a7, 9
                  lui          s11, 764990
                  sll          ra, t5, sp
                  slli         tp, s1, 9
                  sltu         t3, s5, a7
                  andi         tp, a7, 1319
                  srl          s5, s5, s7
                  and          s7, a7, s3
                  and          s0, s6, s6
                  nop
                  or           a0, s2, a4
                  xor          zero, ra, s1
                  sub          a2, t4, s0
                  slli         t6, sp, 31
                  and          s8, s9, s5
                  andi         tp, t5, 493
                  sra          t1, t1, a3
                  slli         t1, t4, 3
                  srai         t4, tp, 20
                  ori          a7, s9, 613
                  slt          s2, a6, zero
                  mulhsu       gp, a6, a0
                  slti         a5, a1, 1275
                  divu         s9, a4, tp
                  srli         sp, s1, 27
                  xori         s5, s2, -1730
                  add          zero, t0, s7
                  remu         a5, s2, s11
                  sltiu        s7, a5, 0
                  andi         t1, s0, -202
                  or           t6, a1, t3
                  mulhsu       s5, tp, s4
                  sltu         s6, a3, a3
                  mulhu        t2, t0, t3
                  mul          tp, s0, gp
                  mulhsu       t2, t6, s3
                  mulhsu       gp, ra, zero
                  xor          a7, t6, t3
                  divu         s3, s6, t6
                  sra          sp, s11, s4
                  sub          a4, s10, s4
                  ori          s5, s9, 1812
                  lui          s9, 160466
                  and          a7, zero, s4
                  sltiu        s5, t6, -582
                  or           a3, a2, a7
                  and          s8, s2, a2
                  mulh         s6, s0, a6
                  xor          s6, s8, s1
                  div          a7, s6, t0
                  xori         a0, s0, 1538
                  andi         s7, t3, -1983
                  mulh         t1, t3, s6
                  mulhu        t0, ra, s5
                  div          t0, s5, s0
                  slli         zero, s3, 12
                  rem          a4, t0, sp
                  sub          a4, t6, s7
                  auipc        t3, 824579
                  ori          t6, s3, 1346
                  andi         a3, t4, 1618
                  xori         a4, s5, -1514
                  mulhu        t5, a2, s5
                  mulhu        a0, sp, s2
                  xor          t1, tp, s0
                  xor          s11, s0, s9
                  sltu         s8, s6, gp
                  div          a5, gp, s11
                  srai         t3, tp, 13
                  mul          a0, a2, s5
                  rem          a5, a7, zero
                  and          t4, s11, t2
                  mulh         gp, s10, s6
                  auipc        t1, 107178
                  div          s6, a3, s7
                  slt          a2, s0, gp
                  mulhu        s3, tp, t2
                  sub          tp, a0, s7
                  auipc        t4, 883987
                  nop
                  ori          t5, s11, -773
                  divu         a0, s3, s3
                  mul          s5, s3, t2
                  and          a2, ra, a6
                  and          t6, s3, t1
                  lui          s9, 871429
                  mulhsu       t2, t4, t2
                  remu         s3, s0, a7
                  sltu         a0, a6, ra
                  slti         a2, s2, 1662
                  andi         s2, ra, 1236
                  sll          t2, s2, s9
                  sltiu        sp, t0, 70
                  add          sp, s7, a6
                  nop
                  srli         s2, gp, 25
                  ori          t0, s8, 1383
                  sub          sp, s5, t4
                  sub          t4, ra, a5
                  add          a0, tp, sp
                  sra          s6, a3, a6
                  xori         a2, ra, 798
                  srli         a1, t6, 6
                  slt          s8, tp, s4
                  remu         s11, t1, a7
                  ori          zero, a3, 1861
                  mulh         tp, s1, t2
                  srai         s0, tp, 26
                  srli         a1, t1, 5
                  xori         a4, s8, 1696
                  ori          a5, s6, -1599
                  div          s6, ra, zero
                  auipc        s8, 789936
                  nop
                  remu         s5, s3, t6
                  and          tp, t4, s2
                  sub          t3, t6, a6
                  xori         t5, t2, 125
                  andi         a7, s0, 1429
                  div          t1, s7, s6
                  slli         s5, t0, 25
                  lui          s8, 305884
                  mul          s6, t1, s10
                  xor          gp, a5, s6
                  add          s10, a2, a5
                  srai         a0, ra, 25
                  rem          sp, s2, a6
                  add          t3, s8, a7
                  xor          s8, t3, s7
                  srli         sp, t2, 27
                  srli         s5, s6, 15
                  sltu         s8, s2, a0
                  lui          ra, 808020
                  addi         t1, t2, 1502
                  xor          s8, a3, t2
                  slt          s7, t1, a1
                  remu         s3, s5, t6
                  and          s5, a3, s10
                  sltu         s2, s7, a2
                  rem          s7, ra, a3
                  srli         s11, gp, 5
                  sltu         a1, ra, t2
                  mulhu        a2, s6, a2
                  or           t1, t2, s7
                  divu         a7, sp, s3
                  ori          sp, ra, -794
                  mulhu        s8, t6, a1
                  remu         s9, s9, s0
                  srai         t0, zero, 21
                  andi         tp, a1, -818
                  divu         a2, s0, a4
                  sltu         gp, t2, s4
                  and          a0, s10, a3
                  auipc        ra, 333196
                  lui          s0, 14489
                  sra          s3, gp, s5
                  mulh         gp, a2, t5
                  mulhu        s3, s6, s9
                  srli         a4, s9, 23
                  sra          s7, s1, s7
                  remu         t0, t6, s9
                  sltu         s9, s8, a5
                  mul          a0, s7, t6
                  xori         a0, s10, -1825
                  mulhu        s11, t6, t4
                  rem          a1, t4, s0
                  slti         t4, sp, -162
                  mulhsu       t2, s7, s11
                  mulhsu       s7, s2, a0
                  lui          s6, 617848
                  mulhsu       t0, sp, sp
                  remu         s6, s0, a4
                  mul          s9, t0, s8
                  remu         a5, s6, s9
                  mulhu        a1, s7, s6
                  ori          tp, s2, -185
                  mulhsu       s5, a7, t2
                  xori         s5, t1, 1654
                  srli         s0, a2, 31
                  addi         tp, tp, 1374
                  sra          s5, s10, gp
                  or           s6, tp, sp
                  add          a1, a4, sp
                  rem          a5, sp, a1
                  or           s7, zero, s3
                  or           a2, a1, t0
                  mulh         sp, t3, s7
                  mul          a4, s2, t6
                  addi         s5, ra, -541
                  addi         gp, s6, 1609
                  sll          s2, sp, s8
                  mulh         t4, a1, a4
                  or           s0, gp, t0
                  and          t1, ra, tp
                  xori         t2, t0, 1806
                  xori         t6, s5, -847
                  div          a1, a6, a2
                  ori          a4, s10, -1657
                  mulhu        a7, a5, s7
                  rem          s10, a3, sp
                  add          tp, s1, s4
                  nop
                  xori         a7, t5, 598
                  ori          t6, s9, 1894
                  rem          zero, s2, s2
                  lui          zero, 755473
                  lui          t2, 420510
                  xori         s3, s5, 591
                  div          s8, a4, s7
                  sltiu        t0, a6, 1321
                  srl          sp, t6, s2
                  xori         t0, s2, 445
                  xor          a3, s1, t5
                  sll          a4, a1, gp
                  mulh         a3, zero, t2
                  add          sp, a4, t4
                  mulh         s2, a7, t2
                  remu         t5, a4, s10
                  andi         s2, a1, -529
                  srli         a7, a3, 6
                  sra          t5, t2, a6
                  addi         t5, s11, 94
                  or           a4, a5, ra
                  remu         s9, t0, tp
                  mulh         a4, t1, t0
                  remu         zero, s9, s4
                  sltiu        s8, ra, -1901
                  auipc        s7, 507415
                  divu         s6, t5, s3
                  sub          t6, a1, a2
                  and          a2, a6, s4
                  remu         s0, t1, s8
                  div          a4, s6, t2
                  or           t4, a0, ra
                  xori         s11, t6, 210
                  sltiu        tp, a7, -1152
                  div          t6, gp, s2
                  sub          a5, t3, s9
                  ori          s5, s11, -827
                  sltiu        t6, ra, 783
                  srai         s8, a5, 25
                  sub          s11, t4, s10
                  div          a4, s8, a7
                  slt          s3, s0, s3
                  slt          gp, t0, t0
                  nop
                  mulh         s6, s2, a7
                  addi         a2, a7, -777
                  divu         a0, a6, s1
                  mulh         t6, a3, s5
                  srl          s6, s9, t5
                  sra          s9, s3, gp
                  srai         ra, s10, 20
                  mulhu        a2, a5, s6
                  and          s9, sp, a7
                  sll          t1, s2, t5
                  mulhsu       s9, t0, s9
                  and          sp, t5, s10
                  sltu         s8, a2, s4
                  ori          t2, s6, 1900
                  slli         a7, s7, 4
                  slti         t2, a1, 72
                  add          s8, s2, tp
                  sra          a5, t3, s10
                  sltiu        s3, a1, -667
                  and          ra, t3, a7
                  sltiu        s3, ra, -1809
                  slti         a7, a6, 1993
                  rem          a4, s7, t6
                  sltu         gp, t3, s6
                  xori         s0, s5, -973
                  nop
                  sll          tp, s3, a7
                  mulhsu       s0, a7, s3
                  and          s5, a3, a2
                  sra          s6, tp, ra
                  xor          a3, gp, a1
                  sra          s3, a1, zero
                  srai         s0, a6, 18
                  srli         s7, t6, 14
                  lui          a1, 642831
                  xor          a0, s7, sp
                  srli         zero, t1, 21
                  div          s6, s11, a7
                  sub          a2, a4, a5
                  auipc        a1, 301022
                  mulh         sp, s9, s2
                  sltu         s10, t3, t2
                  div          s0, t5, a4
                  addi         a5, a3, -1101
                  ori          tp, a4, -1237
                  mulh         a4, t4, a7
                  srl          t6, t5, t6
                  mul          s7, a6, t3
                  sub          a2, s8, s8
                  sll          s11, ra, s8
                  auipc        a3, 565568
                  xor          s5, t6, a4
                  auipc        a4, 465989
                  slti         s9, zero, 344
                  xori         s3, a5, 1827
                  srl          t0, a1, a4
                  mulh         t1, t1, s2
                  slti         s9, s6, 1789
                  mul          a1, t3, a2
                  srai         a7, s1, 17
                  mulhu        t1, s1, s9
                  div          t3, ra, s5
                  nop
                  rem          s5, t0, s11
                  slli         s5, t6, 12
                  mul          s3, t2, sp
                  remu         a4, s5, t6
                  sll          s6, t4, s8
                  sra          t4, a7, a5
                  add          ra, tp, ra
                  sltiu        s5, tp, -1964
                  slti         gp, s6, -2042
                  mulh         t4, s11, a6
                  lui          s7, 570970
                  srai         s7, t2, 2
                  add          t2, s1, s2
                  andi         zero, a1, 1578
                  slt          a2, t5, t1
                  addi         s2, s4, 1452
                  xori         s8, s11, -1770
                  div          a1, a5, a1
                  rem          sp, ra, t1
                  andi         a3, s4, -392
                  slti         a5, a7, 270
                  or           zero, a0, s6
                  rem          a0, s10, sp
                  srl          sp, t4, t1
                  srai         s0, s7, 22
                  sltiu        gp, s5, -235
                  sltu         tp, s2, a3
                  mulhu        a7, a1, ra
                  mulh         a3, t3, a3
                  slti         s9, t2, 1635
                  lui          a7, 412199
                  andi         s3, s11, 1248
                  mulhu        s2, a2, a5
                  auipc        t4, 870328
                  mulh         zero, a4, a1
                  nop
                  slt          gp, a0, s7
                  remu         s9, a0, s9
                  addi         t1, s10, 1467
                  sll          zero, a2, ra
                  sltiu        a4, a4, 668
                  nop
                  mulhu        a3, t0, s0
                  sra          s2, a5, gp
                  remu         t6, a5, s9
                  rem          a1, a1, a5
                  divu         s6, t2, t3
                  andi         a7, s4, 621
                  srai         a0, t2, 16
                  rem          s6, s11, a5
                  lui          a4, 820785
                  andi         t1, gp, -524
                  auipc        s6, 811128
                  srl          s6, t2, tp
                  nop
                  slti         s3, s11, 550
                  srl          s8, gp, s4
                  remu         s0, gp, tp
                  srai         t0, s6, 24
                  xori         s0, t3, 1317
                  auipc        s7, 134899
                  srl          ra, tp, sp
                  mulh         ra, t5, a7
                  sltu         s5, s11, a0
                  mul          tp, t2, t6
                  xori         a4, s0, 1850
                  div          sp, s11, t3
                  srl          s6, s5, s0
                  rem          t3, s1, s11
                  sltiu        t1, a5, 264
                  xor          gp, t5, s5
                  xor          s0, a5, sp
                  srl          t0, s7, t1
                  addi         t6, gp, -735
                  mul          s6, t1, t4
                  xori         s8, zero, 910
                  mulh         t2, t4, s5
                  rem          s7, s2, zero
                  slt          s7, s8, s11
                  or           t1, a6, a0
                  ori          s5, t6, 1639
                  addi         s9, s5, -1364
                  ori          a5, tp, -546
                  slti         s7, s11, 256
                  slt          s9, a5, s1
                  sll          gp, a0, a4
                  srli         t0, t6, 21
                  sra          t1, a1, a3
                  slt          t0, s1, s0
                  andi         zero, s6, 248
                  sub          t4, s3, s3
                  or           s2, t4, s10
                  divu         t2, s5, a3
                  add          a5, s6, a6
                  div          a5, t0, s5
                  slli         tp, t5, 5
                  mulhsu       a7, gp, s8
                  mulh         t3, tp, zero
                  mul          a2, s7, a2
                  slt          s6, a0, t4
                  sub          t3, a5, zero
                  xor          t2, t5, a0
                  xori         s11, s6, -1970
                  auipc        s5, 791468
                  mulh         s10, a4, s9
                  and          a7, s3, ra
                  auipc        s11, 388915
                  auipc        s9, 1024867
                  lui          ra, 588556
                  srli         s8, t3, 18
                  divu         t3, a7, s6
                  ori          s11, a3, 1491
                  nop
                  div          a1, s9, gp
                  sra          t5, t5, tp
                  slt          s5, a3, t0
                  sltu         t3, s5, s4
                  slli         ra, a3, 31
                  sltu         s2, t5, s10
                  slti         s8, a7, 1808
                  auipc        s8, 158780
                  slt          s9, zero, s10
                  andi         a1, gp, 1888
                  xori         ra, a6, 497
                  slli         t2, t3, 31
                  sub          ra, sp, sp
                  and          t1, s6, gp
                  slt          a1, s8, ra
                  div          s11, s10, t6
                  xor          s5, a2, s1
                  slli         t3, s11, 9
                  sltiu        tp, s8, -1111
                  nop
                  mulh         a1, a3, sp
                  nop
                  sub          t4, t5, sp
                  slti         ra, t1, -626
                  nop
                  srl          t6, a0, a3
                  srl          s2, s8, s0
                  slli         s9, s5, 29
                  sltiu        ra, a3, 185
                  srai         t4, s1, 12
                  ori          s8, a7, -1413
                  mulhsu       s3, t0, a2
                  nop
                  sltu         s2, a3, s9
                  srli         a5, a3, 9
                  addi         s6, t6, 1060
                  mulh         s5, s0, a6
                  srl          tp, a7, t3
                  addi         t3, s6, 154
                  slti         sp, tp, 1982
                  xori         s11, tp, -1749
                  srai         s9, tp, 25
                  ori          tp, s10, -652
                  mulhsu       t2, t3, s4
                  sltiu        s5, a3, -1361
                  ori          t0, s2, -852
                  ori          s0, t6, 1203
                  srl          a2, s8, t4
                  sltu         a4, a1, s11
                  xori         a1, a2, 90
                  divu         t5, a4, s0
                  or           a2, s0, a1
                  mulh         zero, sp, a4
                  and          t6, s3, a7
                  nop
                  andi         s0, a2, -1115
                  and          s2, s8, a7
                  srli         t2, zero, 11
                  mulh         t0, s4, t4
                  lui          s5, 381648
                  lui          a3, 353538
                  srl          a3, t5, gp
                  srai         s6, t5, 12
                  srai         s10, s3, 24
                  slti         zero, tp, -1794
                  or           a0, a7, s8
                  mulhu        sp, s10, t0
                  rem          ra, t1, a5
                  sub          s6, t3, t3
                  slli         s5, t1, 27
                  lui          s6, 571808
                  slli         s7, s10, 17
                  or           s9, s4, s11
                  sltiu        zero, s6, -703
                  srai         ra, s5, 27
                  sub          s5, s9, s5
                  ori          t5, gp, -900
                  rem          ra, a6, s4
                  add          t6, gp, tp
                  mulh         a0, a3, t5
                  mulhsu       s2, s6, a5
                  sltiu        t2, zero, -1841
                  div          a3, t3, a6
                  ori          s5, s6, -1509
                  xori         t1, s5, 1804
                  divu         a7, s1, s1
                  sll          t2, t5, sp
                  mul          ra, sp, s10
                  ori          gp, t6, -647
                  rem          s7, a6, sp
                  slt          a2, a4, s0
                  remu         a5, gp, a5
                  ori          s9, s10, -1781
                  mulhsu       tp, s11, t3
                  slli         t2, a6, 6
                  slli         t1, a5, 23
                  sub          t1, zero, s2
                  xori         s0, t4, 777
                  and          a0, s3, gp
                  xor          s7, s9, s9
                  srli         s9, s3, 6
                  rem          t5, a7, s9
                  sltiu        t2, t2, 1441
                  and          s0, s0, s3
                  slli         tp, s0, 5
                  divu         s10, t6, s1
                  ori          a2, a6, 1331
                  mul          s2, t2, sp
                  sra          zero, t1, t2
                  sltu         a1, a4, a5
                  xori         s2, s9, 264
                  sub          s6, a3, a6
                  or           s9, a4, t1
                  xori         s7, t1, 2002
                  xor          t1, a5, a5
                  slli         t6, zero, 16
                  mul          s11, sp, t1
                  remu         s8, t5, t6
                  or           gp, a7, sp
                  mulhu        s10, s0, t5
                  sll          s8, a0, a1
                  nop
                  lui          t4, 621301
                  divu         t5, a3, ra
                  sll          a1, tp, a3
                  xor          t3, a3, t2
                  xori         ra, s0, -964
                  ori          tp, s9, -1527
                  srai         gp, a4, 31
                  and          s9, a2, s10
                  and          t6, a5, zero
                  mul          ra, s8, t5
                  addi         s10, s8, -960
                  mulhu        ra, s9, t4
                  srl          t6, s3, s1
                  and          sp, a4, a2
                  mul          s6, s2, a6
                  auipc        a7, 230523
                  addi         tp, t1, 760
                  slti         t3, t3, -734
                  ori          t5, t4, -1604
                  mul          zero, t0, a4
                  xor          t3, gp, ra
                  sub          s8, ra, t4
                  remu         t5, gp, s10
                  srai         s10, s1, 16
                  mul          s0, s2, s4
                  rem          s0, s8, s10
                  lui          gp, 4629
                  remu         s0, t0, t0
                  auipc        t2, 142804
                  xor          a5, a1, a6
                  xor          a7, s9, s3
                  xori         s10, s0, -1174
                  mulhsu       a0, s10, s6
                  ori          a4, s4, 1180
                  slti         s10, sp, -1578
                  sltiu        t0, s7, 1442
                  addi         t4, s1, 875
                  add          zero, s11, s7
                  divu         a3, s9, sp
                  and          s8, a0, gp
                  mulhu        t3, s10, s1
                  srl          s0, s7, a2
                  srli         s9, t2, 26
                  and          a0, a6, s4
                  sra          s11, s6, a7
                  rem          s9, s11, s4
                  or           a5, zero, a1
                  sltiu        a4, zero, 1678
                  sll          t1, t1, t3
                  mul          gp, s6, a7
                  mulh         t3, s8, a5
                  mul          t2, gp, a1
                  div          a7, t0, s9
                  xori         a0, a1, 444
                  andi         a2, s2, 1434
                  rem          s6, s7, t5
                  or           s8, gp, a3
                  add          a4, s2, a5
                  sll          s5, a0, t3
                  ori          t5, a0, -1547
                  remu         s11, sp, t5
                  srl          a7, t5, t4
                  sll          t1, s0, s5
                  rem          tp, t1, s11
                  xor          a5, a7, t1
                  sll          s0, a1, a1
                  mul          a7, s3, a7
                  xori         s0, a6, -257
                  slli         s3, t0, 29
                  divu         ra, s1, zero
                  sub          s0, s5, s2
                  divu         tp, a2, t6
                  sll          s2, s11, a6
                  mulhsu       a2, t1, a4
                  andi         t3, t5, 2031
                  add          s9, s5, s7
                  ori          t5, s7, 1306
                  slti         sp, s7, 956
                  remu         ra, s0, t2
                  add          a3, a0, a6
                  nop
                  slli         a5, a6, 31
                  mulh         t3, t3, s9
                  remu         t3, t1, t3
                  slti         t5, s11, 1674
                  lui          s7, 582816
                  sltu         t1, a2, s0
                  srai         t5, t6, 3
                  divu         t1, t1, tp
                  slti         s7, s5, 1730
                  mulh         a0, a5, a2
                  divu         gp, ra, s6
                  ori          t2, a7, 115
                  xor          t4, ra, t1
                  slli         sp, s6, 2
                  srli         a4, sp, 9
                  or           a5, s11, s3
                  add          t1, a4, t6
                  sltu         a3, s8, s7
                  slli         ra, a6, 24
                  slli         a7, s8, 24
                  sltu         t4, ra, t1
                  srai         a3, zero, 31
                  lui          s9, 815725
                  sll          s5, t5, ra
                  and          a4, sp, t0
                  sra          s2, s2, a1
                  srai         t6, s0, 15
                  sltu         a4, a6, s3
                  rem          s6, a2, ra
                  slti         s3, a4, 704
                  sltu         a1, t3, s9
                  slti         s8, s6, 558
                  auipc        a7, 717482
                  xori         t4, t2, 1479
                  xor          s5, t0, a4
                  xori         s2, t3, -29
                  mulhsu       s3, t5, a1
                  addi         tp, a1, 1057
                  mulhsu       s0, s7, a0
                  divu         s9, s5, s5
                  slti         zero, s5, -1195
                  slti         t3, t3, 408
                  mulh         s2, zero, s9
                  ori          s10, a3, 24
                  slti         s11, a6, 1853
                  srai         t5, t1, 23
                  andi         s3, s3, 1211
                  srli         t2, gp, 25
                  auipc        a5, 647453
                  remu         a5, s10, a4
                  and          s3, sp, ra
                  mul          t3, s0, s0
                  remu         a5, s2, s11
                  divu         a5, t5, ra
                  lui          t5, 386878
                  auipc        s5, 287707
                  rem          s2, s1, s11
                  mulhsu       s10, s8, t1
                  slt          ra, s6, t1
                  xori         t4, s3, 235
                  slt          tp, t4, ra
                  srl          a1, s6, ra
                  addi         s9, gp, 772
                  auipc        s5, 287331
                  slt          sp, t3, a3
                  and          gp, ra, t3
                  mulhu        s3, s2, a4
                  and          t4, t3, s8
                  ori          s9, t4, 1557
                  xor          sp, sp, t3
                  lui          t2, 576136
                  slti         t5, t2, -1267
                  slt          t0, a0, s3
                  mulhsu       gp, s2, t1
                  sll          zero, zero, a0
                  auipc        a4, 707592
                  sltu         s3, s3, s5
                  mulhsu       a4, s3, sp
                  srl          a1, s4, t2
                  ori          t5, a2, 1783
                  addi         s11, t1, 1703
                  nop
                  srl          ra, s4, t6
                  nop
                  mul          gp, t3, s11
                  andi         t3, t2, 1428
                  sub          a7, s7, a4
                  mulh         sp, a4, t2
                  srai         s11, ra, 0
                  srai         s9, s3, 16
                  lui          a4, 768755
                  sltu         s8, t3, s11
                  srl          t6, t5, a6
                  ori          a5, s5, 606
                  sub          t0, s8, a6
                  xor          s7, a4, a4
                  mulhsu       tp, a2, gp
                  xori         t0, t5, 1265
                  rem          tp, s11, t5
                  sra          a0, a6, s8
                  or           tp, s9, s7
                  xori         a0, t2, -662
                  slt          a1, s4, s3
                  and          s8, s5, s2
                  div          sp, t3, s3
                  remu         s10, a4, s9
                  slt          s10, zero, a6
                  divu         s0, a0, t1
                  remu         a3, t4, t2
                  slli         t3, t6, 25
                  rem          a4, a2, t2
                  andi         a5, s8, 748
                  lui          ra, 654465
                  sltu         t5, s10, t1
                  slt          a0, s11, a7
                  slt          gp, s10, tp
                  ori          s3, s8, 1990
                  div          tp, a2, s4
                  rem          s11, a5, zero
                  slti         s7, s0, 276
                  mul          t3, t0, s10
                  slti         a7, t2, -1440
                  xor          s11, ra, gp
                  divu         t5, t1, gp
                  xori         zero, a5, -1465
                  mul          s9, s3, s9
                  srl          s9, t5, zero
                  div          s10, a0, s2
                  divu         t6, a6, s0
                  divu         s7, t0, s2
                  slti         s0, a0, -1697
                  rem          tp, zero, t6
                  nop
                  auipc        t4, 404673
                  rem          s9, ra, gp
                  sltu         s7, t0, t0
                  sll          t4, s8, s0
                  sra          ra, a1, gp
                  xor          a1, t6, s9
                  add          a5, t1, s10
                  xori         t3, s4, -138
                  srai         a4, s1, 8
                  srl          s7, t1, a3
                  xor          s5, a5, t4
                  auipc        zero, 65022
                  srl          a4, s1, s3
                  sub          a0, s3, a4
                  addi         zero, a1, 1981
                  andi         t2, s8, -97
                  srai         s2, s5, 4
                  mulh         s5, a5, s11
                  sltu         t5, a5, zero
                  andi         zero, s4, -1657
                  slli         t2, s9, 18
                  sltu         a7, s10, s11
                  divu         s0, t6, a3
                  sra          a1, s8, s8
                  remu         tp, s4, s8
                  mul          t6, s3, s10
                  sub          a3, s0, a0
                  mul          ra, t3, s2
                  slt          zero, a6, t4
                  sra          s5, s5, a5
                  slt          zero, s5, a2
                  divu         t4, zero, s6
                  slt          a0, a4, a3
                  mulhsu       ra, s0, a0
                  srai         s0, t5, 3
                  sltu         a3, s7, a4
                  sra          a4, a6, s5
                  srai         s5, s6, 28
                  divu         s3, s2, s1
                  srai         s6, s1, 27
                  remu         s6, a0, t3
                  ori          sp, s2, -1327
                  addi         zero, s10, 1198
                  sltu         gp, a0, t4
                  nop
                  mulhsu       t6, s8, t2
                  mul          s2, s3, s9
                  add          s7, s3, s0
                  remu         gp, ra, t2
                  mulh         s10, a4, s0
                  mulh         t5, gp, t2
                  sra          a7, s3, s0
                  sll          a1, a1, s0
                  or           a0, s5, zero
                  remu         s2, tp, a2
                  mulh         ra, s0, t6
                  div          t5, s6, s6
                  remu         t3, s4, s7
                  remu         t2, a7, s0
                  div          t3, a1, s9
                  slli         t2, a5, 30
                  mul          a2, a7, s2
                  sltu         a0, s0, s2
                  sub          t1, t2, s4
                  auipc        s5, 115596
                  srai         s7, s9, 18
                  sra          t4, a1, a4
                  mul          a0, zero, s6
                  sra          a2, ra, t6
                  xor          t3, s3, s3
                  srli         zero, tp, 2
                  slt          s9, t0, t5
                  sub          a7, s8, s3
                  sltu         s3, s2, t4
                  sub          t4, s10, s6
                  mulhu        tp, a1, s8
                  sll          t6, zero, s0
                  div          a1, a4, zero
                  mul          a7, s3, ra
                  sltiu        t2, s2, 1716
                  mulhsu       a2, a2, s6
                  divu         t3, tp, t4
                  srai         s6, a4, 0
                  rem          t5, t5, t3
                  srli         s11, sp, 29
                  xor          t3, a2, s1
                  slti         t0, s8, 1402
                  mulhsu       tp, t0, s7
                  andi         a1, zero, -1793
                  auipc        t3, 931694
                  xor          s8, zero, sp
                  srli         t1, s8, 10
                  and          t6, ra, t4
                  mulhu        t2, ra, t0
                  div          s0, ra, a6
                  addi         s2, s8, -1659
                  and          s7, s8, s4
                  addi         a0, a6, -1903
                  mulhu        t3, gp, t2
                  divu         s9, s0, s7
                  sltu         t3, s3, s8
                  mulhsu       sp, a1, sp
                  or           s2, a3, a6
                  rem          s7, a5, sp
                  mul          t5, a5, a4
                  mul          a4, s7, a4
                  and          t0, sp, s4
                  add          t0, s2, t6
                  divu         t1, s2, t4
                  xori         s10, s11, 844
                  add          t5, t1, t2
                  ori          ra, zero, 14
                  srai         s0, s7, 16
                  srai         a1, a4, 31
                  srai         s11, t6, 20
                  sltu         t0, a3, a4
                  srl          t2, s10, t4
                  sltiu        s9, s3, -302
                  sltiu        a3, s1, 718
                  nop
                  mulhu        s11, t6, s0
                  add          a5, s9, zero
                  xori         s9, s9, 1682
                  add          s8, s3, a0
                  sub          t0, s9, a7
                  mulhu        a4, a0, s4
                  mul          s7, s9, s1
                  rem          sp, gp, s11
                  mulh         s9, sp, s11
                  sra          s5, t6, s6
                  divu         t4, t1, a5
                  divu         t3, gp, a4
                  and          t2, s3, t6
                  sra          t1, a5, gp
                  mulhsu       t2, t5, s9
                  div          s6, s10, t2
                  ori          a3, s6, 94
                  addi         s3, a5, 1736
                  mul          s9, s1, s0
                  auipc        t0, 177284
                  sltiu        a7, sp, 475
                  auipc        a0, 519964
                  sra          tp, s8, s0
                  div          gp, s5, gp
                  sltu         t4, t4, s8
                  mulhu        s6, s3, a6
                  andi         s2, s10, 1095
                  srai         s10, s0, 10
                  slli         t5, s1, 23
                  or           s7, s7, t0
                  or           a3, t0, a3
                  mulhu        t4, s1, a0
                  andi         s0, t0, 1534
                  andi         s2, s5, 1403
                  sll          a5, a6, gp
                  lui          s7, 163659
                  add          t3, s11, t0
                  mulh         s8, a4, s6
                  nop
                  add          t6, s4, t6
                  sltiu        ra, zero, -7
                  addi         a7, sp, 1107
                  srai         tp, a2, 1
                  mul          t1, t1, gp
                  add          t2, s9, t4
                  mulhu        a5, s4, zero
                  sll          a1, s3, t3
                  mulh         a2, t0, a7
                  rem          t1, s9, a7
                  ori          a2, a6, -725
                  mul          t1, s6, t5
                  remu         s5, s6, s9
                  srli         t2, s7, 21
                  mulhu        s3, t5, t5
                  slli         s8, gp, 13
                  slt          a7, a3, s7
                  and          a1, s4, t1
                  xori         a0, s6, -864
                  xori         a7, s1, -567
                  remu         t4, t5, t6
                  remu         t2, t6, tp
                  rem          s8, a3, ra
                  sra          a7, a7, a4
                  sub          s5, zero, a3
                  slt          a7, s11, a1
                  add          tp, s7, s9
                  mulhu        t6, s9, a4
                  slli         tp, t6, 26
                  mul          s10, s7, s2
                  sub          a2, a3, a5
                  srl          t3, a3, s2
                  sltiu        s11, tp, 1933
                  sra          s2, a1, t2
                  addi         a7, t0, -1671
                  slli         s6, s9, 28
                  srai         s6, s0, 3
                  add          tp, t5, s6
                  xori         a7, s1, 1910
                  addi         s10, s0, 1132
                  sll          t0, s0, ra
                  lui          zero, 864518
                  mulhu        gp, s10, s10
                  slti         s10, t5, 957
                  auipc        s7, 151428
                  and          t6, t2, a6
                  and          s7, zero, t0
                  xor          s0, a5, s6
                  srai         t1, s5, 0
                  mul          zero, t0, a2
                  andi         s7, s11, 1302
                  andi         a2, s3, 1674
                  sub          zero, gp, s6
                  mul          s6, s8, s10
                  slli         a1, tp, 9
                  srli         a5, tp, 8
                  div          a2, a4, t0
                  lui          gp, 74133
                  mulhu        t0, s1, zero
                  sll          s9, ra, s10
                  mulh         sp, s7, a5
                  sra          s10, zero, s5
                  mulh         gp, s11, s8
                  mulhu        s10, s11, a0
                  andi         zero, s3, -395
                  sub          ra, s10, s11
                  lui          s10, 898973
                  divu         s3, t5, zero
                  mulh         s8, t2, a4
                  srl          t6, s10, a7
                  sub          a7, t1, s10
                  srli         t1, s7, 11
                  mulhu        zero, t4, s5
                  sra          tp, s11, a0
                  mul          s9, sp, t6
                  remu         a0, s9, t5
                  lui          a3, 349689
                  slli         s9, s8, 2
                  xori         zero, s0, 1994
                  mulhu        s6, a2, a3
                  xor          a2, t2, a3
                  divu         a2, s5, zero
                  sll          s8, t3, a7
                  sltu         s5, tp, t0
                  andi         s8, s4, 1249
                  srli         a1, a7, 27
                  auipc        gp, 619216
                  slt          zero, s3, a1
                  slt          s8, t0, sp
                  auipc        a7, 615108
                  xori         s9, s5, -302
                  xor          sp, s11, a0
                  divu         t0, a1, a1
                  slt          a2, t2, tp
                  and          sp, s2, s0
                  sra          s0, t0, t3
                  xori         tp, s4, -814
                  rem          t2, t3, t3
                  mulh         t0, t5, sp
                  srl          t1, s11, s2
                  auipc        a1, 41147
                  mulh         s0, a0, s5
                  or           s3, s10, gp
                  slt          s0, s6, gp
                  slti         t5, t0, -1129
                  andi         zero, s7, 564
                  and          t4, s10, a1
                  addi         a5, a0, 784
                  srl          sp, s10, s8
                  srli         s8, sp, 19
                  mulh         t1, a1, sp
                  srl          s7, s9, t3
                  rem          s8, s9, t0
                  sub          s0, a0, s2
                  mulhu        ra, t1, s11
                  remu         s5, a7, s0
                  nop
                  rem          sp, gp, s0
                  srai         zero, sp, 22
                  sltiu        t5, t2, 1991
                  div          s8, a4, t5
                  mulh         a3, s2, t4
                  sltiu        a7, s11, 75
                  auipc        t0, 137608
                  slli         a5, t3, 29
                  slt          s11, t0, s5
                  or           s9, s9, ra
                  slti         s6, t2, -917
                  mul          s0, s6, t1
                  auipc        t2, 27947
                  div          a3, t1, s11
                  mul          s3, ra, s11
                  auipc        a1, 890211
                  lui          a5, 484247
                  and          a3, s3, gp
                  sltu         t1, gp, t3
                  mulhu        s5, a5, t5
                  and          s8, t4, t4
                  srai         t5, t2, 26
                  slli         a0, s5, 7
                  slli         a7, s9, 11
                  nop
                  remu         a2, gp, gp
                  remu         t3, s10, t3
                  andi         s8, s0, -671
                  xor          sp, gp, a7
                  slli         a3, a6, 23
                  add          s11, s6, zero
                  rem          t3, gp, s2
                  div          t5, s7, s3
                  slti         ra, s3, 459
                  mulh         a2, t4, gp
                  div          t3, s4, s8
                  remu         s7, s10, s2
                  srl          sp, s1, s3
                  slti         s11, zero, -804
                  xori         tp, s7, 806
                  add          s8, a3, zero
                  rem          t0, s2, t3
                  auipc        tp, 450006
                  srl          a7, a1, gp
                  remu         s2, t6, a3
                  mulhsu       ra, s8, a3
                  auipc        a2, 790738
                  srli         s7, t0, 14
                  and          s10, a1, t4
                  xor          s2, s3, a3
                  remu         a1, s6, s1
                  sltiu        s10, s11, 1326
                  slt          a7, zero, a2
                  sra          s5, a1, t1
                  sltiu        a3, t4, -53
                  addi         sp, a5, -1524
                  add          s9, t2, s1
                  and          s8, t6, t5
                  slt          t3, t2, t0
                  srli         t1, s3, 14
                  sll          a2, s4, s9
                  sltiu        a2, s6, 1246
                  andi         t0, tp, 1962
                  and          t0, s9, s3
                  remu         a2, a5, s11
                  mulh         a0, t2, s1
                  divu         ra, a7, ra
                  addi         t0, t6, -145
                  mulhsu       a2, s6, zero
                  srli         s8, a1, 16
                  or           a1, t6, t5
                  slt          t3, a1, a5
                  sltiu        s5, s4, 1595
                  divu         t2, t5, t2
                  srli         tp, s5, 22
                  slti         tp, a6, -702
                  add          a0, a2, a1
                  mulh         sp, s6, zero
                  or           t5, t0, a2
                  auipc        a3, 54275
                  srli         a2, t5, 14
                  divu         s2, s4, s4
                  slt          t3, t5, s0
                  or           s8, a6, s9
                  sll          ra, t5, zero
                  sltu         gp, a0, tp
                  ori          s10, zero, 1085
                  xor          s9, a4, s6
                  sltiu        a5, t4, 1290
                  xori         a0, s6, 468
                  slt          s9, t0, s8
                  sll          t2, s8, a1
                  remu         t5, ra, a5
                  or           t5, ra, s10
                  slti         a1, tp, -1685
                  add          ra, s3, t3
                  srai         s8, a5, 1
                  addi         t3, t4, -1554
                  xor          sp, a4, s6
                  addi         s5, tp, -1898
                  srli         s7, s0, 23
                  srl          s5, s7, a5
                  sltiu        s5, s0, -401
                  xori         s5, sp, -1291
                  remu         a1, t1, s10
                  sll          t3, s10, s2
                  and          gp, s1, s10
                  auipc        s10, 241336
                  sltiu        s9, t5, -265
                  sltu         t1, t1, t1
                  mulhsu       t2, gp, a1
                  auipc        t0, 234079
                  slt          a7, s6, s3
                  remu         t6, t4, s10
                  sub          a5, s3, ra
                  srli         s5, a5, 12
                  sll          s11, t2, s8
                  sra          s11, s3, s1
                  slti         s5, t6, -144
                  andi         s3, s6, 871
                  auipc        s2, 751510
                  ori          s10, a7, -624
                  divu         t5, a6, s4
                  srai         a1, t5, 22
                  xor          a2, gp, s7
                  remu         s8, a3, t3
                  slli         a2, s5, 18
                  lui          s3, 773238
                  sub          gp, s2, s10
                  add          a1, t1, t5
                  sltu         s7, sp, s5
                  auipc        a4, 558425
                  sll          zero, s7, s9
                  andi         s2, a0, -744
                  xor          s2, gp, s4
                  srai         s11, a5, 23
                  sll          zero, sp, gp
                  divu         s0, t1, t6
                  nop
                  div          s9, zero, s9
                  sll          t5, t1, t5
                  slti         s8, a4, -910
                  xor          gp, a6, s11
                  mulhu        t5, s1, s8
                  sltiu        ra, a3, 606
                  sltu         s2, sp, a6
                  or           s7, a4, a4
                  xori         a7, a5, -1495
                  lui          s6, 330352
                  lui          ra, 110459
                  remu         tp, s9, a0
                  slt          gp, t2, s11
                  srai         s0, a0, 17
                  xori         a3, t2, -1765
                  andi         a3, a4, 795
                  slti         t3, tp, 1515
                  srai         s7, s3, 27
                  rem          ra, s6, a5
                  divu         gp, t2, a5
                  xori         s8, a4, -55
                  add          tp, s7, ra
                  srai         s8, a2, 24
                  remu         t2, t2, a7
                  slli         a7, a6, 16
                  srai         t3, s10, 21
                  sltu         a7, sp, a3
                  xor          t6, t6, a6
                  or           t2, a4, t3
                  and          a2, s10, a3
                  mulh         a7, tp, s9
                  lui          s5, 245967
                  ori          a1, a1, 479
                  xor          a3, t0, a4
                  auipc        s11, 663627
                  remu         s6, s0, zero
                  nop
                  xor          t2, a3, s1
                  srl          t4, t5, a1
                  xor          s6, s6, gp
                  and          tp, a6, a3
                  nop
                  add          s3, s10, a0
                  slt          s2, t5, t2
                  mulh         a7, t5, zero
                  sra          t4, a2, s8
                  add          t3, s9, t2
                  addi         s8, a7, -506
                  srai         t6, a5, 8
                  lui          t1, 344818
                  auipc        s9, 348788
                  add          ra, t1, s8
                  xori         t3, s6, 281
                  auipc        t3, 244226
                  rem          s8, s3, t4
                  ori          a3, s2, 493
                  remu         a1, s4, t5
                  sltiu        s5, a6, 453
                  xori         t0, t4, -675
                  slt          zero, s2, tp
                  slt          s0, a5, gp
                  addi         a0, zero, -529
                  auipc        t2, 892539
                  slli         s0, a0, 6
                  mulh         s5, gp, a4
                  and          s6, t4, zero
                  div          s6, s0, s5
                  srli         t2, s9, 28
                  slli         t1, s9, 14
                  andi         sp, ra, -218
                  sra          a1, s7, s0
                  srl          s8, a5, sp
                  slt          t4, a0, a2
                  sll          t1, gp, t4
                  mulhu        a2, s8, s3
                  mulhu        zero, s1, s6
                  xor          s8, t4, s7
                  sll          t3, sp, s8
                  mul          a2, t5, s10
                  srli         gp, a7, 8
                  and          s9, a3, t2
                  and          t3, t1, s0
                  add          a7, a1, a5
                  sll          t5, a2, t5
                  auipc        gp, 79956
                  ori          a3, s3, 1986
                  mulhu        tp, s9, t6
                  rem          t2, a5, sp
                  sub          t2, s4, t6
                  lui          s5, 474758
                  divu         a5, a3, s1
                  sll          a0, a5, s11
                  slt          a7, t5, t5
                  rem          s0, s9, t5
                  divu         s7, s2, s3
                  sub          s8, gp, t0
                  slli         a1, a5, 21
                  nop
                  mul          t1, a6, s8
                  sub          s7, zero, s9
                  remu         a7, t1, s10
                  addi         t0, a6, 1753
                  andi         s6, a4, -247
                  nop
                  divu         t0, s0, t0
                  divu         sp, t6, a7
                  ori          a7, s11, 1947
                  andi         t3, t2, -1435
                  sltiu        sp, a3, -756
                  auipc        tp, 6066
                  xor          s9, zero, a3
                  sltiu        s11, a0, -512
                  sra          t6, s2, a2
                  sltiu        a3, s6, 1457
                  sltu         a3, t3, tp
                  srl          s8, zero, t0
                  sra          gp, t3, t1
                  xori         a3, s11, 648
                  sltu         s3, t2, sp
                  lui          a3, 285133
                  mulhu        t5, sp, t5
                  srl          gp, s6, zero
                  sra          gp, t5, t1
                  xor          s8, a6, a4
                  xor          t2, a6, a7
                  sltu         s9, t3, a4
                  slt          s9, zero, t0
                  xor          tp, s2, s1
                  mul          t3, s9, t0
                  div          zero, s8, sp
                  sltiu        t0, a3, 85
                  srai         a0, s11, 30
                  sub          a2, a5, a4
                  add          s6, ra, s2
                  slli         s9, s11, 25
                  add          tp, gp, a5
                  nop
                  div          s8, s11, t6
                  mulhsu       s9, s11, s7
                  xor          sp, s6, t1
                  auipc        a2, 399671
                  sltiu        sp, a0, 1054
                  sub          t0, gp, tp
                  ori          tp, a6, 17
                  div          a4, gp, a3
                  sub          t5, a3, s2
                  divu         s3, s3, s8
                  or           a4, s5, s5
                  sub          a5, t1, t4
                  mul          t5, s10, t6
                  ori          s8, a1, -535
                  sltiu        a7, a5, 1227
                  xori         s10, a4, -119
                  divu         a2, a4, a2
                  andi         s2, a4, -850
                  auipc        s5, 963061
                  xor          s3, s6, s6
                  sub          a1, sp, t4
                  sll          s2, s10, tp
                  slt          a4, a0, ra
                  add          t2, t6, ra
                  remu         s2, s5, a1
                  add          s8, s0, a6
                  sltu         t1, s1, a3
                  sll          t4, sp, s3
                  srai         sp, s9, 27
                  ori          a7, t5, -1077
                  sub          a3, s0, a4
                  add          s5, s5, gp
                  nop
                  add          a1, s6, ra
                  div          a3, s1, s5
                  div          a0, t1, s7
                  auipc        a1, 151671
                  sltu         t3, a6, s11
                  lui          s2, 475294
                  addi         a1, ra, 861
                  addi         s3, t4, 945
                  slti         s11, a5, -314
                  xor          s3, a7, s10
                  mul          s11, s2, s2
                  xori         t3, t3, -807
                  slt          gp, a1, a0
                  rem          a7, a0, t3
                  divu         s3, s3, zero
                  slti         a4, a0, 404
                  sub          a2, s5, s1
                  div          t0, a4, s3
                  xori         s9, t0, 1651
                  mulhu        s3, s3, s4
                  xori         s10, t2, 1732
                  sub          s8, s5, tp
                  srli         s11, a6, 6
                  slli         s6, a7, 15
                  sra          tp, a1, a0
                  srli         t3, t1, 12
                  slti         t3, s11, -1293
                  srl          s3, s8, s9
                  srl          s2, s0, a0
                  sub          s3, a0, s7
                  nop
                  slli         a0, a1, 14
                  nop
                  remu         a7, t2, t0
                  srai         s10, a6, 25
                  auipc        s2, 19456
                  xori         t1, s7, 548
                  auipc        a1, 589683
                  auipc        s0, 175566
                  or           s0, gp, a6
                  xor          s0, s8, sp
                  sltiu        a5, s11, -1053
                  srli         sp, a0, 22
                  mul          s2, t4, t1
                  mulhsu       s6, zero, s3
                  rem          sp, t1, s2
                  sll          a3, s6, s5
                  srai         sp, s7, 22
                  slti         ra, t1, -1214
                  nop
                  xori         t2, s8, 1507
                  srl          a2, a6, s8
                  mulhsu       s3, a0, s7
                  div          t5, a4, t5
                  remu         a1, t2, s0
                  sra          s5, zero, s6
                  mulh         a1, s5, a4
                  divu         a7, t2, tp
                  mulhu        s6, t0, s6
                  mulhu        gp, a7, s6
                  srai         s8, s4, 14
                  remu         ra, t1, a5
                  and          t4, s11, ra
                  srai         t5, a1, 30
                  xor          s7, tp, s5
                  mul          tp, a2, a0
                  mulh         a2, gp, a2
                  xor          t0, s4, s3
                  mulh         s8, t1, s5
                  div          s9, a5, s4
                  srai         a1, a4, 23
                  add          a1, s5, t6
                  xori         s9, a7, 1218
                  addi         s6, t2, 490
                  and          t3, a3, a6
                  srli         s3, s5, 1
                  remu         s11, a3, a2
                  xor          a7, s9, s6
                  sub          t6, s4, t1
                  slti         a7, a3, -1294
                  srli         sp, a3, 21
                  auipc        s7, 1025179
                  mul          a7, s10, s5
                  and          t5, sp, a4
                  auipc        s5, 780479
                  srli         s11, s9, 22
                  ori          zero, t3, 1084
                  ori          t1, t0, -791
                  add          ra, zero, gp
                  slli         s2, tp, 19
                  xor          s11, s11, s6
                  mulhsu       s5, s6, a5
                  sltiu        ra, a6, -1678
                  sll          s5, a6, s0
                  sll          s5, a1, s10
                  ori          s5, a7, 1541
                  addi         s9, s3, -218
                  slli         s2, s0, 28
                  andi         s8, a1, -1759
                  div          t1, s2, t4
                  nop
                  slt          s10, s1, s6
                  sltu         t0, s10, sp
                  sra          s2, s10, ra
                  srai         s8, a1, 21
                  addi         s6, sp, -1839
                  lui          a0, 1012820
                  sub          s3, a3, t1
                  sub          s6, s3, a5
                  mul          a1, a7, s9
                  mulhu        a0, s8, tp
                  mulh         a1, zero, a0
                  addi         t0, s6, -593
                  sub          s0, t6, tp
                  slti         s6, t0, 543
                  slt          ra, a2, s4
                  and          t2, s5, a4
                  sub          t3, gp, s9
                  remu         a5, s9, t5
                  sub          s7, s9, s3
                  lui          a3, 634501
                  srli         s11, s0, 14
                  sub          zero, s7, s4
                  ori          a0, s10, 1698
                  div          zero, t5, a0
                  slli         s11, a5, 29
                  andi         s9, a6, -325
                  xor          t3, s11, s10
                  div          a7, t3, a5
                  lui          s8, 500873
                  mulh         s3, s3, a3
                  sra          t5, a4, s3
                  divu         s6, s2, t3
                  srl          a2, sp, s10
                  sltiu        a3, s10, -1030
                  sltiu        s3, t1, -1280
                  sltiu        s0, t2, 1786
                  mulh         s11, s6, s6
                  rem          a0, t5, t3
                  nop
                  slli         s2, s0, 14
                  nop
                  slli         s5, zero, 28
                  xori         a5, s6, -1513
                  sltiu        t3, t6, 300
                  remu         s9, a1, t0
                  mulhu        t0, t0, s6
                  xor          t2, zero, s4
                  srl          a7, t4, a6
                  sltu         t5, s5, a1
                  mulhsu       a7, s0, t0
                  slt          s3, a0, s8
                  sltu         sp, a6, s2
                  rem          gp, s6, a7
                  slti         a4, t4, -43
                  addi         ra, gp, 317
                  mulhsu       t0, s0, t6
                  sra          t6, a7, s11
                  mulhu        a3, s9, t4
                  remu         a2, a2, t3
                  sltu         s6, s9, a5
                  rem          s0, a0, a7
                  mulhsu       t1, s0, ra
                  srai         tp, s4, 28
                  lui          a3, 316612
                  sltiu        a4, sp, -1631
                  mulhu        a1, a6, s2
                  srl          t2, s4, s1
                  sub          s9, tp, s2
                  divu         a2, a2, s0
                  nop
                  remu         s11, a2, s6
                  remu         s5, t0, sp
                  sltiu        t5, s10, -253
                  mulhsu       a4, s1, s2
                  srli         t3, s4, 3
                  slt          t6, s8, tp
                  or           s6, sp, t4
                  lui          s9, 564754
                  mulh         s10, a5, s5
                  sll          s0, a3, s7
                  nop
                  and          t3, gp, s7
                  sub          gp, t5, t5
                  xori         s9, gp, 64
                  slt          s2, s11, s10
                  slti         sp, s11, -1755
                  div          a2, t6, t4
                  remu         t4, sp, s9
                  slti         gp, sp, -984
                  add          sp, s10, t6
                  nop
                  or           a1, sp, t3
                  mulhsu       s9, s1, a6
                  sra          t3, s10, a2
                  div          t3, s5, s8
                  mulh         t3, s9, s8
                  sltiu        t2, t1, -203
                  sltu         t5, t4, zero
                  rem          zero, s6, zero
                  and          s2, a5, s10
                  andi         a0, t2, 914
                  andi         gp, gp, 2020
                  sltu         s2, s3, t6
                  andi         t5, zero, -1547
                  or           t5, sp, a0
                  rem          t4, ra, t3
                  rem          s9, sp, s9
                  auipc        a2, 596095
                  auipc        s9, 215676
                  addi         a5, a1, -1091
                  slti         s10, t4, 1194
                  xori         gp, ra, -1804
                  slli         zero, s8, 17
                  srl          s7, a3, s5
                  xori         sp, a6, 1625
                  xori         s6, s3, 458
                  nop
                  and          t6, s4, ra
                  add          t4, s0, s10
                  xori         t1, zero, -1693
                  slti         s11, s1, 364
                  addi         s6, zero, 77
                  div          t3, t1, tp
                  slli         s8, t1, 3
                  slti         s0, tp, 1659
                  auipc        s9, 922053
                  xor          t1, t0, s3
                  divu         s8, ra, s4
                  slti         s5, s2, -1323
                  sub          t3, s6, a1
                  sra          a1, t1, ra
                  lui          a7, 218823
                  auipc        t1, 410941
                  slti         a0, s7, -1198
                  div          a3, s10, s3
                  mul          t3, t4, a3
                  sub          s8, ra, tp
                  mul          t6, s11, s2
                  srai         s11, a6, 31
                  div          a3, s1, a5
                  sll          t1, s1, zero
                  mul          s7, s10, a2
                  slt          s6, a3, t2
                  sltiu        zero, s5, 1783
                  sub          t0, s7, a1
                  mul          sp, s7, s2
                  srli         a4, s6, 23
                  remu         tp, a5, a4
                  rem          a7, t5, zero
                  srl          s8, a4, sp
                  remu         s2, sp, a5
                  remu         s5, s8, t3
                  mulh         t6, zero, s11
                  rem          a3, s2, s11
                  mulh         a7, gp, s0
                  mulh         t3, zero, zero
                  mulhu        t3, a7, a2
                  slt          a7, s8, ra
                  andi         t5, a4, 1263
                  sltiu        sp, s1, 713
                  mulhu        a4, t1, a1
                  sra          s6, s0, a7
                  andi         a5, s7, -1396
                  mulhu        a4, s2, ra
                  div          s6, t4, s11
                  slti         a1, tp, 1559
                  slti         a5, ra, 692
                  addi         ra, t6, 657
                  lui          sp, 729334
                  sltiu        a5, a3, 169
                  ori          t1, s4, 1885
                  auipc        t6, 341633
                  addi         ra, t2, 1692
                  xor          a4, a5, a2
                  nop
                  slti         a0, zero, -921
                  xor          a2, s1, a6
                  sub          t4, s0, t4
                  ori          s8, s9, -785
                  divu         s5, a0, sp
                  div          ra, a7, t5
                  srai         t2, gp, 13
                  srai         a3, a6, 27
                  sra          t2, s9, s2
                  add          s6, a4, a6
                  or           sp, ra, s6
                  sltiu        t3, s1, 1421
                  ori          s6, s9, -1187
                  sltu         t3, a4, a2
                  or           a7, ra, t2
                  sub          s8, s9, a1
                  xor          s8, s5, a6
                  mulhsu       ra, s5, t1
                  xor          t4, s2, t2
                  mulh         t0, tp, tp
                  sll          s5, a3, a6
                  mul          s6, t6, a0
                  andi         s2, s3, 1574
                  slt          zero, t4, s10
                  mulhu        t2, a3, s4
                  ori          t0, a1, -603
                  mul          s9, t6, gp
                  mulh         t3, a3, t6
                  divu         s0, ra, a5
                  mul          s9, t0, gp
                  slti         s5, s4, -1504
                  xori         zero, s9, -1891
                  xori         s0, t2, 1138
                  andi         tp, s1, -961
                  sub          t0, t1, a3
                  srli         a2, s5, 16
                  ori          a4, a7, -226
                  lui          tp, 889407
                  slti         t6, t1, 935
                  nop
                  mulhu        t0, s5, s11
                  xori         s3, s6, -640
                  mulh         a2, t6, s4
                  nop
                  sra          t2, s10, ra
                  mulh         t0, t1, s6
                  slti         t2, s6, -1100
                  add          a5, s10, t4
                  div          t4, a6, gp
                  mul          s2, t4, a2
                  sll          a5, t5, t3
                  mul          zero, t1, t2
                  xori         s6, t5, 1088
                  and          s5, s3, a4
                  mulhsu       s8, gp, t5
                  sltiu        t5, a0, -189
                  and          a7, t5, s5
                  mulhu        s2, s10, t3
                  sub          a1, t0, s7
                  xor          a7, zero, s2
                  xori         a1, s10, -1571
                  xor          a1, a6, tp
                  andi         gp, t0, 1126
                  add          a2, s10, a4
                  mulhu        s10, s8, s7
                  remu         zero, a1, a7
                  mul          a0, s3, t6
                  div          tp, gp, t2
                  remu         s10, s5, a3
                  slli         s6, s5, 19
                  xori         a0, s7, -1785
                  or           s9, s4, s7
                  sub          s10, s6, a2
                  addi         ra, s6, 1454
                  add          a1, s11, sp
                  slt          t5, s1, t2
                  srli         s11, a2, 30
                  slti         s10, s10, -1990
                  rem          s8, a1, a0
                  addi         s5, a7, 1697
                  ori          gp, a0, 1936
                  slt          s7, t1, a0
                  or           gp, a0, tp
                  sltiu        s6, t6, -1951
                  srl          gp, s11, ra
                  slli         s11, s6, 22
                  slti         s6, s7, 550
                  mulhu        s7, a2, t5
                  mulhsu       a3, a6, sp
                  or           sp, s8, a3
                  sub          t1, s4, a4
                  or           s11, s1, t3
                  sub          t6, t0, a7
                  div          t2, s2, t1
                  xor          tp, a4, t4
                  div          a3, gp, a6
                  divu         s0, a7, a3
                  and          a7, ra, s10
                  add          t0, s0, a5
                  xor          a0, s10, zero
                  lui          s0, 913839
                  div          a0, s3, s9
                  divu         a0, a4, s8
                  slti         a2, zero, -1441
                  sltu         a5, ra, t3
                  add          s5, s3, s6
                  nop
                  auipc        s9, 545949
                  nop
                  slli         s0, t5, 30
                  and          ra, t6, s8
                  remu         a2, sp, a2
                  ori          t6, a0, 716
                  andi         s11, s11, -1883
                  lui          a4, 778133
                  nop
                  or           s11, s11, t1
                  mul          s8, a2, t6
                  andi         t4, s11, -1247
                  remu         s9, s9, t2
                  add          ra, a4, tp
                  add          s7, t2, s8
                  lui          a1, 198030
                  add          a7, a7, s0
                  lui          a2, 633693
                  mulhu        s5, a1, a0
                  andi         t3, s4, 1233
                  mulhu        s10, a5, t0
                  srl          t0, t4, t2
                  ori          t1, s4, 1248
                  mul          s9, s4, s8
                  mulh         gp, t1, t1
                  divu         s2, s6, a2
                  divu         t6, t2, a1
                  div          t1, a6, t2
                  div          s9, tp, a4
                  addi         a1, s3, -75
                  mul          t1, t0, a0
                  andi         a5, t3, -497
                  rem          t3, s9, s11
                  slti         s6, sp, -345
                  addi         zero, t4, 1378
                  slti         s11, t2, -1422
                  xor          a0, t6, tp
                  sll          t3, a2, zero
                  nop
                  addi         a3, sp, -1966
                  add          t6, a7, a2
                  auipc        s8, 702869
                  ori          s5, t6, -511
                  xor          s7, s3, ra
                  ori          t3, t5, -1868
                  remu         s6, tp, s7
                  srl          t0, s4, t5
                  slti         a7, a1, 255
                  rem          gp, s10, a1
                  xor          a5, t2, s9
                  lui          s9, 992563
                  sltu         zero, a3, tp
                  sra          s8, t3, s4
                  mulhu        a1, t3, t6
                  rem          s5, ra, s1
                  xor          t5, ra, gp
                  sub          s6, s0, a4
                  lui          gp, 311851
                  lui          a7, 755505
                  div          s9, sp, a7
                  slli         t2, t4, 21
                  rem          s6, s5, t1
                  xor          t4, s4, t1
                  xori         t3, s3, -1199
                  sltiu        a2, s10, -503
                  lui          a2, 115038
                  or           s9, s5, zero
                  mul          a2, gp, t3
                  or           s8, s0, s4
                  mulhsu       s11, s6, s6
                  mulh         zero, s6, s0
                  remu         a7, s0, s5
                  addi         a3, s10, -979
                  auipc        sp, 647467
                  or           a2, s7, s4
                  rem          t0, s11, s11
                  nop
                  mul          a7, a6, tp
                  slli         sp, s11, 8
                  mulh         a1, t1, s4
                  remu         a7, t1, s11
                  lui          a5, 245341
                  slt          t6, s7, t1
                  sll          a1, a1, s1
                  mul          s8, a7, a1
                  srli         t0, t1, 7
                  and          t4, s8, t6
                  sra          a0, s3, a6
                  mul          a5, a0, a2
                  and          s11, s11, gp
                  xori         t3, s4, -1796
                  sub          s0, s2, s9
                  sltu         ra, a7, a4
                  slti         t4, a3, 569
                  slli         zero, zero, 4
                  ori          s0, a7, 1388
                  xori         gp, a7, 75
                  andi         a3, a2, 207
                  divu         a3, t5, t0
                  rem          s11, s0, a1
                  xor          ra, tp, s9
                  mulhsu       ra, s10, t1
                  div          s5, tp, s11
                  remu         t4, s7, t3
                  slli         s5, a5, 26
                  slli         a5, s9, 22
                  sltiu        s8, t4, -549
                  xor          a2, s11, s7
                  ori          a4, a7, -951
                  srli         t0, zero, 2
                  slli         s8, s11, 18
                  add          a4, s11, a7
                  slli         s8, t5, 19
                  rem          a7, t3, t2
                  andi         ra, t5, 1358
                  lui          a5, 487713
                  sltu         s5, gp, a7
                  sll          t6, gp, s11
                  xor          zero, a5, s7
                  slli         t0, t1, 13
                  la x20, test_done
                  jalr x0, x20, 0
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
                  sw  x9, (x16)
                  add x9, x16, zero
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x16, x9, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_2:
                  addi x16, x16, -4
                  sw  x9, (x16)
                  add x9, x16, zero
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x16, x9, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_3:
                  addi x16, x16, -4
                  sw  x9, (x16)
                  add x9, x16, zero
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x16, x9, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_4:
                  addi x16, x16, -4
                  sw  x9, (x16)
                  add x9, x16, zero
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x16, x9, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_5:
                  addi x16, x16, -4
                  sw  x9, (x16)
                  add x9, x16, zero
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x16, x9, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_6:
                  addi x16, x16, -4
                  sw  x9, (x16)
                  add x9, x16, zero
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x16, x9, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_7:
                  addi x16, x16, -4
                  sw  x9, (x16)
                  add x9, x16, zero
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x16, x9, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_8:
                  addi x16, x16, -4
                  sw  x9, (x16)
                  add x9, x16, zero
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x16, x9, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_9:
                  addi x16, x16, -4
                  sw  x9, (x16)
                  add x9, x16, zero
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x16, x9, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_10:
                  addi x16, x16, -4
                  sw  x9, (x16)
                  add x9, x16, zero
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x16, x9, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_11:
                  addi x16, x16, -4
                  sw  x9, (x16)
                  add x9, x16, zero
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x16, x9, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_12:
                  addi x16, x16, -4
                  sw  x9, (x16)
                  add x9, x16, zero
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x16, x9, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_13:
                  addi x16, x16, -4
                  sw  x9, (x16)
                  add x9, x16, zero
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x16, x9, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_14:
                  addi x16, x16, -4
                  sw  x9, (x16)
                  add x9, x16, zero
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x16, x9, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_15:
                  addi x16, x16, -4
                  sw  x9, (x16)
                  add x9, x16, zero
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x16, x9, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

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
                  sw  x9, (x16)
                  add x9, x16, zero
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x16, x9, zero
                  csrr x28, 0x341 # MEPC
                  csrr x28, 0x342 # MCAUSE
                  li x30, 0x3 # BREAKPOINT
                  beq x28, x30, ebreak_handler
                  li x30, 0x8 # ECALL_UMODE
                  beq x28, x30, ecall_handler
                  li x30, 0x9 # ECALL_SMODE
                  beq x28, x30, ecall_handler
                  li x30, 0xb # ECALL_MMODE
                  beq x28, x30, ecall_handler
                  li x30, 0x1
                  beq x28, x30, instr_fault_handler
                  li x30, 0x5
                  beq x28, x30, load_fault_handler
                  li x30, 0x7
                  beq x28, x30, store_fault_handler
                  li x30, 0xc
                  beq x28, x30, pt_fault_handler
                  li x30, 0xd
                  beq x28, x30, pt_fault_handler
                  li x30, 0xf
                  beq x28, x30, pt_fault_handler
                  li x30, 0x2 # ILLEGAL_INSTRUCTION
                  beq x28, x30, illegal_instr_handler
                  csrr x30, 0x343 # MTVAL
                  1: la x20, test_done
                  jalr x1, x20, 0

ecall_handler:    
                  la x28, _start
                  sw x0, 0(x28)
                  sw x1, 4(x28)
                  sw x2, 8(x28)
                  sw x3, 12(x28)
                  sw x4, 16(x28)
                  sw x5, 20(x28)
                  sw x6, 24(x28)
                  sw x7, 28(x28)
                  sw x8, 32(x28)
                  sw x9, 36(x28)
                  sw x10, 40(x28)
                  sw x11, 44(x28)
                  sw x12, 48(x28)
                  sw x13, 52(x28)
                  sw x14, 56(x28)
                  sw x15, 60(x28)
                  sw x16, 64(x28)
                  sw x17, 68(x28)
                  sw x18, 72(x28)
                  sw x19, 76(x28)
                  sw x20, 80(x28)
                  sw x21, 84(x28)
                  sw x22, 88(x28)
                  sw x23, 92(x28)
                  sw x24, 96(x28)
                  sw x25, 100(x28)
                  sw x26, 104(x28)
                  sw x27, 108(x28)
                  sw x28, 112(x28)
                  sw x29, 116(x28)
                  sw x30, 120(x28)
                  sw x31, 124(x28)
                  la x20, write_tohost
                  jalr x0, x20, 0

instr_fault_handler:
                  add x9, x16, zero
                  lw  x1, 4(x9)
                  lw  x2, 8(x9)
                  lw  x3, 12(x9)
                  lw  x4, 16(x9)
                  lw  x5, 20(x9)
                  lw  x6, 24(x9)
                  lw  x7, 28(x9)
                  lw  x8, 32(x9)
                  lw  x9, 36(x9)
                  lw  x10, 40(x9)
                  lw  x11, 44(x9)
                  lw  x12, 48(x9)
                  lw  x13, 52(x9)
                  lw  x14, 56(x9)
                  lw  x15, 60(x9)
                  lw  x16, 64(x9)
                  lw  x17, 68(x9)
                  lw  x18, 72(x9)
                  lw  x19, 76(x9)
                  lw  x20, 80(x9)
                  lw  x21, 84(x9)
                  lw  x22, 88(x9)
                  lw  x23, 92(x9)
                  lw  x24, 96(x9)
                  lw  x25, 100(x9)
                  lw  x26, 104(x9)
                  lw  x27, 108(x9)
                  lw  x28, 112(x9)
                  lw  x29, 116(x9)
                  lw  x30, 120(x9)
                  lw  x31, 124(x9)
                  addi x9, x9, 128
                  add x16, x9, zero
                  lw  x9, (x16)
                  addi x16, x16, 4
                  mret

load_fault_handler:
                  add x9, x16, zero
                  lw  x1, 4(x9)
                  lw  x2, 8(x9)
                  lw  x3, 12(x9)
                  lw  x4, 16(x9)
                  lw  x5, 20(x9)
                  lw  x6, 24(x9)
                  lw  x7, 28(x9)
                  lw  x8, 32(x9)
                  lw  x9, 36(x9)
                  lw  x10, 40(x9)
                  lw  x11, 44(x9)
                  lw  x12, 48(x9)
                  lw  x13, 52(x9)
                  lw  x14, 56(x9)
                  lw  x15, 60(x9)
                  lw  x16, 64(x9)
                  lw  x17, 68(x9)
                  lw  x18, 72(x9)
                  lw  x19, 76(x9)
                  lw  x20, 80(x9)
                  lw  x21, 84(x9)
                  lw  x22, 88(x9)
                  lw  x23, 92(x9)
                  lw  x24, 96(x9)
                  lw  x25, 100(x9)
                  lw  x26, 104(x9)
                  lw  x27, 108(x9)
                  lw  x28, 112(x9)
                  lw  x29, 116(x9)
                  lw  x30, 120(x9)
                  lw  x31, 124(x9)
                  addi x9, x9, 128
                  add x16, x9, zero
                  lw  x9, (x16)
                  addi x16, x16, 4
                  mret

store_fault_handler:
                  add x9, x16, zero
                  lw  x1, 4(x9)
                  lw  x2, 8(x9)
                  lw  x3, 12(x9)
                  lw  x4, 16(x9)
                  lw  x5, 20(x9)
                  lw  x6, 24(x9)
                  lw  x7, 28(x9)
                  lw  x8, 32(x9)
                  lw  x9, 36(x9)
                  lw  x10, 40(x9)
                  lw  x11, 44(x9)
                  lw  x12, 48(x9)
                  lw  x13, 52(x9)
                  lw  x14, 56(x9)
                  lw  x15, 60(x9)
                  lw  x16, 64(x9)
                  lw  x17, 68(x9)
                  lw  x18, 72(x9)
                  lw  x19, 76(x9)
                  lw  x20, 80(x9)
                  lw  x21, 84(x9)
                  lw  x22, 88(x9)
                  lw  x23, 92(x9)
                  lw  x24, 96(x9)
                  lw  x25, 100(x9)
                  lw  x26, 104(x9)
                  lw  x27, 108(x9)
                  lw  x28, 112(x9)
                  lw  x29, 116(x9)
                  lw  x30, 120(x9)
                  lw  x31, 124(x9)
                  addi x9, x9, 128
                  add x16, x9, zero
                  lw  x9, (x16)
                  addi x16, x16, 4
                  mret

ebreak_handler:   
                  csrr  x28, 0x341
                  addi  x28, x28, 4
                  csrw  0x341, x28
                  add x9, x16, zero
                  lw  x1, 4(x9)
                  lw  x2, 8(x9)
                  lw  x3, 12(x9)
                  lw  x4, 16(x9)
                  lw  x5, 20(x9)
                  lw  x6, 24(x9)
                  lw  x7, 28(x9)
                  lw  x8, 32(x9)
                  lw  x9, 36(x9)
                  lw  x10, 40(x9)
                  lw  x11, 44(x9)
                  lw  x12, 48(x9)
                  lw  x13, 52(x9)
                  lw  x14, 56(x9)
                  lw  x15, 60(x9)
                  lw  x16, 64(x9)
                  lw  x17, 68(x9)
                  lw  x18, 72(x9)
                  lw  x19, 76(x9)
                  lw  x20, 80(x9)
                  lw  x21, 84(x9)
                  lw  x22, 88(x9)
                  lw  x23, 92(x9)
                  lw  x24, 96(x9)
                  lw  x25, 100(x9)
                  lw  x26, 104(x9)
                  lw  x27, 108(x9)
                  lw  x28, 112(x9)
                  lw  x29, 116(x9)
                  lw  x30, 120(x9)
                  lw  x31, 124(x9)
                  addi x9, x9, 128
                  add x16, x9, zero
                  lw  x9, (x16)
                  addi x16, x16, 4
                  mret

illegal_instr_handler:
                  csrr  x28, 0x341
                  addi  x28, x28, 4
                  csrw  0x341, x28
                  add x9, x16, zero
                  lw  x1, 4(x9)
                  lw  x2, 8(x9)
                  lw  x3, 12(x9)
                  lw  x4, 16(x9)
                  lw  x5, 20(x9)
                  lw  x6, 24(x9)
                  lw  x7, 28(x9)
                  lw  x8, 32(x9)
                  lw  x9, 36(x9)
                  lw  x10, 40(x9)
                  lw  x11, 44(x9)
                  lw  x12, 48(x9)
                  lw  x13, 52(x9)
                  lw  x14, 56(x9)
                  lw  x15, 60(x9)
                  lw  x16, 64(x9)
                  lw  x17, 68(x9)
                  lw  x18, 72(x9)
                  lw  x19, 76(x9)
                  lw  x20, 80(x9)
                  lw  x21, 84(x9)
                  lw  x22, 88(x9)
                  lw  x23, 92(x9)
                  lw  x24, 96(x9)
                  lw  x25, 100(x9)
                  lw  x26, 104(x9)
                  lw  x27, 108(x9)
                  lw  x28, 112(x9)
                  lw  x29, 116(x9)
                  lw  x30, 120(x9)
                  lw  x31, 124(x9)
                  addi x9, x9, 128
                  add x16, x9, zero
                  lw  x9, (x16)
                  addi x16, x16, 4
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x28, 0x300 # MSTATUS;
                  csrr  x28, 0x304 # MIE;
                  csrr  x28, 0x344 # MIP;
                  csrrc x28, 0x344, x28 # MIP;
                  add x9, x16, zero
                  lw  x1, 4(x9)
                  lw  x2, 8(x9)
                  lw  x3, 12(x9)
                  lw  x4, 16(x9)
                  lw  x5, 20(x9)
                  lw  x6, 24(x9)
                  lw  x7, 28(x9)
                  lw  x8, 32(x9)
                  lw  x9, 36(x9)
                  lw  x10, 40(x9)
                  lw  x11, 44(x9)
                  lw  x12, 48(x9)
                  lw  x13, 52(x9)
                  lw  x14, 56(x9)
                  lw  x15, 60(x9)
                  lw  x16, 64(x9)
                  lw  x17, 68(x9)
                  lw  x18, 72(x9)
                  lw  x19, 76(x9)
                  lw  x20, 80(x9)
                  lw  x21, 84(x9)
                  lw  x22, 88(x9)
                  lw  x23, 92(x9)
                  lw  x24, 96(x9)
                  lw  x25, 100(x9)
                  lw  x26, 104(x9)
                  lw  x27, 108(x9)
                  lw  x28, 112(x9)
                  lw  x29, 116(x9)
                  lw  x30, 120(x9)
                  lw  x31, 124(x9)
                  addi x9, x9, 128
                  add x16, x9, zero
                  lw  x9, (x16)
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
