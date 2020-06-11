/*A palindromic number reads the same both ways. 
The largest palindrome made from the product of 
two 2-digit numbers is 9009 = 91 × 99.
Find the largest palindrome made from the product 
of two 3-digit numbers. 
(Answer = 906609) */

// Use stringbuilder to reverse string
// ~ 14,000,000 nanoseconds

/**
 * @author ccnelson 2020
 */
public class Euler04_b
{
    public static void main(String[] args)
    {
        long startTime;
        long endTime;
        long duration;
        // start timer
        startTime = System.nanoTime(); 

        int temp = 0;
        int answer = 0;
        int val1 = 0;
        int val2 = 0;
        
        for (int i = 1000; i > 900; i--)
        {
            for (int j = 1000; j > 900; j--)
            {
                temp = i * j;
                if (Revnumstring(temp) == temp && temp > answer)
                {
                    answer = temp;
                    val1 = i;
                    val2 = j;
                }
            }
        }

        endTime = System.nanoTime();
        duration = (endTime - startTime);
        
        System.out.print("Answer: " + answer);
        System.out.println(" (by multiplying " + val1 + " & " + val2 + ")");
        System.out.println("Took " + duration + " nanoseconds");
    }

    public static int Revnumstring(int n)
    {
        StringBuilder stringBuild = new StringBuilder();
        stringBuild.append(Integer.toString(n));
        String revString = stringBuild.reverse().toString();
        int output = Integer.valueOf(revString);
        return output;
    }
}