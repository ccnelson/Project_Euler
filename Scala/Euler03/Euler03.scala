// C NELSON 2021
/* The prime factors of 13195 are 5, 7, 13 and 29.
What is the largest prime factor of the number 600851475143
(Answer = 6857) */

// solution divides out all factors until largest prime factor remains

import scala.math.sqrt

object Euler03
{
    def main(args: Array[String]) = 
    {
        
        var finalAnswer = 0L
        var n = 600851475143L
        var div = 3L
        
        val tic = System.nanoTime

        var nsqrt = sqrt(n.toDouble).toInt

        if ((n & 1) != 1)
        {
            while ((n & 1) != 1)
            {
                n = n / 2
            }
            if (n == 1)
            {
                div = 2
            }
        }

        while (n > 1 && div < nsqrt)
        {
            if (n % div == 0)
            {
                n = n / div
            }
            else
            {
                div += 2
            }
        }

        finalAnswer = if (n != 1) n else div
        
        val toc = System.nanoTime
        val timeElapsed = toc - tic

        println(s"Answer:\t$finalAnswer")
        println(s"Took:\t$timeElapsed ns")
    }
}
