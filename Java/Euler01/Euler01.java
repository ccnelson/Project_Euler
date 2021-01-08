// C NELSON 2021
/* If we list all the natural numbers below 10 that are multiples of 3 or 5, 
we get 3, 5, 6 and 9. The sum of these multiples is 23.
Find the sum of all the multiples of 3 or 5 below 1000. 
(Answer = 233168) */

// solution uses arithmetic series formula with inclusion-exclusion principle

public class Euler01 {

    public static void main(String[] args) 
    {
        
        float sumOfThrees = 0;
        float sumOfFives = 0;
        float sumOfFifteens = 0;
        float finalAnswer;

        long tic = System.nanoTime();

        sumOfThrees = SeqSum(3, 3, (999/3));
        sumOfFives = SeqSum(5, 5, (999/5));
        sumOfFifteens = SeqSum(15, 15, (999/15));

        finalAnswer = (sumOfThrees + sumOfFives) - sumOfFifteens;
        
        long toc = System.nanoTime();
        long timeElapsed = (toc - tic);
        
        System.out.println("Answer:\t" + finalAnswer);
        System.out.println("Took:\t" + timeElapsed + " ns");
    }

    // arithmetic series formula : Sn = n/2(2a+(n-1)d)
    // a = 1st term, d = common difference, n = no. of terms
    static float SeqSum(int a, int d, float n)
    {
        return (n / 2) * (2 * a + (n - 1) * d);
    }
}
