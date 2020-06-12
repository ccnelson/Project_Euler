/* 2520 is the smallest number that can be divided by 
each of the numbers from 1 to 10 without any remainder.
what is the smallest positive number that is evenly 
divisible by all of the numbers from 1 to 20?
(Answer: 232792560) */

// uses multiplication of prime factors to find LCM
// ~ 9,000 ticks

using System;
using System.Collections.Generic;
using System.Diagnostics;

namespace Euler05name
{
    class Euler05
    {
        static Boolean IsPrime(int n)
        {
            if (n <= 1) return false;
            if (n == 2) return true;
            if ((n & 1) != 1) return false; // bitwise
            int boundary = (int)Math.Floor(Math.Sqrt(n));
            for (int i = 3; i <= boundary; i += 2)
            {
                if (n % i == 0) return false;
            }
            return true;
        }

        // return list of prime factors of n, from list of primes supplied
        static List<int> PrimeFactors(int n, List<int> primeList)
        {
            int primeIndex = 0; // track which prime
            List<int> factorList = new List<int>(); // list to store factors
            while (n > 1)
            {
                if ( n % primeList[primeIndex] == 0 ) // if number divides evenly into prime
                {
                    factorList.Add(primeList[primeIndex]); // add prime to list
                    n = n / primeList[primeIndex]; // divide and continue
                }
                else { primeIndex += 1; } // if doesnt divide evenly increment prime being used
            }
            return factorList;
        }
        

        static void Main()
        {
            var watch = new System.Diagnostics.Stopwatch();
            watch.Start();
            int limit = 20; // set limit
            
            List<int> primes = new List<int>();  // create list of primes within limit
            for (int i = 0; i <= limit; i++)
            {
                if (IsPrime(i)) { primes.Add(i); }
            }
            
            // list of lists stores prime factors corresponding to index numbers
            List<List<int>> primeFactorList = new List<List<int>>();
            for (int i = 0; i <= limit; i++)
            {
                primeFactorList.Add(PrimeFactors(i, primes));  // fill with primefactors
            }
            
            // list to count maximum times a factor appears
            List<int> primesForAdding = new List<int>();
            for (int i = 0; i <= limit; i++)
            {
                if (IsPrime(i))
                {
                    int pcounter = 0; // overall counter
                    foreach (List<int> subList in primeFactorList)
                    {
                        int lpcounter = 0; // local counter
                        foreach (int item in subList)
                        {
                            if (item == i) { lpcounter += 1; } // look for number in question
                        }
                        // if local count is greater than overall, update overall
                        if (lpcounter > pcounter) { pcounter = lpcounter;} 
                    }
                    primesForAdding.Add(pcounter); // add to list, corresponding to index
                }
                else { primesForAdding.Add(0); } // use zeroes to signify an index can be ignored
            }
            
            int answer = 1; // start with 1.. starting with zero would ouput 0
            for (int i = 0; i < primesForAdding.Count; i++) // iterate through total appearances of primes
            {
                if (primesForAdding[i] > 0) // for numbers with more than no appearances
                {
                    for (int j = 1; j <= primesForAdding[i]; j++) // multiply answer corresponding number of times
                    {
                        answer *= i;
                    }
                }
            }
            
            watch.Stop();
            Console.WriteLine("\nAnswer: {0}", answer);
            Console.WriteLine("Took: {0} ticks", watch.ElapsedTicks);
            Console.WriteLine("Took: {0} ms", watch.ElapsedMilliseconds);
        }
    }
}
