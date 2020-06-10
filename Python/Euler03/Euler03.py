#The prime factors of 13195 are
# 5, 7, 13 and 29.
#What is the largest prime factor
#of the number 600851475143

# divide out all factors till highest prime factor remains
# ~ 360000 nanoseconds

from math import sqrt
import time

start = time.perf_counter_ns()

n = 600851475143
factor = 3
maxfactor = sqrt(n)

while n > 1 and factor <=maxfactor:
    if n % factor == 0:
        n = n / factor
        while n % factor == 0:
            n = n / factor
        maxfactor = sqrt(n)
    factor += 2

duration = time.perf_counter_ns() - start

print("Answer:", n)
print("Took: %s nanoseconds" % (duration))

