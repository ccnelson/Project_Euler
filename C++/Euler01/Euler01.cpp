// C NELSON 2020
/* If we list all the natural numbers below 10 that are multiples of 3 or 5, 
we get 3, 5, 6 and 9. The sum of these multiples is 23.
Find the sum of all the multiples of 3 or 5 below 1000. 
(Answer = 233168) */

// solution uses arithmetic progression formula based on n(n+1)/2 multiplied by increment

#include <iostream>
#include <chrono>

using namespace std::chrono;

/*
Return sum of sequence from zero in increments to limit.
*/
int sequenceSum(int inc, int limit)
{
	int n = int(limit/inc);
	return inc * (n*(n+1)/2);
}

int main()
{
    int finalAnswer = 0;
    
    auto tic = high_resolution_clock::now();

    finalAnswer = (sequenceSum(3, 999) + sequenceSum(5, 999)) - sequenceSum(15, 999);

    auto toc = high_resolution_clock::now();
    auto timeElapsed = duration_cast<nanoseconds>(toc - tic).count();

    std::cout << "Answer:\t" << finalAnswer << "\nTook:\t" << timeElapsed << " nanoseconds";
}
