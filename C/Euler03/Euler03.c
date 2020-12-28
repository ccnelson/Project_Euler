// C NELSON 2020
/* The prime factors of 13195 are 5, 7, 13 and 29.
What is the largest prime factor of the number 600851475143
(Answer = 6857) */

// solution divides out all factors until largest prime factor remains

#include <stdio.h>
#include <time.h>
#include <math.h>

int main()
{
    long long finalAnswer = 0;
    long long n = 600851475143;
    int div = 3;
    
    clock_t tic, toc;
    double timeElapsed;
    
    tic = clock();
    
    int nsqrt = sqrt(n);

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

    toc = clock();
    timeElapsed = (double)(toc - tic) / CLOCKS_PER_SEC;
    
    printf("Answer:\t %lld\n", finalAnswer);
    printf("Took:\t %.20f\n", timeElapsed);

    return 0;
}