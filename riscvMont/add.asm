section .data
    num1    dq 10      ; 第一个数
    num2    dq 20      ; 第二个数
    result  db 0       ; 存储结果的 ASCII 字符
    len     equ $ - result ; 结果长度

section .text
    global _start

_start:
    ; 加载数值到寄存器
    mov rax, [num1]
    add rax, [num2]    ; rax = num1 + num2

    ; 将结果转换为 ASCII 字符（假设结果是个位数）
    add al, '0'        ; 数字转字符（仅适用于 0-9）
    mov [result], al

    ; 输出结果到屏幕
    mov rax, 1         ; sys_write 系统调用号
    mov rdi, 1         ; 文件描述符 (stdout)
    mov rsi, result    ; 输出内容地址
    mov rdx, len       ; 输出长度
    syscall

    ; 退出程序
    mov rax, 60        ; sys_exit 系统调用号
    xor rdi, rdi       ; 退出码 0
    syscall