#define BN_UINT uint64_t




void MontMulx_Asm(BN_UINT *r, const BN_UINT *a, const BN_UINT *b, const BN_UINT *n, const BN_UINT k0, size_t size);
