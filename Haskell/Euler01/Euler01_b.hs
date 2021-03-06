-- C NELSON 2020
{- If we list all the natural numbers below 10 that are multiples of 3 or 5, 
we get 3, 5, 6 and 9. The sum of these multiples is 23.
Find the sum of all the multiples of 3 or 5 below 1000. 
(Answer = 233168) -}

-- solution uses inclusion-exclusion principle

main = do
    -- list comprehensions:
    let sumOfThrees = sum [(i) *3 | i <- [1..div 999 3]]
    let sumOfFives = sum [(j) *5 | j <- [1..div 999 5]]
    let sumOfFifteens = sum [(k) *15 | k <- [1..div 999 15]]
    let finalAnswer = (sumOfThrees + sumOfFives ) - sumOfFifteens
    putStr "Answer:\t"
    print finalAnswer

