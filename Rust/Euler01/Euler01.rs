/* If we list all the natural numbers below 10 that are multiples of 3 or 5, 
we get 3, 5, 6 and 9. The sum of these multiples is 23.
Find the sum of all the multiples of 3 or 5 below 1000. 
(Answer = 233168) */

// solution uses inclusion-exclusion principle

fn main() 
{
	let mut sumofthrees = 0;
	let mut sumoffives = 0;
	let mut sumoffifteens = 0;
	let finalanswer;

	use std::time::Instant;
	let tic = Instant::now();

	for x in (3..1000).step_by(3) 
	{
		sumofthrees += x;
	}
	for y in (5..1000).step_by(5) 
	{
		sumoffives += y;
	}
	for z in (15..1000).step_by(15) 
	{
		sumoffifteens += z;
	}
	finalanswer = (sumofthrees + sumoffives) - sumoffifteens;

	let duration = tic.elapsed();

	println!("Answer:\t{:?}", finalanswer);
	println!("Took:\t{:?}", duration);
}
