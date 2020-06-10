#The prime factors of 13195 are
# 5, 7, 13 and 29.
#What is the largest prime factor
#of the number 600851475143

# makes a list of prime factors and selects highest
# ~ 190000000 nanoseconds

from math import sqrt
import time

start = time.perf_counter_ns()

def is_prime(no):
    if no < 2:
        return False
    elif no == 2:
        return True
    elif (no & 1) != 1: # bitwise even test
        return False
    for i in range(3, int(sqrt(no)), 2):
        if no % i == 0:
            return False
    return True

current_number = 600851475143
factors = []

for i in range(2, current_number):
    if is_prime(i):
        if current_number % i == 0:
            factors.append(i)
            current_number = int(current_number / i)
    if is_prime(current_number):
        factors.append(current_number)
        break

duration = time.perf_counter_ns() - start

print("Prime factors: ", factors)
print("Largest prime factor: ", end="")
print(max(factors))
print("Took: %s nanoseconds" % (duration))
