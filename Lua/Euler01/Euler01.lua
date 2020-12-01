--[[ If we list all the natural numbers below 10 that are multiples of 3 or 5, 
we get 3, 5, 6 and 9. The sum of these multiples is 23.
Find the sum of all the multiples of 3 or 5 below 1000. 
(Answer = 233168) --]]

-- solution uses inclusion-exclusion principle

sumofthrees = 0
sumoffives = 0
sumoffifteens = 0
finalanswer = 0

tic = os.clock()

for i = 3, 999, 3 do 
	sumofthrees = sumofthrees + i
end

for j = 5, 999, 5 do 
	sumoffives = sumoffives + j
end

for k = 15, 999, 15 do 
	sumoffifteens = sumoffifteens + k
end

finalanswer = (sumofthrees + sumoffives) - sumoffifteens

toc = os.clock() - tic

print(string.format("Answer:\t%s", finalanswer))
print(string.format("Took:\t%.6f seconds", toc))