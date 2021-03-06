// C NELSON 2021
/* If we list all the natural numbers below 10 that are multiples of 3 or 5, 
we get 3, 5, 6 and 9. The sum of these multiples is 23.
Find the sum of all the multiples of 3 or 5 below 1000. 
(finalAnswer = 233168) */

// solution uses arithmetic series formula with inclusion-exclusion principle

function Euler01()
{
    
    let sumOfThrees = 0;
    let sumOfFives = 0;
    let sumOfFifteens = 0;
    let finalAnswer = 0;

    sumOfThrees = SeqSum(3, 3, Math.floor(999/3));
    sumOfFives = SeqSum(5, 5, Math.floor(999/5));
    sumOfFifteens = SeqSum(15, 15, Math.floor(999/15));

    finalAnswer = (sumOfThrees + sumOfFives) - sumOfFifteens;
    console.log("Answer:", finalAnswer);
}

// arithmetic series formula : Sn = n/2(2a+(n-1)d)
// a = 1st term, d = common difference, n = no. of terms
function SeqSum(a, d, n)
{
    return (n / 2) * (2 * a + (n - 1) * d);
}

console.time('Took');
Euler01();
console.timeEnd('Took');
