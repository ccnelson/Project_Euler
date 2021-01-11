// C NELSON 2021
/* The prime factors of 13195 are 5, 7, 13 and 29.
What is the largest prime factor of the number 600851475143
(Answer = 6857) */

// solution divides out all factors until largest prime factor remains

function Euler03()
{
    
    let finalAnswer = 0;
    let n = 600851475143;
    let div = 3;
    let nsqrt = Math.sqrt(n);

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

    while (n > 1 && div < nsqrt)
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
    console.log("Answer: ", finalAnswer);

}

console.time('Euler03');
Euler03();
console.timeEnd('Euler03');
