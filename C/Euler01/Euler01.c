/* If we list all the natural numbers below 10 that are multiples of 3 or 5, 
we get 3, 5, 6 and 9. The sum of these multiples is 23.
Find the sum of all the multiples of 3 or 5 below 1000. 
(Answer = 233168) */

#include <stdio.h>
#include <time.h>

int main()
{
    long sumofthrees = 0;
	long sumoffives = 0;
	long sumoffifteens = 0;
	long finalanswer = 0;
	
	clock_t tic, toc;
	double time_elapsed;
	
	tic = clock();
	
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
	
	toc = clock();
	time_elapsed = (double)(toc - tic) / CLOCKS_PER_SEC;
	
	printf("Answer:\t %ld\n", finalanswer);
	printf("Took:\t %.20f\n", time_elapsed);
	
    return 0;
}