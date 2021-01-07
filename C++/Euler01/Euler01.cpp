// C NELSON 2021
/* If we list all the natural numbers below 10 that are multiples of 3 or 5, 
we get 3, 5, 6 and 9. The sum of these multiples is 23.
Find the sum of all the multiples of 3 or 5 below 1000. 
(Answer = 233168) */

// solution uses arithmetic series formula with inclusion-exclusion principle

#include <iostream>
#include <chrono>
#include <math.h>

using namespace std::chrono;

// arithmetic series formula : Sn = n/2(2a+(n-1)d)
// a = 1st term, d = common difference, n = no. of terms
int seqSum(int a, int d, float n)
{
	return (n / 2) * (2 * a + (n - 1) * d);
}

int main()
{
    int finalAnswer = 0;
    
    auto tic = high_resolution_clock::now();

    finalAnswer = (seqSum(3, 3, floor(999/3)) + seqSum(5, 5, floor(999/5)) - seqSum(15, 15, floor(999/15)));

    auto toc = high_resolution_clock::now();
    auto timeElapsed = duration_cast<nanoseconds>(toc - tic).count();

    std::cout << "Answer:\t" << finalAnswer << "\nTook:\t" << timeElapsed << " nanoseconds";

}
