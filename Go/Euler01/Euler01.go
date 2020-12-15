// C NELSON 2020
/* If we list all the natural numbers below 10 that are multiples of 3 or 5, 
we get 3, 5, 6 and 9. The sum of these multiples is 23.
Find the sum of all the multiples of 3 or 5 below 1000. 
(Answer = 233168) */

// solution uses inclusion-exclusion principle

package main

import "fmt"
import "time"

func main() {

    var sumOfThrees int = 0
    var sumOfFives int = 0
    var sumOfFifteens int = 0
    var finalAnswer int = 0

    tic := time.Now()

    for i := 3; i < 1000; i += 3 {
        sumOfThrees += i
    }
    for j := 5; j < 1000; j += 5 {
        sumOfFives += j
    }
    for k := 15; k < 1000; k += 15 {
        sumOfFifteens += k
    }
    finalAnswer = (sumOfThrees + sumOfFives) - sumOfFifteens

    timeElapsed := time.Since(tic)

    fmt.Println("Answer:\t", finalAnswer)
    fmt.Println("Took:\t", timeElapsed.Nanoseconds(), "ns")
}