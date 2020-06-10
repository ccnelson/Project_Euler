/* The prime factors of 13195 are 5, 7, 13 and 29.
What is the largest prime factor of the number 600851475143
(Answer = 6857) */

// Divide out all factors until left with highest prime factor
// ~ 40000 nanoseconds

package euler03;
/**
 * @author ccnelson 2020
 */
public class Euler03 
{
    public static void main(String[] args) 
    {
        long startTime;
        long endTime;
        long duration;
        // start timer
        startTime = System.nanoTime();        
        
        long n = 600851475143L;
        int factor = 3;
        double maxfactor = java.lang.Math.sqrt(n);
        long answer = 0;
        
        while (n > 1 && factor <= maxfactor)
        {
            if (n % factor == 0)
            {
                n = n / factor;
                while (n % factor == 0) 
                { 
                    n = n / factor; 
                }
                maxfactor = java.lang.Math.sqrt(n);
            }
            factor += 2;
        }
        answer = n;
        
        // stop timer
        endTime = System.nanoTime();
        duration = (endTime - startTime);
        
        System.out.println("Answer: " + answer);
        System.out.println("Took " + duration + " nanoseconds");
    }
}
