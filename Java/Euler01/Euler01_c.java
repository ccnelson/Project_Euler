// C NELSON 2020
/* If we list all the natural numbers below 10 that are multiples of 3 or 5, 
we get 3, 5, 6 and 9. The sum of these multiples is 23.
Find the sum of all the multiples of 3 or 5 below 1000. 
(Answer = 233168) */

// solution uses conditional logical OR with remainder operator

public class Euler01_c {

    public static void main(String[] args) 
    {
        
        int finalAnswer = 0;

        long tic = System.nanoTime();
                
        for (int i = 1; i < 1000; i++)
        {
            if ((i % 3 == 0) || (i % 5 == 0))
            {
                finalAnswer += i;
            }
        }

        long toc = System.nanoTime();
        long timeElapsed = (toc - tic);
        
        System.out.println("Answer:\t" + finalAnswer);
        System.out.println("Took:\t" + timeElapsed + " ns");
    }
}
