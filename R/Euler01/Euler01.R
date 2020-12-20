# C NELSON 2020
# If we list all the natural numbers below 10 that are multiples of 3 or 5, 
# we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000. 
# (Answer = 233168) */

# solution uses inclusion-exclusion principle

sumOfThrees = 0
sumOfFives = 0
sumOfFifteens = 0
finalAnswer = 0

tic <- Sys.time()

for (i in seq(from = 3, to = 999, by = 3))
{
    sumOfThrees = sumOfThrees + i
}
for (j in seq(from = 5, to = 999, by = 5))
{
    sumOfFives = sumOfFives + j
}
for (k in seq(from = 15, to = 999, by = 15))
{
    sumOfFifteens = sumOfFifteens + k
}

finalAnswer = (sumOfThrees + sumOfFives) - sumOfFifteens

toc <- Sys.time()
timeElapsed = toc - tic

cat("Answer:", finalAnswer, "\n")
print(timeElapsed)
