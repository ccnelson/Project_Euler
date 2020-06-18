# 2520 is the smallest number that can be divided by 
# each of the numbers from 1 to 10 without any remainder.
# what is the smallest positive number that is evenly 
# divisible by all of the numbers from 1 to 20?
# (Answer: 232792560)

#  uses multiplication of prime factors to find LCM
#  ~ 1,250,000 nanoseconds

from math import sqrt, floor
import time

def Is_Prime(n):
    if n <= 1: return False
    if n == 2: return True
    if (n & 1) != 1: return False
    # python creates floats from int with remainder division
    # take floor, but add one to boundary to keep correct
    boundary = floor(sqrt(n)) + 1
    for i in range(3, boundary, 2):
        if n % i == 0: return False
    return True

def PrimeFactors(n, primeList):
    primeIndex = 0
    factorList = []
    while (n > 1):
        if n % primeList[primeIndex] == 0:
            factorList.append(primeList[primeIndex])
            n = n / primeList[primeIndex]
        else:
            primeIndex += 1
    return factorList

start = time.perf_counter_ns()

limit = 20
primes = []
# list of primes
for i in range(0, limit, 1):
    if (Is_Prime(i)):
        primes.append(i)

# two dimensional array for prime factors corresponding to index
primeFactorList = [[]]
for j in range(1, limit, 1):
    primeFactorList.append(PrimeFactors(j, primes))

# store maximum appearances of a factor
primesForAdding = []
for k in range(0, limit, 1):
    if Is_Prime(k):
        pcounter = 0 # overall counter
        for m in range(0, len(primeFactorList), 1):
            lpcounter = 0 # local counter
            for n in range(0, len(primeFactorList[m]), 1):
                if primeFactorList[m][n] == k:
                    lpcounter += 1 # number in question
            if lpcounter > pcounter:
                pcounter = lpcounter # update overall counter according to local
        primesForAdding.append(pcounter) # add to list corresponding to index
    else:
        primesForAdding.append(0) # zero signifies number to be ignored (not a prime factor)

answer = 1 # start with 1 otherwise product will be zero

for p in range(0, len(primesForAdding), 1): # iterate thru max appearances
    if primesForAdding[p] > 0: # if not a number being ignored
        for q in range(0, primesForAdding[p], 1):
            answer *= p # multiply answer corresponding number of times

duration = time.perf_counter_ns() - start

print(answer)
print("Took: %s nanoseconds" % (duration))










