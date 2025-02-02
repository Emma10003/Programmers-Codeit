#include <stdio.h>

int main(){
    int a, b, c;
    scanf("%d %d %d", &a, &b, &c);

    // 조건문
    if (a == b && b == c){  // 1번 경우 (세 눈이 모두 같음)
        printf("%d", 10000 + (a * 1000));
    } else if (a == b || a == c){       // 2번 경우-(1)
        printf("%d", 1000 + (a * 100));
    } else if (b == c){                 // 2번 경우-(2)
        printf("%d", 1000 + (b * 100));
    } else if (a > b && a > c){         // 3번 경우-a가 제일 클 때
        printf("%d", a * 100);
    } else if (b > a && b > c){         // 3번 경우-b가 제일 클 때
        printf("%d", b * 100);
    } else{                             // 3번 경우-c가 제일 클 때
        printf("%d", c * 100);
    }

    return 0;
}