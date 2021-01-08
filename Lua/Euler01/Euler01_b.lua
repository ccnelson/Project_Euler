-- C NELSON 2020
--[[ If we list all the natural numbers below 10 that are multiples of 3 or 5, 
we get 3, 5, 6 and 9. The sum of these multiples is 23.
Find the sum of all the multiples of 3 or 5 below 1000. 
(Answer = 233168) --]]

-- solution uses inclusion-exclusion principle

sumOfThrees = 0
sumOfFives = 0
sumOfFifteens = 0
finalAnswer = 0

tic = os.clock()

for i = 3, 999, 3 do 
    sumOfThrees = sumOfThrees + i
end

for j = 5, 999, 5 do 
    sumOfFives = sumOfFives + j
end

for k = 15, 999, 15 do 
    sumOfFifteens = sumOfFifteens + k
end

finalAnswer = (sumOfThrees + sumOfFives) - sumOfFifteens

toc = os.clock()
timeElapsed = toc - tic

print(string.format("Answer:\t%s", finalAnswer))
print(string.format("Took:\t%.2f seconds", timeElapsed))
