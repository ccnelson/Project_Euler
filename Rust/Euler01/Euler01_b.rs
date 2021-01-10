// C NELSON 2020
/* If we list all the natural numbers below 10 that are multiples of 3 or 5, 
we get 3, 5, 6 and 9. The sum of these multiples is 23.
Find the sum of all the multiples of 3 or 5 below 1000. 
(Answer = 233168) */

// solution uses inclusion-exclusion principle

use std::time::Instant;

fn main() 
{
    let mut sum_of_threes = 0; // compiler prefers snake_case variables
    let mut sum_of_fives = 0;
    let mut sum_of_fifteens = 0;
    let final_answer;
    
    let tic = Instant::now();

    for x in (3..1000).step_by(3) 
    {
        sum_of_threes += x;
    }
    for y in (5..1000).step_by(5) 
    {
        sum_of_fives += y;
    }
    for z in (15..1000).step_by(15) 
    {
        sum_of_fifteens += z;
    }
    final_answer = (sum_of_threes + sum_of_fives) - sum_of_fifteens;

    let time_elapsed = tic.elapsed();

    println!("Answer:\t{:?}", final_answer);
    println!("Took:\t{:?}", time_elapsed);
}
