// C NELSON 2020
/* If we list all the natural numbers below 10 that are multiples of 3 or 5, 
we get 3, 5, 6 and 9. The sum of these multiples is 23.
Find the sum of all the multiples of 3 or 5 below 1000. 
(finalAnswer = 233168) */

// solution uses inclusion-exclusion principle

function Euler01_c()
{
    
    let sumOfThrees = 0;
    let sumOfFives = 0;
    let sumOfFifteens = 0;
    let finalAnswer = 0;

    for (i = 3; i < 1000; i+=3)
    {
        sumOfThrees += i;
    }
    for (j = 5; j < 1000; j+=5)
    {
        sumOfFives += j;
    }
    for (k =15; k < 1000; k+=15)
    {
        sumOfFifteens += k;
    }

    finalAnswer = (sumOfThrees + sumOfFives) - sumOfFifteens;
    console.log("Answer:", finalAnswer);
}

console.time('Took');
Euler01_c();
console.timeEnd('Took');
