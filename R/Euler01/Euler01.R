# If we list all the natural numbers below 10 that are multiples of 3 or 5, 
# we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000. 
# (Answer = 233168) */

# solution uses inclusion-exclusion principle

sumofthrees = 0
sumoffives = 0
sumoffifteens = 0
finalanswer = 0

start_time <- Sys.time()

for(i in seq(from=0, to=999, by=3))
{
	sumofthrees = (sumofthrees + i)
}
for(j in seq(from=0, to=999, by=5))
{
	sumoffives = (sumoffives + j)
}
for(k in seq(from=0, to=999, by=15))
{
	sumoffifteens = (sumoffifteens + k)
}

finalanswer = (sumofthrees + sumoffives) - sumoffifteens

end_time <- Sys.time()

elapsed = (end_time - start_time)

cat("Answer:", finalanswer, "\n")
print(elapsed)