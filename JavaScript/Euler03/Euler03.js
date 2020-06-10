/* The prime factors of 13195 are 5, 7, 13 and 29.
What is the largest prime factor of the number 600851475143
(Answer = 6857) */

// Divide out all factors until highest prime factor remains
// ~ 9.6ms

function Euler03()
{
  let n = 600851475143;
  let factor = 3;
  let maxfactor = Math.sqrt(n);
  let answer = 0;

  while (n > 1 && factor <= maxfactor)
  {
    if (n % factor == 0)
    {
      n = n / factor;
      while (n % factor == 0)
      {
        n = n / factor;
      }
      maxfactor = Math.sqrt(n);
    }
    factor += 2;
  }
  console.log(n);
}

console.time('Euler03');
Euler03();
console.timeEnd('Euler03');
