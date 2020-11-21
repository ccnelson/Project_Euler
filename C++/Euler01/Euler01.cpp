/* If we list all the natural numbers below 10 that are multiples of 3 or 5, 
we get 3, 5, 6 and 9. The sum of these multiples is 23.
Find the sum of all the multiples of 3 or 5 below 1000. 
(Answer = 233168) */

// solution uses inclusion-exclusion principle

#include <iostream>
#include <chrono>

using namespace std;
using namespace std::chrono; 

int main()
{
    long sumofthrees = 0;
	long sumoffives = 0;
	long sumoffifteens = 0;
	long finalanswer = 0;
	
	auto tic = high_resolution_clock::now();
	
	for (int i = 3; i < 1000; i += 3)
	{
		sumofthrees += i;
	}
	for (int j = 5; j < 1000; j += 5)
	{
		sumoffives += j;
	}
	for (int k = 15; k < 1000; k += 15)
	{
		sumoffifteens += k;
	}
	finalanswer = (sumofthrees + sumoffives) - sumoffifteens;
	
	auto toc = high_resolution_clock::now();
	auto elapsed = duration_cast<microseconds>(toc - tic).count();

	cout << "Answer:\t" << finalanswer << "\nTook:\t" << elapsed << "ms" << endl;
}