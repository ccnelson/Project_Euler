// C NELSON 2021
/* The prime factors of 13195 are 5, 7, 13 and 29.
What is the largest prime factor of the number 600851475143
(Answer = 6857) */

// solution divides out all factors until largest prime factor remains

package main

import "fmt"
import "time"
import "math"

func main() {

    var n int64 = 600851475143
    var finalAnswer int64 = 0
    var div int64 = 3

    tic := time.Now()

    nsqrt := int64(math.Sqrt(float64(n)))

    // check for evens and divide out
    if ((n & 1) != 1) {
        for ((n & 1) != 1) {
            n = n / 2
        }
        if (n == 1) {
            div = 2
        }
    }

    // incrememnt thru odds, diving out, stopping if prime
    for ((n > 1) && (div < nsqrt)) {
        if (n % div == 0) {
            n = n / div
        } else {
            div = div + 2
        }
    }

    if (n == 1) {
        finalAnswer = div
    } else {
        finalAnswer = n
    }

    timeElapsed := time.Since(tic)

    fmt.Println("Answer:\t", finalAnswer)
    fmt.Println("Took:\t", timeElapsed.Nanoseconds(), "ns")
}
