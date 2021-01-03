// C NELSON 2020
/* The prime factors of 13195 are 5, 7, 13 and 29.
What is the largest prime div of the number 600851475143
(Answer = 6857) */

// solution divides out all factors until largest prime factor remains

public class Euler03 
{
    public static void main(String[] args) 
    {

        long finalAnswer = 0;
        long n = 600851475143L;
        int div = 3;

        long tic = System.nanoTime();

        double nsqrt = java.lang.Math.sqrt(n);

        // if n is even divide out all 2s
        if ((n & 1) != 1)
        {
            while ((n & 1) != 1)
            {
                n = n / 2;
            }
            if (n == 1)
            {
                div = 2;
            }
        }
        
        // divide out all odds, stop if n is prime
        while (n > 1 && div <= nsqrt)
        {
            if (n % div == 0)
            {
                n = n / div;
            }
            else
            {
                div += 2;
            }
        }

        finalAnswer = (n != 1) ? n : div;

        long toc = System.nanoTime();
        long timeElapsed = (toc - tic);
        
        System.out.println("Answer:\t" + finalAnswer);
        System.out.println("Took:\t" + timeElapsed + " ns");
    }
}
