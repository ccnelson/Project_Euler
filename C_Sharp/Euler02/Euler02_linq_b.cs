﻿/* Each new term in the Fibonacci sequence is generated by 
adding the previous two terms. 
By starting with 1 and 2, the first 10 terms will be:
1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
By considering the terms in the Fibonacci sequence whose 
values do not exceed four million,
 find the sum of the even-valued terms.
(Answer = 4613732) */

// ~ 300000 ticks
// uses LINQ
// NOTE: csc wont compile due to token errors. used visual studio.

using System;
using System.Collections.Generic;
using System.Linq;

namespace Euler02linqname
{
    class Euler02_linq
    {
        static void Main(string[] args)
        {
            IEnumerable<int> Fibonacci()
            {
                int current = 0;
                int next = 1;
                int temp;
                while (true)
                {
                    yield return current; // returns current no.
                    temp = next; // temporaily store next no.
                    next = current + next; // prepare next no.
                    current = temp; // assign next no.
                }
            }

            var watch = new System.Diagnostics.Stopwatch();
            watch.Start();

            int evenSum = Fibonacci().TakeWhile(x => x < 4000000L).Where(y => y % 2 == 0).Sum();

            watch.Stop();
            Console.WriteLine("Answer: {0}", evenSum);
            Console.WriteLine("Took: {0} ticks", watch.ElapsedTicks);
            Console.WriteLine("Took: {0} ms", watch.ElapsedMilliseconds);
        }
    }
}