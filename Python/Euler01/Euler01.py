# C NELSON 2020
""" If we list all the natural numbers below 10 that
 are multiples of 3 or 5, we get 3, 5, 6 and 9.
 The sum of these multiples is 23.
 Find the sum of all the multiples of 3 or 5 below 1000.
 (Answer = 233168) """

# solution uses inclusion-exclusion principle

import time

sumOfThrees = 0
sumOfFives = 0
sumOfFifteens = 0

tic = time.perf_counter()

for i in range(3, 1000, 3):
    sumOfThrees += i

for j in range(5, 1000, 5):
    sumOfFives += j

for k in range(15, 1000, 15):
    sumOfFifteens += k

finalAnswer = (sumOfThrees + sumOfFives) - sumOfFifteens

toc = time.perf_counter()
timeElapsed = toc - tic

print("Answer:\t%s" % (finalAnswer))
print("Took:\t%f" % (timeElapsed))
