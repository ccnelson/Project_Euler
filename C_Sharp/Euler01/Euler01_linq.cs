/* If we list all the natural numbers below 10 that are multiples of 3 or 5, 
we get 3, 5, 6 and 9. The sum of these multiples is 23.
Find the sum of all the multiples of 3 or 5 below 1000. */

// this version uses LINQ
// ~ 22,000 ticks

using System;
using System.Linq;

namespace Euler01_linqname
{
    class Euler01_linq
    {
        static void Main(string[] args)
        {
            var watch = new System.Diagnostics.Stopwatch();
            watch.Start();
            Int32 vals = Enumerable.Range(1, 999).Where(x => x % 3 == 0 || x % 5 == 0).Sum();
            watch.Stop();
            Console.WriteLine("Answer: {0}", vals);
            Console.WriteLine("Took: {0} ticks", watch.ElapsedTicks);
            Console.WriteLine("Took: {0} ms", watch.ElapsedMilliseconds);
        }
    }
}
