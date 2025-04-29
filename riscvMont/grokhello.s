.section .text
.global main
.extern printf

main:
    # 保存返回地址
    addi sp, sp, -16
    sd ra, 8(sp)

    # 调用 printf
    la a0, hello_str
    call printf

    # 返回 0
    li a0, 0
    ld ra, 8(sp)
    addi sp, sp, 16
    ret

.section .rodata
hello_str:
    .string "Hello, RISC-V!\n"