// C NELSON 2020
/* Each new term in the Fibonacci sequence is generated by 
adding the previous two terms. 
By starting with 1 and 2, the first 10 terms will be:
1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
By considering the terms in the Fibonacci sequence whose 
values do not exceed four million,
 find the sum of the even-valued terms.
(Answer = 4613732) */

// uses bitwise AND to test least significant bit

package main

import "fmt"
import "time"

func main() {

    var n1 int = 1
    var n2 int = 0
    var n3 int = 0
    var finalAnswer int = 0

    tic := time.Now()

    for n3 < 4000000 {
        n3 = n1 + n2
        if ((n3 & 1) != 1) {
            finalAnswer += n3
        }
        n1 = n2
        n2 = n3
    }

    timeElapsed := time.Since(tic)

    fmt.Println("Answer:\t", finalAnswer)
    fmt.Println("Took:\t", timeElapsed.Nanoseconds(), "ns")
}