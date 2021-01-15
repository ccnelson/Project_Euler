// C NELSON 2021
/* The prime factors of 13195 are 5, 7, 13 and 29.
What is the largest prime factor of the number 600851475143
(Answer = 6857) */

// solution divides out all factors until largest prime factor remains

import Foundation

var finalAnswer = 0
var n = 600851475143
var div = 3

let info = ProcessInfo.processInfo
let tic = info.systemUptime

var nsqrt = Int(Float(n).squareRoot())

if n & 1 != 1
{
    while n & 1 != 1
    {
        n = n / 2
    }
    if n == 1
    {
        div = 2
    }
}

while n > 1 && div < nsqrt
{
    if n % div == 0
    {
        n = n / div
    }
    else
    {
        div += 2
    }
}

finalAnswer = n != 1 ? n : div

let timeElapsed = (info.systemUptime - tic)

print("Answer:\t", finalAnswer)
print("Took:\t", timeElapsed)
