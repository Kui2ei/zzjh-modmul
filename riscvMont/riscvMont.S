# -----------------------------------------------
# Montgomery Modular Multiplication in RISC-V
# Input: a0 = A[] address, a1 = B[] address
#        a2 = N[] address, a3 = size (in 64-bit words)
#        a4 = m' (precomputed -N^{-1} mod 2^64)
# Output: t[] = A*B*R^{-1} mod N (stored in a0)
# -----------------------------------------------

.section .text
.global montgomery_mul

montgomery_mul:
    # Prologue: Save registers
    addi    sp, sp, -64
    sd      s0, 0(sp)
    sd      s1, 8(sp)
    # ... 保存其他需要使用的寄存器 (s2-s11)

    # Initialize tmp[] to 0 (假设tmp在内存预留空间)
    la      t0, tmp_base       # tmp_base为临时数组基地址
    mv      t1, a3             # size
    slli    t1, t1, 3          # size in bytes
    add     t2, t0, t1         # 结束地址
1:
    sd      zero, 0(t0)
    addi    t0, t0, 8
    blt     t0, t2, 1b

    # 主循环: i从0到size-1
    li      s0, 0              # i = 0
outer_loop:
    # Step 1: 计算 u_i = (tmp[0] + A[i]*B[0]) * m' mod 2^64
    # ---------------------------------------------------
    # 加载A[i]
    slli    t0, s0, 3
    add     t1, a0, t0
    ld      t1, 0(t1)          # t1 = A[i]

    # 加载B[0]
    ld      t2, 0(a1)           # t2 = B[0]

    # 计算A[i]*B[0]
    mul     t3, t1, t2          # t3 = low(A[i]*B[0])
    mulhu   t4, t1, t2          # t4 = high(A[i]*B[0])

    # 加载tmp[0]
    la      t5, tmp_base
    ld      t6, 0(t5)           # t6 = tmp[0]

    # 加法: tmp[0] + low(A[i]*B[0])
    add     t3, t3, t6
    sltu    t0, t3, t6         # 检测进位
    add     t4, t4, t0         # 处理高位进位

    # 计算u_i = (tmp[0] + A[i]*B[0]) * m'
    mul     s1, t3, a4         # s1 = u_i (mod 2^64)

    # Step 2: 计算 tmp = (tmp + A[i]*B + u_i*N) >> 64
    # -------------------------------------------------
    # 第一部分: tmp += A[i] * B (双精度乘加)
    mv      s2, a1             # B指针
    la      s3, tmp_base        # tmp指针
    li      s4, 0              # j = 0
    li      s5, 0              # 进位

mul_loop:
    # 加载B[j]
    ld      t0, 0(s2)           # t0 = B[j]

    # 计算A[i] * B[j]
    mul     t1, t1, t0          # t1 = low(A[i]*B[j])
    mulhu   t2, t1, t0          # t2 = high(A[i]*B[j])

    # 加载tmp[j]
    ld      t3, 0(s3)

    # 累加到tmp[j]
    add     t4, t3, t1
    sltu    t5, t4, t3
    add     t5, t5, s5         # 进位累加
    add     t4, t4, s5         # 加上前一轮进位
    sd      t4, 0(s3)

    # 更新进位
    add     s5, t2, t5

    # 指针递增
    addi    s2, s2, 8
    addi    s3, s3, 8
    addi    s4, s4, 1
    blt     s4, a3, mul_loop

    # 第二部分: tmp += u_i * N (双精度乘加)
    mv      s2, a2             # N指针
    la      s3, tmp_base        # tmp指针
    li      s4, 0              # j = 0
    li      s5, 0              # 进位

n_mul_loop:
    # 加载N[j]
    ld      t0, 0(s2)           # t0 = N[j]

    # 计算u_i * N[j]
    mul     t1, s1, t0          # t1 = low(u_i*N[j])
    mulhu   t2, s1, t0          # t2 = high(u_i*N[j])

    # 加载tmp[j]
    ld      t3, 0(s3)

    # 累加到tmp[j]
    add     t4, t3, t1
    sltu    t5, t4, t3
    add     t5, t5, s5         # 进位累加
    add     t4, t4, s5         # 加上前一轮进位
    sd      t4, 0(s3)

    # 更新进位
    add     s5, t2, t5

    # 指针递增
    addi    s2, s2, 8
    addi    s3, s3, 8
    addi    s4, s4, 1
    blt     s4, a3, n_mul_loop

    # Step 3: tmp = tmp >> 64 (即丢弃最低字)
    la      t0, tmp_base
    addi    t1, a3, -1         # size-1
    slli    t1, t1, 3
    add     t2, t0, t1         # 结束地址
shift_loop:
    ld      t3, 8(t0)          # 加载下一个字
    sd      t3, 0(t0)          # 存储到当前位置
    addi    t0, t0, 8
    blt     t0, t2, shift_loop

    # 循环控制
    addi    s0, s0, 1
    blt     s0, a3, outer_loop

    # Final Reduction: if tmp >= N, then tmp -= N
    # --------------------------------------------
    la      t0, tmp_base
    mv      t1, a2             # N指针
    li      t2, 0              # 借位标志
    li      t3, 0              # 索引

compare_loop:
    ld      t4, 0(t0)          # tmp[i]
    ld      t5, 0(t1)          # N[i]
    bltu    t4, t5, less_than
    bgtu    t4, t5, greater_than
    addi    t0, t0, 8
    addi    t1, t1, 8
    addi    t3, t3, 1
    blt     t3, a3, compare_loop
    j       do_subtract        # 完全相等，需要减去N

greater_than:
    li      t2, 1
    j       subtract_check

less_than:
    li      t2, 0
    j       subtract_check

subtract_check:
    beqz    t2, no_subtract

do_subtract:
    # 执行 tmp -= N
    la      t0, tmp_base
    mv      t1, a2
    li      t2, 0              # 借位
    li      t3, 0              # 索引

subtract_loop:
    ld      t4, 0(t0)          # tmp[i]
    ld      t5, 0(t1)          # N[i]
    sub     t6, t4, t5
    sub     t6, t6, t2         # 减去借位
    sltu    t2, t4, t6         # 新的借位
    sd      t6, 0(t0)
    addi    t0, t0, 8
    addi    t1, t1, 8
    addi    t3, t3, 1
    blt     t3, a3, subtract_loop

no_subtract:
    # Epilogue: 恢复寄存器并返回
    # ... 恢复保存的寄存器
    ld      s0, 0(sp)
    ld      s1, 8(sp)
    addi    sp, sp, 64
    ret

.section .bss
.lcomm tmp_base, 4096          # 预留大数存储空间 (假设最大size=512)