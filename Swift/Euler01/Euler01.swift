// C NELSON 2020
/* If we list all the natural numbers below 10 that are multiples of 3 or 5, 
we get 3, 5, 6 and 9. The sum of these multiples is 23.
Find the sum of all the multiples of 3 or 5 below 1000. 
(Answer = 233168) */

// solution uses inclusion-exclusion principle

import Foundation

var sumOfThrees = 0
var sumOfFives = 0
var sumOfFifteens = 0
var finalAnswer = 0

let info = ProcessInfo.processInfo
let tic = info.systemUptime

for i in stride(from: 3, to: 1000, by: 3)
{
    sumOfThrees += i
}
for j in stride(from: 5, to: 1000, by: 5)
{
    sumOfFives += j
}
for k in stride(from: 15, to: 1000, by: 15)
{
    sumOfFifteens += k
}
finalAnswer = (sumOfThrees + sumOfFives) - sumOfFifteens;

let timeElapsed = (info.systemUptime - tic)

print("Answer:\t", finalAnswer)
print("Took:\t", timeElapsed)
