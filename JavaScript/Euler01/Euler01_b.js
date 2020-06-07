/* If we list all the natural numbers below 10 that are multiples of 3 or 5, 
we get 3, 5, 6 and 9. The sum of these multiples is 23.
Find the sum of all the multiples of 3 or 5 below 1000. 
(Answer = 233168) */

// this solution is consistently fractionally faster
// due to lack of expensive modulo operations

function Euler01_b(n)
{
  let total3s = 0;
  let total5s = 0;
  let total15s = 0;
  let answer = 0;

  for (let i = 3; i < n; i+=3)
  {
    total3s += i;
  }
  for (let j = 5; j < n; j+=5)
  {
    total5s += j;
  }
  for (let k =15; k < n; k+=15)
  {
    total15s += k;
  }

  answer = (total3s + total5s) - total15s;
  console.log(answer);
}

console.time('Euler01_b');
Euler01_b(1000);
console.timeEnd('Euler01_b');

