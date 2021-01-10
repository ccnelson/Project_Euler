// C NELSON 2021
/* If we list all the natural numbers below 10 that are multiples of 3 or 5, 
we get 3, 5, 6 and 9. The sum of these multiples is 23.
Find the sum of all the multiples of 3 or 5 below 1000. 
(Answer = 233168) */

// solution uses arithmetic series formula with inclusion-exclusion principle

use std::time::Instant;

fn main() 
{
    let sum_of_threes; // compiler prefers snake_case variables
    let sum_of_fives;
    let sum_of_fifteens;
    let final_answer;
    
    let tic = Instant::now();

    // all integers cast to floats
    sum_of_threes = seqsum(3 as f32, 3 as f32, (999/3) as f32);
    sum_of_fives = seqsum(5 as f32, 5 as f32, (999/5) as f32);
    sum_of_fifteens = seqsum(15 as f32, 15 as f32, (999/15) as f32);

    final_answer = (sum_of_threes + sum_of_fives) - sum_of_fifteens;

    let time_elapsed = tic.elapsed();

    println!("Answer:\t{:?}", final_answer);
    println!("Took:\t{:?}", time_elapsed);
}

// arithmetic series formula : Sn = n/2(2a+(n-1)d)
// a = 1st term, d = common difference, n = no. of terms
fn seqsum(a : f32, d : f32, n : f32) -> f32
{
    return (n / 2.0) * (2.0 * a + (n - 1.0) * d);
}
