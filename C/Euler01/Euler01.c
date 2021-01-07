// C NELSON 2021
/* If we list all the natural numbers below 10 that are multiples of 3 or 5, 
we get 3, 5, 6 and 9. The sum of these multiples is 23.
Find the sum of all the multiples of 3 or 5 below 1000. 
(Answer = 233168) */

// solution uses arithmetic series formula with inclusion-exclusion principle

#include <stdio.h>
#include <time.h>
#include <math.h>

// arithmetic series formula : Sn = n/2(2a+(n-1)d)
// a = 1st term, d = common difference, n = no. of terms
int seqSum(int a, int d, double n)
{
    return (n / 2) * (2 * a + (n - 1) * d);
}

int main()
{
    int finalAnswer = 0;
    
    clock_t tic, toc;
    double timeElapsed;
    
    tic = clock();

    finalAnswer = (seqSum(3, 3, floor(999/3)) + seqSum(5, 5, floor(999/5)) - seqSum(15, 15, floor(999/15)));

    toc = clock();
    timeElapsed = (double)(toc - tic) / CLOCKS_PER_SEC;
    
    printf("Answer:\t %ld\n", finalAnswer);
    printf("Took:\t %f\n", timeElapsed);
    
    return 0;
}
