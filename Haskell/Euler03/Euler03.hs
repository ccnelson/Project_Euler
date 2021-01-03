-- C NELSON 2020
{- The prime factors of 13195 are 5, 7, 13 and 29.
What is the largest prime factor of the number 600851475143
(Answer = 6857) -}

-- solution divides out all factors until largest prime factor remains

-- recursively divide out evens and odds
divideOutFactors :: Int -> Int -> Float -> Int
divideOutFactors n d nsr =
    if n `mod` 2 == 0
        then divideOutFactors (n `div` 2) d nsr
    else if n == 1
        then 2
    else
        divideOutOdds n d nsr

-- recursively divide out odds stopping if prime
divideOutOdds :: Int -> Int -> Float -> Int
divideOutOdds n d nsr = 
    if n > 1 && d < (round nsr)
        then
            if n `mod` d == 0
                then divideOutOdds (n `div` d) d nsr
            else divideOutOdds n (d + 2) nsr
    else if n > 1 && d >= (round nsr)
        then
            n
    else d

main = do
    let n = 600851475143
    let d = 3
    let nsqrt = sqrt (fromIntegral  n)
    let finalAnswer = divideOutFactors n d nsqrt
    putStr "Answer:\t"
    print(finalAnswer)
