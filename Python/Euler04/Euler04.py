# A palindromic number reads the same both
# ways. The largest palindrome made from
# the product of two 2-digit numbers is
# 9009 = 91 × 99.
# Find the largest palindrome made from
# the product of two 3-digit numbers.
# (Answer = 906609)

# Converts int to string and uses slicing to compare
# ~ 9,000,000 nanoseconds

import time

start = time.perf_counter_ns()

answer = 0

for i in range(1000, 900, -1):
    for j in range(1000, 900, -1):
        product = i * j
        textual = str(product)
        if textual == textual[::-1] and product > answer: # [::-1] returns reverse string
            answer = product
            val1 = i
            val2 = j

duration = time.perf_counter_ns() - start

print(answer)
print("Product of ", val1, " and ", val2)
print("Took: %s nanoseconds" % (duration))