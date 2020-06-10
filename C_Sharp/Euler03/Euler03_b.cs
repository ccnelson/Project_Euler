/* The prime factors of 13195 are 5, 7, 13 and 29.
What is the largest prime factor of the number 600851475143
(Answer = 6857) */

// Count from 1 to target, checking for factors which are prime, add each prime factor to a list,
// find product of list, if product = target, last prime added is highest 
// ~ 13000 ticks

using System;
using System.Collections.Generic;
using System.Diagnostics;

namespace Euler03_bname
{
    class Euler03_b
    {
        static Boolean isPrime(int target)
        {
            if (target <= 1) return false; // 1 isnt prime
            if (target == 2) return true; // 2 is prime
            if ((target & 1) != 1) return false; // bitwise even test
            var boundary = (int)Math.Floor(Math.Sqrt(target));
            for (int i = 3; i <= boundary; i += 2) // increment thru odds
            {
                if (target % i == 0) return false;
            }
            return true;
        }

        static void Main(string[] args)
        {
            var watch = new System.Diagnostics.Stopwatch();
            long num = 600851475143;
            List<long> pflist = new List<long>(); // list to store prime factors
            long prod = 1; // store product of prime factors
            watch.Start();
            for (int i = 1; i < num; i++)
            {
                if (num % i == 0 && isPrime(i) == true) // check if prime factor
                {   
                    pflist.Add(i); // add to list
                    prod = 1; // reset product (must be at least 1)
                    foreach (var m in pflist) { prod *= m; } // multiply list contents   
                }
                if (prod == num) // if product = target, prime factor is highest
                {
                    Console.WriteLine("Answer: {0}", i);               
                    break; // stop the for loop early
                }
            }
            watch.Stop();
            Console.WriteLine("Took: {0} ticks", watch.ElapsedTicks);
        }
    }
}
