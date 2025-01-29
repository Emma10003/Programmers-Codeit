#include <stdio.h> 

int main(){
    int a, b;  // 변수 a, b 생성 -> 정수 입력받을 공간
    scanf("%d %d", &a, &b);  // scanf의 f는 format -> "설정한 포맷대로 입력한 데이터를 가져오겠다"
                             // %d: 10진수 (decimal)
                             // &는 주소, a와 b에 넣는 게 아니라(a를 값이 대체하는 게 아니라), a와 b라는 공간에 값을 대입하는 것.
                             // 그냥 a, b로 작성하면 전자에 해당함.
                             // scanf는 입력받은 값을 %d에 가져와서 &a, &b에 넣어주는 거고, *방향: ("" -> 변수)
    printf("%d\n", a+b);       // printf는 뒤에서 연산한 값을 따옴표로 출력. *방향: ("" <- 변수)
    return 0;
}