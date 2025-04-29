#include <vector>
#include <algorithm>
#include <cstdint>
#include <iostream>
#include <cstring>

using namespace std;

void mul64(uint64_t a, uint64_t b, uint64_t &hi, uint64_t &lo);
void add64(uint64_t a, uint64_t b, uint64_t &hi, uint64_t &lo);
void subtract(uint64_t *a, const uint64_t *b, size_t num_limbs);
void madd64(const uint64_t a, const uint64_t b, const uint64_t c,
            uint64_t &hi, uint64_t &lo, uint64_t &carry);
int compare(const uint64_t *a, const uint64_t *b, size_t num_limbs);
void modular_multiply(uint64_t *res, const uint64_t *a, const uint64_t *b,
                      const uint64_t *n, size_t len, uint64_t n0_prime);

int main()
{

    // hex(n) =  0x80d7a88e1b3f8d3ad18b0d8d8b739133
    // hex(r_1) =  0x47e3e30e0346fef86dc971307dd6ef2f
    // hex(n_1) =  0x8ed71cb0eaaf7763a15fcb5770bd2e05
    uint64_t n0_prime = 0xa15fcb5770bd2e05;
    const uint64_t A[2] = {0x9900aabb11223344, 0x9900aabb55667788}; // a = 0x9900aabb556677889900aabb11223344
    const uint64_t B[2] = {0x9900aabb9900aabb, 0x9900aabbccdd1122}; // b = 0x9900aabbccdd11229900aabb9900aabb
    uint64_t r[4] = {0, 0, 0, 0};
    const uint64_t n[2] = {0xd18b0d8d8b739133, 0x80d7a88e1b3f8d3a}; // n = 0x80d7a88e1b3f8d3ad18b0d8d8b739133
    modular_multiply(r, A, B, n, 2, n0_prime);
    for (auto x : r)
    {
        std::cout << hex << x << std::endl;
    }
    cout << "hello" << endl;
    cout << hex << *r << endl;
    cout << hex << *(r + 1) << endl;
    return 0;
}

void modular_multiply(uint64_t *res, const uint64_t *a, const uint64_t *b,
                      const uint64_t *n, size_t len, uint64_t n0_prime)
{
    uint64_t *t = new uint64_t[len + 2];
    uint64_t null = 0;

    for (size_t i = 0; i < len; i++)
    {
        uint64_t C = 0;

        // First inner loop: multiply and add
        for (size_t j = 0; j < len; j++)
        {
            uint64_t tmp1 = 0;
            uint64_t tmp2 = 0;
            madd64(a[i], b[j], t[j], tmp2, tmp1, null);
            t[j] = tmp1;
            add64(tmp1, C, C, t[j]);
            add64(tmp2, C, null, C); // tmp2 is used for nullregister
        }
        add64(t[len], C, C, t[len]);
        add64(C, t[len + 1], null, t[len + 1]);
        if (true)
        {
            for (size_t j = 0; j < len + 2; j++)
            {
                cout << hex << *(t + j) << endl;
            }
        }

        C = 0;
        uint64_t m = 0;
        mul64(t[0], n0_prime, null, m);
        cout << "m = " << hex << m << endl;
        // Second inner loop: reduction
        for (size_t j = 0; j < len; j++)
        {
            uint64_t tmp1 = 0;
            uint64_t tmp2 = 0;
            madd64(m, n[j], t[j], tmp2, tmp1, null);
            add64(tmp1, C, C, t[j]);
            add64(tmp2, C, null, C);
        }
        add64(t[len], C, C, t[len]);
        add64(C, t[len + 1], null, t[len + 1]);

        if (true)
        {
            for (size_t j = 0; j < len + 2; j++)
            {
                cout << hex << *(t + j) << endl;
            }
        }

        for (size_t j = 0; j <= len; j++)
        {
            t[j] = t[j + 1];
        }
        cout << "after shift" << endl;
        if (true)
        {
            for (size_t j = 0; j < len + 1; j++)
            {
                cout << hex << *(t + j) << endl;
            }
        }
    }

    // final sub
    if (compare(t, n, len) >= 0)
    {
        subtract(t, n, len);
    }
    memcpy(res, t, 2 * sizeof(uint64_t));
}

void subtract(uint64_t *a, const uint64_t *b, size_t num_limbs)
{
    uint64_t borrow = 0;
    for (size_t i = 0; i < num_limbs; ++i)
    {
        uint64_t temp = a[i] - b[i] - borrow;
        borrow = (temp > a[i]) || (borrow && temp >= a[i]) ? 1 : 0;
        a[i] = temp;
    }
}

int compare(const uint64_t *a, const uint64_t *b, size_t num_limbs)
{
    for (int i = num_limbs - 1; i >= 0; --i)
    {
        if (a[i] < b[i])
            return -1;
        if (a[i] > b[i])
            return 1;
    }
    return 0;
}

void madd64(const uint64_t a, const uint64_t b, const uint64_t c,
            uint64_t &hi, uint64_t &lo, uint64_t &carry)
{
    //  a * b
    uint64_t a_lo = a & 0xFFFFFFFF;
    uint64_t a_hi = a >> 32;
    uint64_t b_lo = b & 0xFFFFFFFF;
    uint64_t b_hi = b >> 32;

    uint64_t lo_lo = a_lo * b_lo;
    uint64_t hi_lo = a_hi * b_lo;
    uint64_t lo_hi = a_lo * b_hi;
    uint64_t hi_hi = a_hi * b_hi;

    uint64_t cross = (lo_lo >> 32) + (hi_lo & 0xFFFFFFFF) + (lo_hi & 0xFFFFFFFF);

    uint64_t product_hi = hi_hi + (hi_lo >> 32) + (lo_hi >> 32) + (cross >> 32);
    uint64_t product_lo = (cross << 32) | (lo_lo & 0xFFFFFFFF);

    // add c
    lo = product_lo + c;

    // carry
    carry = (lo < c) ? 1 : 0; //  (product_lo > UINT64_MAX - c)
    hi = product_hi + carry;
    carry += (hi < product_hi) ? 1 : 0; // carry
}

void mul64(const uint64_t a, const uint64_t b, uint64_t &hi, uint64_t &lo)
{
    uint64_t a_lo = a & 0xFFFFFFFF;
    uint64_t a_hi = a >> 32;
    uint64_t b_lo = b & 0xFFFFFFFF;
    uint64_t b_hi = b >> 32;

    uint64_t lo_lo = a_lo * b_lo;
    uint64_t hi_lo = a_hi * b_lo;
    uint64_t lo_hi = a_lo * b_hi;
    uint64_t hi_hi = a_hi * b_hi;

    uint64_t cross = (lo_lo >> 32) + (hi_lo & 0xFFFFFFFF) + lo_hi;

    hi = hi_hi + (hi_lo >> 32) + (cross >> 32);
    lo = (cross << 32) | (lo_lo & 0xFFFFFFFF);
}

void add64(const uint64_t a, const uint64_t b, uint64_t &hi, uint64_t &lo)
{
    lo = a + b;
    hi = (a > lo);
}
