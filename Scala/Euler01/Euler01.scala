/* If we list all the natural numbers below 10 that are multiples of 3 or 5, 
we get 3, 5, 6 and 9. The sum of these multiples is 23.
Find the sum of all the multiples of 3 or 5 below 1000. 
(Answer = 233168) */

// solution uses inclusion-exclusion principle

object Euler01 
{
	def main(args: Array[String]) = 
	{
		var sumofthrees = 0
		var sumoffives = 0
		var sumoffifteens = 0

		val tic = System.nanoTime

		for(i <-3 to 999 by 3) 
		{
			sumofthrees += i
		}
		for(j <-5 to 999 by 5) 
		{
			sumoffives += j
		}
		for(k <-15 to 999 by 15) 
		{
			sumoffifteens += k
		}
		val finalanswer = (sumofthrees + sumoffives) - sumoffifteens

		val duration = (System.nanoTime - tic) / 1e9d

		println(s"Answer:\t$finalanswer")
		println(s"Took:\t$duration ns")
	}
}
