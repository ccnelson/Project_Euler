-- C NELSON 2021
{- If we list all the natural numbers below 10 that are multiples of 3 or 5, 
we get 3, 5, 6 and 9. The sum of these multiples is 23.
Find the sum of all the multiples of 3 or 5 below 1000. 
(Answer = 233168) -}

-- solution uses arithmetic series formula with inclusion-exclusion principle

-- arithmetic series formula : Sn = n/2(2a+(n-1)d)
-- a = 1st term, d = common difference, n = no. of terms
seqsum :: Float -> Float -> Float -> Float
seqsum a d n =
    (n / 2) * (2 * a + (n - 1) * d)

main = do

    let sumOfThrees = seqsum 3 3 (fromIntegral (div 999 3))
    let sumOfFives = seqsum 5 5 (fromIntegral (div 999 5))
    let sumOfFifteens = seqsum 15 15 (fromIntegral (div 999 15))

    let finalAnswer = (sumOfThrees + sumOfFives ) - sumOfFifteens

    putStr "Answer:\t"
    print finalAnswer
