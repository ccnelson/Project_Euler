/* If we list all the natural numbers below 10 that are multiples of 3 or 5, 
we get 3, 5, 6 and 9. The sum of these multiples is 23.
Find the sum of all the multiples of 3 or 5 below 1000. 
(Answer = 233168) */

// solution uses inclusion-exclusion principle

package main

import "fmt"
import "time"

func main() {

	var sumofthrees int = 0
	var sumoffives int = 0
	var sumoffifteens int = 0
	var finalanswer int = 0

	start := time.Now()

	for x := 3; x < 1000; x+=3 {
		sumofthrees += x
	}
	for x := 5; x < 1000; x+=5 {
		sumoffives += x
	}
	for x := 15; x < 1000; x+=15 {
		sumoffifteens += x
	}
	finalanswer = (sumofthrees + sumoffives) - sumoffifteens

	elapsed := time.Since(start)

	fmt.Println("Answer:\t", finalanswer)
	fmt.Println("Took:\t", elapsed)
}