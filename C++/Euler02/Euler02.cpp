// place holder

#include <iostream>
#include <chrono>

using namespace std;
using namespace std::chrono; 

int main()
{

	long finalanswer = 0;
	
	auto tic = high_resolution_clock::now();
	
	
	
	
	auto toc = high_resolution_clock::now();
	auto elapsed = duration_cast<microseconds>(toc - tic).count();

	cout << "Answer:\t" << finalanswer << "\nTook:\t" << elapsed << "ms" << endl;
}