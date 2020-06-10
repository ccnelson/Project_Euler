/* The prime factors of 13195 are 5, 7, 13 and 29.
What is the largest prime factor of the number 600851475143
(Answer = 6857) */

// Divide out all factors until highest prime factor remains
// ~ 110 ticks

using System;

namespace Euler03name
{
    class Euler03
    {
        static void Main(string[] args)
        {
            var watch = new System.Diagnostics.Stopwatch();
            watch.Start();

            long n = 600851475143;
            int factor = 3; // n isnt even
            double maxfactor = Math.Sqrt(n); 
            long answer = 0; 
            
            while (n > 1 && factor <= maxfactor)
            {
                if (n % factor == 0)  // if factor
                {
                    n = n / factor;  // divide it
                    while (n % factor == 0) { n = n / factor; } // keep dividing
                    maxfactor = Math.Sqrt(n); // update boundary
                }
                factor += 2; // increment by 2 (only dealing with odds)
            }
            answer = n;

            watch.Stop();
            Console.WriteLine("Answer: {0}", answer);
            Console.WriteLine("Took: {0} ticks", watch.ElapsedTicks);
            Console.WriteLine("Took: {0} ms", watch.ElapsedMilliseconds);
        }
    }
}
