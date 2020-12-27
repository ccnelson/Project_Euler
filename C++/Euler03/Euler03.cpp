// C NELSON 2020
/* The prime factors of 13195 are 5, 7, 13 and 29.
What is the largest prime factor of the number 600851475143
(Answer = 6857) */

// solution divides out all factors until largest prime factor remains

#include <iostream>
#include <chrono>
#include <math.h>

using namespace std::chrono;

int main()
{
    long long int finalAnswer = 0;
    long long int n = 600851475143LL;
    int div = 3;
    
    auto tic = high_resolution_clock::now();

    int nsqrt = sqrt(n);

    if ((n & 1) != 1)           // treat even numbers seperately
    {
        while ((n & 1) != 1)    // while number is even
        {
            n = n / 2;          // divide out all 2s
        }
        if (n == 1)             // if we have divided out everything
        {
            div = 2;            // update divisor
        }
    }

    while (n > 1 && div < nsqrt)    // stops at square root of n in case n is prime
    {
        if (n % div == 0)           // if number is a divisor
        {
            n = n / div;            // divide it out
        } 
        else 
        {
            div += 2;               // otherwise iterate though odds
        }
    }
    
    finalAnswer = (n != 1) ? n : div;   // if n!=1 no. not divided as is prime, 
                                        // otherwise answer is divisor

    auto toc = high_resolution_clock::now();
    auto timeElapsed = duration_cast<nanoseconds>(toc - tic).count();

    std::cout << "Answer:\t" << finalAnswer << "\nTook:\t" << timeElapsed << " nanoseconds";
}
