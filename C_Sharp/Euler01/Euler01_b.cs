/* If we list all the natural numbers below 10 that are multiples of 3 or 5, 
we get 3, 5, 6 and 9. The sum of these multiples is 23.
Find the sum of all the multiples of 3 or 5 below 1000. */

// ths version uses conditional logical OR operator with remainder operator
// ~ 55 ticks

using System;
using System.Diagnostics;

namespace euler1name 
{
   class Euler01_b
   {
      static void Main() 
      {
		var watch = new System.Diagnostics.Stopwatch();
		watch.Start();

		int total = 0;
		for (int i = 1; i < 1000; i++)
		{
    		if ((i % 3 == 0) || (i % 5 == 0))
			{
    			total += i;
			}
		}

		watch.Stop();
		Console.WriteLine("total: {0}", total);
		Console.WriteLine("Took: {0} ticks", watch.ElapsedTicks);
		Console.WriteLine("took: {0}", watch.ElapsedMilliseconds);
      }
   }
}