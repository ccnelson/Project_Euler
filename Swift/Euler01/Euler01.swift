/* If we list all the natural numbers below 10 that are multiples of 3 or 5, 
we get 3, 5, 6 and 9. The sum of these multiples is 23.
Find the sum of all the multiples of 3 or 5 below 1000. 
(Answer = 233168) */

// solution uses inclusion-exclusion principle

import Foundation

var sumofthrees = 0
var sumoffives = 0
var sumoffifteens = 0
var finalanswer = 0

let info = ProcessInfo.processInfo
let tic = info.systemUptime

for i in stride(from: 3, to: 1000, by: 3)
{
    sumofthrees += i
}
for j in stride(from: 5, to: 1000, by: 5)
{
    sumoffives += j
}
for k in stride(from: 15, to: 1000, by: 15)
{
    sumoffifteens += k
}
finalanswer = (sumofthrees + sumoffives) - sumoffifteens;

let elapsed = (info.systemUptime - tic)

print("Answer:\t", finalanswer)
print("Took:\t", elapsed)