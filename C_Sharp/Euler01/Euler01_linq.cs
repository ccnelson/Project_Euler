// C NELSON 2020
/* If we list all the natural numbers below 10 that are multiples of 3 or 5, 
we get 3, 5, 6 and 9. The sum of these multiples is 23.
Find the sum of all the multiples of 3 or 5 below 1000.
(Answer = 233168) */

// solution uses LINQ query

using System;
using System.Linq;

namespace Euler01linqname
{
    class Euler01_linq
    {
        static void Main(string[] args)
        {
            var watch = new System.Diagnostics.Stopwatch();
            watch.Start();
            
            Int32 finalAnswer = Enumerable.Range(1, 999)
                .Where(x => x % 3 == 0 || x % 5 == 0)
                .Sum();
            
            watch.Stop();
            
            Console.WriteLine("Answer:\t{0}", finalAnswer);
            Console.WriteLine("Took:\t{0} ticks", watch.ElapsedTicks);
            Console.WriteLine("Took:\t{0} ms", watch.ElapsedMilliseconds);
        }
    }
}
