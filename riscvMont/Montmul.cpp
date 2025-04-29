#include<iostream>
#include <limits>

using namespace std;


typedef unsigned int WD;


// 先写一个两个字长的mont乘法
// a=6153737367135073092 (Dec
// b=14761973993883871931 (Dec
// 预测结果：
// 低位0xd98dd4e6 Dec3649950950
// 高位0x4a6ec8e1 Dec1248774369
WD A[2]={0x11223344,0x55667788};
WD B[2]={0x9900aabb,0xccdd1122};
// WD M=0x45678761;
const WD LENGTH=2;


// n(mod)10986361036459024897
WD n[LENGTH]={0x88552201,0x98776527};



// 2^64   r=18446744073709551616;
// r^-1     8280702575209612017;;0x85b12e23032e9279
// n_1=13903784942846943743  0x1c0f42abd77d121ff

WD n_1[2]={0x77d121ff,0xc0f42abd};
// 假设这是一个进位的寄存器
static WD C=0;

// 假设这是一个存储加法结果的寄存器
static WD S=0;




// 寄存器
WD reg[10]={0,0,0,0,0,0,0,0,0,0};
WD NullReg=0;



//@param : num1  adder1
//         num2  adder2
//         sum   sum(低位)
//         carry carry（高位/进位)
void ADD(WD num1,WD num2,WD& sum, WD& carry){
    sum = num1 + num2;
    carry = (sum < num1 || sum < num2) ? 1 : 0;
}

void regset0(){
    for(int i=0;i<10;i++){
        reg[i]=0;
    }
}

void MULT(WD a, WD b, WD& result_low, WD& result_high) {
    int64_t product = static_cast<int64_t>(a) * static_cast<int64_t>(b);  // 使用 64 位整数进行乘法运算
    result_low = static_cast<WD>(product & std::numeric_limits<WD>::max());  // 低位结果
    result_high = static_cast<WD>((product >> std::numeric_limits<WD>::digits) & std::numeric_limits<WD>::max());  // 高位结果
    return ;
}

void MONT(WD a[2],WD b[2],int LENGTH,WD MOD){
    WD T[LENGTH*2];
    for(int i=0;i<LENGTH*2;i++){
        T[i]=0;
    }
    for(int i=0;i<LENGTH;i++){
        C=0;
        S=0;
        for(int j=0;j<LENGTH;j++){
            // 模拟(C,S)=T[j]+a[j]*b[i]+C;
            regset0();
            MULT(a[j],b[i],reg[5],reg[0]);
            ADD(C,T[j],reg[6],reg[1]);
            ADD(reg[0],reg[1],reg[2],NullReg);
            ADD(reg[5],reg[6],S,reg[3]);
            ADD(reg[2],reg[3],C,NullReg);
            T[j]=S;
        }

        ADD(T[LENGTH],C,S,C);  //模仿(C,S)=T[LENGTH]+C;
        T[LENGTH]=S;
        T[LENGTH+1]=C;
        C=0;
        WD m=0;
        MULT(T[0],n_1[0],m,NullReg);
        for(int j=0;j<LENGTH;j++){
            // 模拟(C,S)=T[j]+m*n[j]+C;
            regset0();
            MULT(m,n[j],reg[5],reg[0]);
            ADD(C,T[j],reg[6],reg[1]);
            ADD(reg[0],reg[1],reg[2],NullReg);
            ADD(reg[5],reg[6],S,reg[3]);
            ADD(reg[2],reg[3],C,NullReg);
            T[j]=S;
        }
        ADD(T[LENGTH],C,S,C);  //模仿(C,S)=T[LENGTH]+C;
        T[LENGTH]=S;
        T[LENGTH+1]=T[LENGTH+1]+C;
        for(int j=0;j<=LENGTH;j++){
            T[j]=T[j+1];
        }

// print the result
    }
    for(int i=0;i<LENGTH;i++){
        cout<<T[i]<<endl;
    }


}



int main()
{
    MONT(A,B,LENGTH,NullReg);

    return 0;
}