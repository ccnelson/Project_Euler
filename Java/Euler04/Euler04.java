/*A palindromic number reads the same both ways. 
The largest palindrome made from the product of 
two 2-digit numbers is 9009 = 91 × 99.
Find the largest palindrome made from the product 
of two 3-digit numbers. 
(Answer = 906609) */

// Uses math method to reverse positive integers
// ~ 1,200,000 nanoseconds

/**
 * @author ccnelson 2020
 */
public class Euler04 
{
    public static void main(String[] args) 
    {
        long startTime;
        long endTime;
        long duration;
        // start timer
        startTime = System.nanoTime();  

        int temp = 0;
        int temp2 = 0;
        int answer = 0;
        int val1 = 0;
        int val2 = 0;
        
        for (int i = 1000; i > 900; i--)
        {
            for (int j = 1000; j > 900; j--)
            {
                temp = i * j;
                temp2 = Revnum(temp);
                if (temp == temp2 && temp > answer)
                {
                    answer = temp;
                    val1 = i;
                    val2 = j;
                }
            }
        }
        
        // stop timer
        endTime = System.nanoTime();
        duration = (endTime - startTime);
        
        System.out.print("Answer: " + answer);
        System.out.println(" (by multiplying " + val1 + " & " + val2 + ")");
        System.out.println("Took " + duration + " nanoseconds");
    }
    
    // reverse number - positive integers only
    public static int Revnum(int n)
    {
        int reverse = 0;
        int endDigit = 0;
        while (n > 0)
        {
            endDigit = n % 10;
            reverse = (reverse * 10) + endDigit;
            n = n / 10;
        }
        return reverse;
    }
}
