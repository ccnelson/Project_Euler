/* Each new term in the Fibonacci sequence is generated by 
adding the previous two terms. 
By starting with 1 and 2, the first 10 terms will be:
1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
By considering the terms in the Fibonacci sequence whose 
values do not exceed four million,
 find the sum of the even-valued terms.
(Answer = 4613732) */

// uses bitwise AND to test least significant bit
// ~ 1900 nanoseconds

package euler02;
/**
 * @author ccnelson 2020
 */
public class Euler02 
{
    public static void main(String[] args) 
    {
        long startTime;
        long endTime;
        long duration;
        // start timer
        startTime = System.nanoTime();
        
        int n1 = 1;
        int n2 = 2;
        int n3 = 0;
        int answer = 2;
                
        while (n3 < 4000000)
        {
            n3 = n1 + n2;
            if ((n3 & 1) != 1) // is even
            {
                answer += n3;
            }
            n1 = n2;
            n2 = n3;
        }
        
        // stop timer
        endTime = System.nanoTime();
        duration = (endTime - startTime);
        
        System.out.println("Answer: " + answer);
        System.out.println("Took " + duration + " nanoseconds");
    }
}
