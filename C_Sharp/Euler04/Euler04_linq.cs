/*A palindromic number reads the same both ways. 
The largest palindrome made from the product of 
two 2-digit numbers is 9009 = 91 × 99.
Find the largest palindrome made from the product 
of two 3-digit numbers. 
(Answer = 906609) */

// Uses LINQ to compare converted reversed string
// ~ 90000 ticks

using System;
using System.Linq;

namespace Euler04_linqname
{
    class Euler04_linq
    {
        static bool IsReversable(int target)
        {
            var digits = target.ToString().ToCharArray();
            return digits.SequenceEqual(digits.Reverse());
        }


        static void Main(string[] args)
        {
            var watch = new System.Diagnostics.Stopwatch();
            watch.Start();

            int temp = 0;
            int answer = 0;
            int val1 = 0;
            int val2 = 0;

            for (int i = 1000; i > 900; i--)
            {
                for (int j = 1000; j > 900; j--)
                {
                    temp = i * j;
                    if (IsReversable(temp) == true && temp > answer)
                    {
                        answer = temp;
                        val1 = i;
                        val2 = j;
                    }
                }
            }
            watch.Stop();
            Console.WriteLine("Answer: {0}", answer);
            Console.WriteLine("Product of {0} & {1}", val1, val2);
            Console.WriteLine("Took: {0} ticks", watch.ElapsedTicks);
            Console.WriteLine("Took: {0} ms", watch.ElapsedMilliseconds);
        }
    }
}
