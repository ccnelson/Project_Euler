# C NELSON 2021
""" If we list all the natural numbers below 10 that
 are multiples of 3 or 5, we get 3, 5, 6 and 9.
 The sum of these multiples is 23.
 Find the sum of all the multiples of 3 or 5 below 1000.
 (Answer = 233168) """

# solution uses arithmetic series formula with inclusion-exclusion principle

import time

def SeqSum(a, d, n):
    """ arithmetic series formula : Sn = n/2(2a+(n-1)d)
        a = 1st term, d = common difference, n = no. of terms"""
    return (n / 2) * (2 * a + (n - 1) * d)

sumOfThrees = 0
sumOfFives = 0
sumOfFifteens = 0

tic = time.perf_counter()

sumOfThrees = SeqSum(3, 3, (999//3))
sumOfFives = SeqSum(5, 5, (999//5))
sumOfFifteens = SeqSum(15, 15, (999//15))

finalAnswer = (sumOfThrees + sumOfFives) - sumOfFifteens

toc = time.perf_counter()
timeElapsed = toc - tic

print("Answer:\t%s" % (finalAnswer))
print("Took:\t%f" % (timeElapsed))
