# C NELSON 2022
# Each new term in the Fibonacci sequence is generated by 
# adding the previous two terms. 
# By starting with 1 and 2, the first 10 terms will be:
# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
# By considering the terms in the Fibonacci sequence whose 
# values do not exceed four million,
# find the sum of the even-valued terms.
# (Answer = 4613732)

# uses bitwise AND to test least significant bit

$n1 = 1
$n2 = 0
$n3 = 0
$answer = 0

while ($n3 -lt 4000000)
{
    $n3 = $n1 + $n2
    if (($n3 -band 1) -ne 1)
    {
        $answer += $n3
    }
    $n1 = $n2
    $n2 = $n3
}

Write-Output $answer

