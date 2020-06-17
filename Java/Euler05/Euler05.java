/* 2520 is the smallest number that can be divided by 
each of the numbers from 1 to 10 without any remainder.
what is the smallest positive number that is evenly 
divisible by all of the numbers from 1 to 20?
(Answer: 232792560) */

// uses multiplication of prime factors to find LCM
// ~ 3,000,000 nanoseconds

/**
* @author ccnelson 2020
*/
import java.util.ArrayList;

public class Euler05
{
    public static void main(String[] args)
    {
        long startTime;
        long endTime;
        long duration;
        // start timer
        startTime = System.nanoTime();

        int limit = 20; // limit in question 
        ArrayList<Integer> plist1 = new ArrayList<>();
        // create list of primes
        for (int i = 0; i <= limit; i++)
        {
            if (IsPrime(i))
            {
                plist1.add(i);
            }
        }

        // list of lists storing prime factors corresponding to index
        ArrayList<ArrayList<Integer>> primeFactorList = new ArrayList<ArrayList<Integer>>();

        for (int i = 0; i <= limit; i++)
        {
            primeFactorList.add(PrimeFactors(i, plist1));
        }

        // list to count max times a factor appears
        ArrayList<Integer> primesForAdding = new ArrayList<Integer>();

        for (Integer i = 0; i <= limit; i++)
        {
            if (IsPrime(i))
            {
                int pcounter = 0; // overall counter
                for (ArrayList sublist : primeFactorList)
                {
                    int lpcounter = 0; // local counter

                    for (int k = 0; k < sublist.size(); k++)
                    {
                        if (sublist.get(k) == i)
                        {
                            lpcounter += 1;
                        }
                    }
                    
                    // if local counter greater than overall
                    if (lpcounter > pcounter)
                    {
                        pcounter = lpcounter;
                    }
                }
                // add to list, correpsonding to index
                primesForAdding.add(pcounter);
            }
            else
            {
                // signifies number is safe to ignore
                primesForAdding.add(0);
            }
        }

        int answer = 1; // less than 1 would ouput zero
        // iterate through total appearances of primes
        for (int i = 0; i < primesForAdding.size(); i++)
        {
            if (primesForAdding.get(i) > 0) // number of notes
            {
                for (int j = 1; j <= primesForAdding.get(i); j++)
                {
                    answer *= i; // multiplied answer corresponding number of times
                }
            }
        }

        // stop timer
        endTime = System.nanoTime();
        duration = (endTime - startTime);

        System.out.println("Answer: " + answer);;
        System.out.println("Took " + duration + " nanoseconds");
    }

    public static boolean IsPrime(int n)
    {
        if (n <= 1) return false;
        if (n == 2) return true;
        if ((n & 1) != 1) return false; // bitwise uneven test
        double boundary = java.lang.Math.sqrt(n);
        for (int i = 3; i <= boundary; i += 2)
        {
            if (n % i == 0) return false;
        }
        return true;
    }

    // supply a number and list of primes, return list of prime factors of number
    public static ArrayList<Integer> PrimeFactors(int n, ArrayList<Integer> primeList)
    {
        int primeIndex = 0; // track prime examined
        // list to store factors
        ArrayList<Integer> factorList = new ArrayList<Integer>();

        while (n > 1)
        {
            if ( n % primeList.get(primeIndex) == 0) // if divides evenly its a prime factor
            {
                factorList.add(primeList.get(primeIndex)); // add to list
                n = n / primeList.get(primeIndex); // divide and continue
            }
            else
            {
                primeIndex += 1; // if doesnt divide evenly, increment and examine next prime
            }
        }
        return factorList;
    }
}



