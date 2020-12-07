// C NELSON 2020
/* If we list all the natural numbers below 10 that are multiples of 3 or 5, 
we get 3, 5, 6 and 9. The sum of these multiples is 23.
Find the sum of all the multiples of 3 or 5 below 1000.
(Answer = 233168) */

// solution uses conditional logical OR operator with remainder operator

using System;
using System.Diagnostics;

namespace Euler01bname 
{
    class Euler01_b
    {
        static void Main() 
        {
            var watch = new System.Diagnostics.Stopwatch();
            watch.Start();

            int finalAnswer = 0;
            for (int i = 1; i < 1000; i++)
            {
                if ((i % 3 == 0) || (i % 5 == 0))
                {
                    finalAnswer += i;
                }
            }

            watch.Stop();

            Console.WriteLine("Answer:\t{0}", finalAnswer);
            Console.WriteLine("Took:\t{0} ticks", watch.ElapsedTicks);
            Console.WriteLine("took:\t{0} ms", watch.ElapsedMilliseconds);
        }
    }
}