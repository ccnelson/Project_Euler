// C NELSON 2020
/* The prime factors of 13195 are 5, 7, 13 and 29.
What is the largest prime factor of the number 600851475143
(finalAnswer = 6857) */

// solution divides out all factors until largest prime factor remains

using System;

namespace Euler03name
{
    class Euler03
    {
        static void Main(string[] args)
        {
            long finalAnswer = 0; 
            long n = 600851475143;
            int div = 3;
            
            var watch = new System.Diagnostics.Stopwatch();
            watch.Start();

            double nsqrt = Math.Sqrt(n); 

            if ((n & 1) != 1)
            {
                while ((n & 1) != 1)
                {
                    n = n / 2;
                }
                if (n == 1)
                {
                    div = 2;
                }
            }

            while (n > 1 && div < nsqrt)
            {
                if (n % div == 0)
                {
                    n = n / div;
                }
                else
                {
                    div += 2;
                }
            }

            finalAnswer = (n != 1) ? n : div;

            watch.Stop();
            Console.WriteLine("finalAnswer: {0}", finalAnswer);
            Console.WriteLine("Took: {0} ticks", watch.ElapsedTicks);
            Console.WriteLine("Took: {0} ms", watch.ElapsedMilliseconds);
        }
    }
}
