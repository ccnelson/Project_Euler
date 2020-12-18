// C NELSON 2020
/* Each new term in the Fibonacci sequence is generated by 
adding the previous two terms. 
By starting with 1 and 2, the first 10 terms will be:
1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
By considering the terms in the Fibonacci sequence whose 
values do not exceed four million,
 find the sum of the even-valued terms.
(finalAnswer = 4613732) */

// solution uses bitwise AND to test least significant bit

function Euler02()
{
    
    let n1 = 1;
    let n2 = 0;
    let n3 = 0;
    let finalAnswer = 0;

    while (n3 < 4000000)
    {
        n3 = n1 + n2;
        if ((n3 & 1) != 1)
        {
            finalAnswer += n3;
        }
        n1 = n2;
        n2 = n3;      
    }
    console.log("Answer:", finalAnswer);
}

console.time('Took');
Euler02();
console.timeEnd('Took');
