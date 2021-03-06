// C NELSON 2020
/* Each new term in the Fibonacci sequence is generated by 
adding the previous two terms. 
By starting with 1 and 2, the first 10 terms will be:
1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
By considering the terms in the Fibonacci sequence whose 
values do not exceed four million,
 find the sum of the even-valued terms.
(Answer = 4613732) */

// phi (golden ratio) is ratio between fibonacci terms.
// as even fibonacci terms occur following two odd terms, 
// use phi ^ 3 as ratio between consecutive even terms


#include <iostream>
#include <chrono>
#include <math.h>

using namespace std::chrono; 

int main()
{
    int n = 2;                  // first even fibonacci term
    int finalAnswer = 2;

    auto tic = high_resolution_clock::now();

    double phi3 = pow(1.61803398875, 3);

    while (n < 1000000)         // as ((phi ^ 3) * 1000000) > 4000000) 
    {
        n = round(n * phi3);
        finalAnswer = finalAnswer + n;
    }
    
    auto toc = high_resolution_clock::now();
    auto timeElapsed = duration_cast<nanoseconds>(toc - tic).count();

    std::cout << "Answer:\t" << finalAnswer << "\nTook:\t" << timeElapsed << " nanoseconds";
}