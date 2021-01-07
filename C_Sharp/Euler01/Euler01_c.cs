// C NELSON 2021
/* If we list all the natural numbers below 10 that are multiples of 3 or 5, 
we get 3, 5, 6 and 9. The sum of these multiples is 23.
Find the sum of all the multiples of 3 or 5 below 1000. 
(Answer = 233168) */

// solution uses arithmetic series formula with inclusion-exclusion principle

using System;
using System.Diagnostics;

namespace Euler01cname
{
    class Euler01_c
    {
        // arithmetic series formula : Sn = n/2(2a+(n-1)d)
        // a = 1st term, d = common difference, n = no. of terms
        static double seqSum(int a, int d, double n)
        {
            return ((n / 2) * (2 * a + (n - 1) * d));
        }

        static void Main(string[] args)
        {
            double finalAnswer = 0;

            var watch = new System.Diagnostics.Stopwatch();
            watch.Start();

            finalAnswer = (seqSum(3, 3, (999/3)) 
                + seqSum(5, 5, (999/5)) 
                - seqSum(15, 15, (999/15)));

            watch.Stop();

            Console.WriteLine("Answer:\t{0}", finalAnswer);
            Console.WriteLine("Took:\t{0} ticks", watch.ElapsedTicks);
            Console.WriteLine("Took:\t{0} ms", watch.ElapsedMilliseconds);
        }
    }
}