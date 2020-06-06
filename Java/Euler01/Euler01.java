/* If we list all the natural numbers below 10 that are multiples of 3 or 5, 
we get 3, 5, 6 and 9. The sum of these multiples is 23.
Find the sum of all the multiples of 3 or 5 below 1000. 
(Answer = 233168) */

package euler01;
/**
 * @author ccnelson 2020
 */
public class Euler01 {

    public static void main(String[] args) 
    {
        long startTime;
        long endTime;
        long duration;
        // start timer
        startTime = System.nanoTime();
        
        double sumOfThrees = 0;
        double sumOfFives = 0;
        double sumOfFifteens = 0;
        double answer;
        
        for (int i = 0; i < 1000; i += 3)
        {
            sumOfThrees += i;
        }
        for (int j = 0; j < 1000; j += 5)
        {
            sumOfFives += j;
        }
        for (int k = 0; k < 1000; k += 15)
        {
            sumOfFifteens += k;
        }

        answer = (sumOfThrees + sumOfFives) - sumOfFifteens;
        
        // stop timer
        endTime = System.nanoTime();
        duration = (endTime - startTime);
        
        System.out.println("Answer: " + answer);
        System.out.println("Took " + duration + " nanoseconds");
    }
}
