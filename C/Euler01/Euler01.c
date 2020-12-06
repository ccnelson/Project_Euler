// C NELSON 2020
/* If we list all the natural numbers below 10 that are multiples of 3 or 5, 
we get 3, 5, 6 and 9. The sum of these multiples is 23.
Find the sum of all the multiples of 3 or 5 below 1000. 
(Answer = 233168) */

// solution uses inclusion-exclusion principle

#include <stdio.h>
#include <time.h>

int main()
{
	int sumOfThrees = 0;
	int sumOfFives = 0;
	int sumOfFifteens = 0;
	int finalAnswer = 0;
	
	clock_t tic, toc;
	double timeElapsed;
	
	tic = clock();
	
	for (int i = 3; i < 1000; i += 3)
	{
		sumOfThrees += i;
	}
	for (int j = 5; j < 1000; j += 5)
	{
		sumOfFives += j;
	}
	for (int k = 15; k < 1000; k += 15)
	{
		sumOfFifteens += k;
	}
	finalAnswer = (sumOfThrees + sumOfFives) - sumOfFifteens;
	
	toc = clock();
	timeElapsed = (double)(toc - tic) / CLOCKS_PER_SEC;
	
	printf("Answer:\t %ld\n", finalAnswer);
	printf("Took:\t %.20f\n", timeElapsed);
	
	return 0;
}