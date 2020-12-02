{- If we list all the natural numbers below 10 that are multiples of 3 or 5, 
we get 3, 5, 6 and 9. The sum of these multiples is 23.
Find the sum of all the multiples of 3 or 5 below 1000. 
(Answer = 233168) -}

-- solution uses inclusion-exclusion principle

-- list comprehensions:
sumofthrees = sum [(i) *3 | i <- [1..div 999 3]]
sumoffives = sum [(j) *5 | j <- [1..div 999 5]]
sumoffifteens = sum [(k) *15 | k <- [1..div 999 15]]

finalanswer = (sumofthrees + sumoffives ) - sumoffifteens

main = do
    putStr "Answer:\t"
    print finalanswer

