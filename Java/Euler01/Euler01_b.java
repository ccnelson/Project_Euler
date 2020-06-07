/* If we list all the natural numbers below 10 that are multiples of 3 or 5, 
we get 3, 5, 6 and 9. The sum of these multiples is 23.
Find the sum of all the multiples of 3 or 5 below 1000. 
(Answer = 233168) */

// ths version uses conditional logical OR operator with remainder operator
// ~ 26500 nanoseconds

/**
 * @author ccnelson 2020
 */
public class Euler01_b {

    public static void main(final String[] args) 
    {
        long startTime;
        long endTime;
        long duration;
        // start timer
        startTime = System.nanoTime();
        
        double answer = 0;
        
        for (int i = 1; i < 1000; i++)
		{
    		if ((i % 3 == 0) || (i % 5 == 0))
			{
    			answer += i;
			}
		}

        // stop timer
        endTime = System.nanoTime();
        duration = (endTime - startTime);
        
        System.out.println("Answer: " + answer);
        System.out.println("Took " + duration + " nanoseconds");
    }
}
