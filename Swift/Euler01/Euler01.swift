// C NELSON 2021
/* If we list all the natural numbers below 10 that are multiples of 3 or 5, 
we get 3, 5, 6 and 9. The sum of these multiples is 23.
Find the sum of all the multiples of 3 or 5 below 1000. 
(Answer = 233168) */

// solution uses arithmetic series formula with inclusion-exclusion principle

import Foundation

// arithmetic series formula : Sn = n/2(2a+(n-1)d)
// a = 1st term, d = common difference, n = no. of terms
func seqsum(a : Float, d : Float, n : Float) -> Float
{
    return (n / 2) * (2 * a + (n - 1) * d)
}

let info = ProcessInfo.processInfo
let tic = info.systemUptime

let sumOfThrees = seqsum(a: Float(3), d: Float(3), n: Float(999/3))
let sumOfFives = seqsum(a: Float(5), d: Float(5), n: Float(999/5))
let sumOfFifteens = seqsum(a: Float(15), d: Float(15), n: Float(999/15))

let finalAnswer = (sumOfThrees + sumOfFives) - sumOfFifteens;

let timeElapsed = (info.systemUptime - tic)

print("Answer:\t", finalAnswer)
print("Took:\t", timeElapsed)
