// C NELSON 2021
/* The prime factors of 13195 are 5, 7, 13 and 29.
What is the largest prime factor of the number 600851475143
(Answer = 6857) */

// Solution divides out all factors until largest prime factor remains

use std::time::Instant;

fn main() 
{
    let mut n: i64 = 600851475143;
    let mut div: i64 = 3;
    
    let tic = Instant::now();

    let nsqrt = (n as f64).sqrt() as i64;

    if n & 1 != 1
    {
        while n & 1 != 1
        {
            n = n / 2;
        }
        if n == 1
        {
            div = 2
        }
    }

    while n > 1 && div < nsqrt
    {
        if n % div == 0
        {
            n = n / div;
        }
        else
        {
            div += 2
        }
    }

    let final_answer = if n != 1 { n } else { div };

    let time_elapsed = tic.elapsed();

    println!("Answer:\t{:?}", final_answer);
    println!("Took:\t{:?}", time_elapsed);
}
