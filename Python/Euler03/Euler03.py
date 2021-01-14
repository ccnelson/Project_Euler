# C NELSON 2021
# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143
# (Answer = 6857)

# solution divides out all factors until largest prime factor remains

from math import sqrt
import time

finalAnswer = 0
n = 600851475143
div = 3

start = time.perf_counter_ns()

nsqrt = sqrt(n)

if (n & 1 != 1):
    while (n & 1 != 1):
        n = n // 2
    if (n == 1):
        div = 2

while (n > 1 and div < nsqrt):
    if (n % div == 0):
        n = n // div
    else:
        div += 2

finalAnswer = n if (n != 1) else div

duration = time.perf_counter_ns() - start

print("Answer:", finalAnswer)
print("Took: %s nanoseconds" % (duration))

