'''
오답 코드

def solution(s):
    i = 0
    num_list = []
    for i in len(s):
        num_list.append(s.split())
    answer = '{} {}'.format(max(num_list), min(num_list))
    return answer
    
    # TypeError: 'int' is not iterable
'''

# for문 - 리스트 내포 형식
# [표현식 for 변수1 in 객체1 if 조건문] ~> if문은 생략 가능.
# for문 실행 시 표현식이 실행됨.
#   결과값은 리스트 형식.

def solution(s):
    # 문자열 s를 split -> 해당 리스트의 범위 안에서 for문 반복
    # 이 때 i에는 s.split()으로 만들어진 리스트의 각 요소가 차례로 대입됨.
    # for문의 실행문인 int(i)가 실행되어 s.split() 리스트의 요소들을 형변환.
    # 결과값은 answer 변수에 리스트로 저장됨.
    answer = [int(i) for i in s.split()]
    return f"{min(answer)} {max(answer)}"