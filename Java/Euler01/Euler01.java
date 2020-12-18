// C NELSON 2020
/* If we list all the natural numbers below 10 that are multiples of 3 or 5, 
we get 3, 5, 6 and 9. The sum of these multiples is 23.
Find the sum of all the multiples of 3 or 5 below 1000. 
(Answer = 233168) */

// solution uses inclusion-exclusion principle

public class Euler01 {

    public static void main(String[] args) 
    {
        
        int sumOfThrees = 0;
        int sumOfFives = 0;
        int sumOfFifteens = 0;
        int finalAnswer;

        long tic = System.nanoTime();
        
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

        finalAnswer = (sumOfThrees + sumOfFives) - sumOfFifteens;
        
        long toc = System.nanoTime();
        long timeElapsed = (toc - tic);
        
        System.out.println("Answer:\t" + finalAnswer);
        System.out.println("Took:\t" + timeElapsed + " ns");
    }
}
