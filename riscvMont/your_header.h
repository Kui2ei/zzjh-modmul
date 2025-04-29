// your_header.h
#ifdef __cplusplus
extern "C" {  // 确保 C++ 兼容性
#endif

// 声明汇编函数（函数名和参数需与汇编代码一致）
void your_asm_function(int arg1, int arg2);

#ifdef __cplusplus
}
#endif