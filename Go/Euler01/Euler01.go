// C NELSON 2021
/* If we list all the natural numbers below 10 that are multiples of 3 or 5, 
we get 3, 5, 6 and 9. The sum of these multiples is 23.
Find the sum of all the multiples of 3 or 5 below 1000. 
(Answer = 233168) */

// solution uses arithmetic series formula with inclusion-exclusion principle

package main

import "fmt"
import "time"

// arithmetic series formula : Sn = n/2(2a+(n-1)d)
// a = 1st term, d = common difference, n = no. of terms
func seqsum(a float32, d float32, n float32) float32 {
    return (n / 2) * (2 * a + (n - 1) * d)
}

func main() {

    var sumOfThrees float32 = 0
    var sumOfFives float32 = 0
    var sumOfFifteens float32 = 0
    var finalAnswer float32 = 0

    tic := time.Now()

    sumOfThrees = seqsum(3, 3, 999/3)
    sumOfFives = seqsum(5, 5, 999/5)
    sumOfFifteens = seqsum(15, 15, 999/15)

    finalAnswer = (sumOfThrees + sumOfFives) - sumOfFifteens

    timeElapsed := time.Since(tic)

    fmt.Println("Answer:\t", finalAnswer)
    fmt.Println("Took:\t", timeElapsed.Nanoseconds(), "ns")

}