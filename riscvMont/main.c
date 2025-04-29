#include <stdio.h>

extern int add_numbers(int a, int b);  // 声明汇编函数

int main() {
    int result = add_numbers(3, 5);
    printf("Result: %d\n", result);  // 输出 8
    return 0;
}