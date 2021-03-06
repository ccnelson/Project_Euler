// C NELSON 2021
/* If we list all the natural numbers below 10 that are multiples of 3 or 5, 
we get 3, 5, 6 and 9. The sum of these multiples is 23.
Find the sum of all the multiples of 3 or 5 below 1000. 
(Answer = 233168) */

// solution uses arithmetic series formula with inclusion-exclusion principle

object Euler01
{
    def main(args: Array[String]) = 
    {

        val tic = System.nanoTime

        val sumOfThrees = seqSum(3, 3, (999/3))
        val sumOfFives = seqSum(5, 5, (999/5))
        val sumOfFifteens = seqSum(15, 15, (999/15))

        val finalAnswer = (sumOfThrees + sumOfFives) - sumOfFifteens

        val toc = System.nanoTime
        val timeElapsed = toc - tic

        println(s"Answer:\t$finalAnswer")
        println(s"Took:\t$timeElapsed ns")
    }

    // arithmetic series formula : Sn = n/2(2a+(n-1)d)
    // a = 1st term, d = common difference, n = no. of terms
    def seqSum(a : Int, d : Int, n : Float) : Float =
    {
        return (n / 2) * (2 * a + (n - 1) * d)
    }
}
