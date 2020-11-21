
// placeholder

#include <stdio.h>
#include <time.h>

int main()
{
	
	double finalanswer;
	
	clock_t tic, toc;
	double time_elapsed;
	
	tic = clock();
	
	
	
	
	toc = clock();
	time_elapsed = (double)(toc - tic) / CLOCKS_PER_SEC;
	
	printf("Answer:\t %ld\n", finalanswer);
	printf("Took:\t %.20f\n", time_elapsed);
	
    return 0;
}