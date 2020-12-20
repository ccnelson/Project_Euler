# C NELSON 2020
# Each new term in the Fibonacci sequence is
# generated by adding the previous two terms.
# By ticing with 1 and 2, the first 10 terms will be:
# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
# By considering the terms in the Fibonacci sequence
# whose values do not exceed four million, find the
# sum of the even-valued terms.
# (Answer = 4613732)

# solution uses remainder operator to determine parity
# (also multi-variable assignment / tuple unpacking to swap values)

import time

n1 = 1
n2 = 0
finalAnswer = 0

tic = time.perf_counter()

while n2 < 4000000:
    if n2 % 2 == 0:
        finalAnswer += n2
    n1, n2 = n2, n1 + n2

toc = time.perf_counter()
timeElapsed = toc - tic

print("Answer:\t%s" % (finalAnswer))
print("Took:\t%f" % (timeElapsed))
