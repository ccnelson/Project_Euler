/*A palindromic number reads the same both ways. 
The largest palindrome made from the product of 
two 2-digit numbers is 9009 = 91 × 99.
Find the largest palindrome made from the product 
of two 3-digit numbers. 
(Answer = 906609) */

// Uses math to reverse positive integers
// ~ 3500 ticks

using System;
using System.Diagnostics;

namespace Euler04name
{
    class Euler04
    {
        static int revnum(int num) // reverse number mathmatically (only positive integers)
        {
            int reverse = 0;
            int endDigit = 0;
            while (num > 0)
            {
                endDigit = num % 10;
                reverse = (reverse * 10) + endDigit;
                num = num / 10;  // remainder is rounded
            }
            return reverse;
        }

        static void Main(string[] args)
        {
            var watch = new System.Diagnostics.Stopwatch();
            watch.Start();

            int temp = 0;
            int temp2 = 0;
            int answer = 0;
            int val1 = 0;
            int val2 = 0;

            for (int i = 1000; i > 900; i--)
            {
                for (int j = 1000; j > 900; j--)
                {
                    temp = i * j;
                    temp2 = revnum(temp);

                    if (temp == temp2 && temp > answer)
                    {
                        answer = temp;
                        val1 = i; // store values multiplied
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
