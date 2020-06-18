/* 2520 is the smallest number that can be divided by 
each of the numbers from 1 to 10 without any remainder.
what is the smallest positive number that is evenly 
divisible by all of the numbers from 1 to 20?
(Answer: 232792560) */

// uses multiplication of prime factors to find LCM
// ~ 33ms

function Euler05()
{

    let limit = 20;
    let primes = new Array();
    // build a list of prime
    for (let k = 0; k <= limit; k++)
    {
        if (IsPrime(k)) { primes.push(k); }
    }

    // array of arrays storing primes factors corresponding to index
    let primeFactorList = new Array();
    for (let m = 0; m <= limit; m++)
    {
        primeFactorList.push(PrimeFactors(m, primes)); // fill with factors
    }

    // store maximum appearances of a factor
    let primesForAdding = new Array();
    for (let n = 0; n <= limit; n++)
    {
        if (IsPrime(n))
        {
            let pcounter = 0; // overall counter
            for (let p = 0; p < primeFactorList.length; p++)
            {
                let lpcounter = 0; // local counter
                for (let q = 0; q < primeFactorList[p].length; q++)
                {
                    if (primeFactorList[p][q] == n) // look for number in question
                    {
                        lpcounter += 1;
                    }
                }
                // if local counter is greater update overall
                if (lpcounter > pcounter) { pcounter = lpcounter; }
            }
            primesForAdding.push(pcounter); // add to list corresponding to index
        }
        // signify numbers safe to ignore with zeros
        else { primesForAdding.push(0); }
    }

    let answer = 1; // answer is product so begin with 1
    // iterate through max appearances of primes
    for (let r = 0; r < primesForAdding.length; r++)
    {
        if (primesForAdding[r] > 0) // for numbers not being ignored
        {
            for (let s = 1; s <= primesForAdding[r]; s++)
            {
                answer *= r; // multiply answer corresponding no. of times
            }
        }
    }
    console.log("Answer: ", answer);
}

// test if a number is prime
function IsPrime(n)
{
    if (n <= 1) return false;
    if (n == 2) return true;
    if ((n & 1) != 1) return false; // bitwise even test
    let boundary = Math.floor(Math.sqrt(n));
    for (let i = 3; i <= boundary; i += 2)
    {
        if (n % i == 0) return false;
    }
    return true;
}

// function to return list of prime factors. 
// supply number, return list
function PrimeFactors(n, primeList)
{
    let primeIndex = 0;  // track prime
    let factorList = new Array(); // store factors
    while (n > 1)
    {
        if (n % primeList[primeIndex] == 0) // if number divides evenly into prime
        {
            factorList.push(primeList[primeIndex]); // add to list
            n = n / primeList[primeIndex]; // divide and continue
        }
        else
        {
            primeIndex += 1; // if doesnt divide evenly increment prime
        }
    }
    return factorList;
}

console.time('Euler05');
Euler05();
console.timeEnd('Euler05');

