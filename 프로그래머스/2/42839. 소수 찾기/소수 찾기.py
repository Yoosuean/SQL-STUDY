from itertools import permutations
import math

def prime_numbers(n):
    for i in range(2,int(math.sqrt(n))+1):
        if n % i == 0:
            return False
    return True


def solution(numbers):
    target_num=[]
    answer=0
    num_list=list(numbers)
    for i in range(1,len(numbers)+1):
        num_per=list(permutations(num_list,i))
        temp=[int(''.join(item)) for item in num_per]
        target_num.extend(temp)
    set_num=set(target_num)
    for j in set_num:
        if j<2: continue
        if prime_numbers(j):
            answer+=1
                
    return answer