#If we list all the natural numbers below 10 that
#are multiples of 3 or 5, we get 3, 5, 6 and 9.
#The sum of these multiples is 23.
#Find the sum of all the multiples of 3 or 5 below 1000.
# (Answer = 233168)

# this version uses inclusion-exclusion principle
# ~ 140000 nanoseconds

import time
start = time.perf_counter_ns()

sumof3s = 0
sumof5s = 0
sumof15s = 0

for i in range(0, 1000, 3):
    sumof3s += i

for j in range(0, 1000, 5):
    sumof5s += j

for k in range(0, 1000, 15):
    sumof15s += k

answer = (sumof3s + sumof5s) - sumof15s

duration = time.perf_counter_ns() - start
print(answer)
print("Took: %s nanoseconds" % (duration))
