/*A palindromic number reads the same both ways. 
The largest palindrome made from the product of 
two 2-digit numbers is 9009 = 91 × 99.
Find the largest palindrome made from the product 
of two 3-digit numbers. 
(Answer = 906609) */

// uses math to reverse positive integers
// ~ 19ms

function Euler04()
{
    let temp = 0;
    let answer = 0;
    let val1 = 0;
    let val2 = 0;

    for (let i = 1000; i > 900; i--)
    {
        for (let j = 1000; j > 900; j--)
        {
            temp = i * j;

            if (temp == Revnum(temp) && temp > answer)
            {
                answer = temp;
                val1 = i;
                val2 = j;
            }
        }
    }
    console.log(answer);
    console.log("Product of " + val1 + " and " + val2);
}

function Revnum(n)
{
    let reverse = 0;
    let endDigit = 0;
    while (n > 0)
    {
        endDigit = n % 10;
        reverse = (reverse * 10) + endDigit;
        n = Math.floor(n / 10);
    }
    return reverse;
}

console.time('Euler04');
Euler04();
console.timeEnd('Euler04');