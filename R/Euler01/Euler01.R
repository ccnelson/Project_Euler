# C NELSON 2021
# If we list all the natural numbers below 10 that are multiples of 3 or 5, 
# we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000. 
# (Answer = 233168) */

# solution uses arithmetic series formula with inclusion-exclusion principle

sumOfThrees = 0
sumOfFives = 0
sumOfFifteens = 0
finalAnswer = 0

# arithmetic series formula : Sn = n/2(2a+(n-1)d)
# a = 1st term, d = common difference, n = no. of terms
seqsum <- function(a, d, n)
{
    return((n / 2) * (2 * a + (n - 1) * d))
}

tic <- Sys.time()

sumOfThrees = seqsum(3, 3, (999%/%3))
sumOfFives = seqsum(5, 5, (999%/%5))
sumOfFifteens = seqsum(15, 15, (999%/%15))

finalAnswer = (sumOfThrees + sumOfFives) - sumOfFifteens

toc <- Sys.time()
timeElapsed = toc - tic

cat("Answer:", finalAnswer, "\n")
print(timeElapsed)
