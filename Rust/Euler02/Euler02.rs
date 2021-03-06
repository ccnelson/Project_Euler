// C NELSON 2020
/* Each new term in the Fibonacci sequence is generated by 
adding the previous two terms. 
By starting with 1 and 2, the first 10 terms will be:
1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
By considering the terms in the Fibonacci sequence whose 
values do not exceed four million,
find the sum of the even-valued terms.
(Answer = 4613732) */

// Solution uses bitwise AND to test least significant bit

use std::time::Instant;

fn main() 
{
    let mut n1 = 1;
    let mut n2 = 0;
    let mut n3 = 0;
    let mut final_answer = 0;

    let tic = Instant::now();

    while n3 < 4000000
    {
        n3 = n1 + n2;
        if n3 & 1 != 1
        {
            final_answer += n3;
        }
        n1 = n2;
        n2 = n3;
    }

    let time_elapsed = tic.elapsed();

    println!("Answer:\t{:?}", final_answer);
    println!("Took:\t{:?}", time_elapsed);
}
