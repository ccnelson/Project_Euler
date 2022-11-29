# C NELSON 2022
# If we list all the natural numbers below 10 that are multiples of 3 or 5, 
# we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000. 
# (Answer = 233168) 

# solution uses arithmetic series formula with inclusion-exclusion principle

function ArithSeries {
    param ([int]$a, [int]$d, [int]$n)
    return ($n / 2 ) * (2 * $a + ($n - 1) * $d)
}

$sumOfThrees = ArithSeries 3 3 ([Math]::floor(999/3))
$sumOfFives = ArithSeries 5 5 ([Math]::floor(999/5))
$sumOfFifteens = ArithSeries 15 15 ([Math]::floor(999/15))

$answer = ($sumOfThrees + $sumOfFives) - $sumOfFifteens

Write-Output $answer
