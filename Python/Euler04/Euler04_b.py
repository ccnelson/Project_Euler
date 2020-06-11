# A palindromic number reads the same both
# ways. The largest palindrome made from
# the product of two 2-digit numbers is
# 9009 = 91 × 99.
# Find the largest palindrome made from
# the product of two 3-digit numbers.
# (Answer = 906609)

# Uses math method to reverse positive integer
# ~ 30,000,000 nanoseconds

import time

def Revnum(n):
    reverse = 0
    endDigit = 0
    while n > 0:
        endDigit = n % 10
        reverse = (reverse * 10) + endDigit 
        n = n // 10; # floor division
    return reverse

start = time.perf_counter_ns()

answer = 0

for i in range(1000, 900, -1):
    for j in range(1000, 900, -1):

        temp = i * j
        if temp == Revnum(temp) and temp > answer:
            answer = temp
            val1 = i
            val2 = j

duration = time.perf_counter_ns() - start

print(answer)
print("Product of ", val1, " and ", val2)
print("Took: %s nanoseconds" % (duration))