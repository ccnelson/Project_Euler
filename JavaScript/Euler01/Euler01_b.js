/* If we list all the natural numbers below 10 that are multiples of 3 or 5, 
we get 3, 5, 6 and 9. The sum of these multiples is 23.
Find the sum of all the multiples of 3 or 5 below 1000. 
(Answer = 233168) */

// this version uses conditional logical OR operator with modulo operation
// ~ 9.9ms

function Euler01(n)
{
  let total = 0;

  for (let i = 1; i < n; i++)
  {
    if ((i % 3 == 0) || (i % 5 == 0))
    {
      total += i;
    }
  }
  
  console.log(total);
}

console.time('Euler01');
Euler01(1000);
console.timeEnd('Euler01');


