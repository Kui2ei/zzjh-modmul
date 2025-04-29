#include <vector>
#include <algorithm>
#include <cstdint>
#include <iostream>


// // 先写一个两个字长的mont乘法
// // a=6153737367135073092 (Dec
// // b=14761973993883871931 (Dec
// // 预测结果：
// // 低位0xd98dd4e6 Dec3649950950
// // 高位0x4a6ec8e1 Dec1248774369
// WD A[2]={0x11223344,0x55667788};
// WD B[2]={0x9900aabb,0xccdd1122};
// // WD M=0x45678761;
// const WD LENGTH=2;
// // n(mod)10986361036459024897
// WD n[LENGTH]={0x88552201,0x98776527};
// // 2^64   r=18446744073709551616;
// // r^-1     8280702575209612017;;0x85b12e23032e9279
// // n_1=13903784942846943743  0x1c0f42abd77d121ff
// WD n_1[2]={0x77d121ff,0xc0f42abd};
using namespace std;

// Assuming w is the word size (e.g., 2^32 or 2^64 for 32/64-bit systems)
const uint64_t w = (1ULL << 32); // Adjust based on your system

vector<uint64_t> modular_multiply(const vector<uint64_t>& a, const vector<uint64_t>& b, 
                                 const vector<uint64_t>& n, uint64_t n0_prime) {
    size_t s = n.size();
    vector<uint64_t> t(s + 2, 0); // Initialize t with s+2 elements (0 to s+1)

    for (size_t i = 0; i < s; i++) {
        uint64_t C = 0;
        
        // First inner loop: multiply and add
        for (size_t j = 0; j < s; j++) {
            uint64_t temp = t[j] + a[j] * b[i] + C;
            C = temp / w;       // Carry is the high part
            t[j] = temp % w;   // Store the low part
        }
        
        // Propagate carry
        uint64_t temp = t[s] + C;
        t[s] = temp % w;
        t[s + 1] = temp / w;
        
        C = 0;
        uint64_t m = (t[0] * n0_prime) % w;
        
        // Second inner loop: reduction
        for (size_t j = 0; j < s; j++) {
            temp = t[j] + m * n[j] + C;
            C = temp / w;
            t[j] = temp % w;
        }
        
        // Propagate carry
        temp = t[s] + C;
        t[s] = temp % w;
        t[s + 1] += temp / w;
        
        // Shift right by one word
        for (size_t j = 0; j <= s; j++) {
            t[j] = t[j + 1];
        }
    }
    
    // Final subtraction if needed
    bool greater_or_equal = true;
    if (t[s] != 0) {
        greater_or_equal = true;
    } else {
        for (int i = s - 1; i >= 0; i--) {
            if (t[i] > n[i]) {
                greater_or_equal = true;
                break;
            } else if (t[i] < n[i]) {
                greater_or_equal = false;
                break;
            }
        }
    }
    
    if (greater_or_equal) {
        uint64_t borrow = 0;
        for (size_t i = 0; i < s; i++) {
            uint64_t diff = t[i] - n[i] - borrow;
            borrow = (diff > t[i]) ? 1 : 0; // Check for underflow
            t[i] = diff;
        }
    }
    
    // Resize to return only s elements
    t.resize(s);
    return t;
}


void mul64(uint64_t a, uint64_t b, uint64_t* hi, uint64_t* lo) {
    uint64_t a_lo = a & 0xFFFFFFFF;
    uint64_t a_hi = a >> 32;
    uint64_t b_lo = b & 0xFFFFFFFF;
    uint64_t b_hi = b >> 32;
    
    uint64_t lo_lo = a_lo * b_lo;
    uint64_t hi_lo = a_hi * b_lo;
    uint64_t lo_hi = a_lo * b_hi;
    uint64_t hi_hi = a_hi * b_hi;
    
    uint64_t cross = (lo_lo >> 32) + (hi_lo & 0xFFFFFFFF) + lo_hi;
    
    *hi = hi_hi + (hi_lo >> 32) + (cross >> 32);
    *lo = (cross << 32) | (lo_lo & 0xFFFFFFFF);
}

void add64(uint64_t a, uint64_t b, uint64_t* hi, uint64_t* lo) {
    *lo = a + b;
    *hi = (a > *lo);
}


int main() {
    uint64_t n0_prime=0xc0f42abd77d121ff;

    const vector<uint64_t> A = {0x11223344,0x55667788};
    const vector<uint64_t> B = {0x9900aabb,0xccdd1122};
    const vector<uint64_t> n = {0x88552201,0x98776527};

    const vector<uint64_t> res = modular_multiply(A, B, n, n0_prime);
    for(auto x:res){
        std::cout<<hex<<x<<std::endl;
    }
    return 0;

}

