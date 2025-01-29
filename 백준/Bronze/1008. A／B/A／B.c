#include <stdio.h>

int main(){
    double a, b;  // float는 8byte -> 소수점 표현에 한계가 있어 실제값과 오차가 크고, double은 6자리까지만 나옴.
    scanf("%lf %lf", &a, &b);  // lf: long float
    printf("%.11lf\n", a/b);
    return 0;
}