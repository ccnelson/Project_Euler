// C NELSON 2020
/* Each new term in the Fibonacci sequence is generated by 
adding the previous two terms. 
By starting with 1 and 2, the first 10 terms will be:
1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
By considering the terms in the Fibonacci sequence whose 
values do not exceed four million,
 find the sum of the even-valued terms.
(Answer = 4613732) */

// uses bitwise AND to test least significant bit

#include <iostream>
#include <chrono>

using namespace std::chrono; 

int main()
{
	int n1 = 1;
	int n2 = 0;
	int n3 = 0;
	int finalAnswer = 0;
	
	auto tic = high_resolution_clock::now();
	
	while (n3 < 4000000)
	{
		n3 = n1 + n2;
		if ((n3 & 1) != 1)
		{
			finalAnswer += n3;
		}
		n1 = n2;
		n2 = n3;
	}
	
	auto toc = high_resolution_clock::now();
	auto timeElapsed = duration_cast<microseconds>(toc - tic).count();

	std::cout << "Answer:\t" << finalAnswer << "\nTook:\t" << timeElapsed << " microseconds";
}