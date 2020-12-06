// C NELSON 2020
/* If we list all the natural numbers below 10 that are multiples of 3 or 5, 
we get 3, 5, 6 and 9. The sum of these multiples is 23.
Find the sum of all the multiples of 3 or 5 below 1000. 
(Answer = 233168) */

// solution uses inclusion-exclusion principle

using System;
using System.Diagnostics;

namespace Euler01name
{
    class Euler01
    {
        static void Main(string[] args)
        {
            int sumOfThrees = 0;
            int sumOfFives = 0;
            int sumOfFifteens = 0;
            int finalAnswer = 0;

            var watch = new System.Diagnostics.Stopwatch();
            watch.Start();

            for (int i = 3; i < 1000; i += 3)
            {
                sumOfThrees += i;
            }
            for (int j = 5; j < 1000; j += 5)
            {
                sumOfFives += j;
            }
            for (int k = 15; k < 1000; k += 15)
            {
                sumOfFifteens += k;
            }
            finalAnswer = (sumOfThrees + sumOfFives) - sumOfFifteens;

            watch.Stop();

            Console.WriteLine("Answer:\t{0}", finalAnswer);
            Console.WriteLine("Took:\t{0} ticks", watch.ElapsedTicks);
            Console.WriteLine("Took:\t{0} ms", watch.ElapsedMilliseconds);
        }
    }
}