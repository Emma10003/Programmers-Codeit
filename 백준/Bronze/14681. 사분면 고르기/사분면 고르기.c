#include <stdio.h>

// 입력한 수의 좌표가 몇 사분면에 있는지 출력

int main(){
    int x, y;
    scanf("%d %d", &x, &y);

    // 조건문
    if(x>0 && y>0){  // 제1사분면
        printf("1");
    } else if(x<0 && y>0){  // 제2사분면
        printf("2");
    } else if(x<0 && y<0){  // 제3사분면
        printf("3");
    } else if(x>0 && y<0){  // 제4사분면
        printf("4");
    }

    return 0;
}