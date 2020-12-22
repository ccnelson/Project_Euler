// C NELSON 2020
/* If we list all the natural numbers below 10 that are multiples of 3 or 5, 
we get 3, 5, 6 and 9. The sum of these multiples is 23.
Find the sum of all the multiples of 3 or 5 below 1000. 
(Answer = 233168) */

// solution uses inclusion-exclusion principle

object Euler01 
{
    def main(args: Array[String]) = 
    {
        var sumOfThrees = 0
        var sumOfFives = 0
        var sumOfFifteens = 0

        val tic = System.nanoTime

        for (i <- 3 to 999 by 3) 
        {
            sumOfThrees += i
        }
        for (j <- 5 to 999 by 5) 
        {
            sumOfFives += j
        }
        for (k <- 15 to 999 by 15) 
        {
            sumOfFifteens += k
        }
        val finalAnswer = (sumOfThrees + sumOfFives) - sumOfFifteens

        val toc = System.nanoTime
        val timeElapsed = (toc - tic) / 1e9d

        println(s"Answer:\t$finalAnswer")
        println(s"Took:\t$timeElapsed ns")
    }
}
