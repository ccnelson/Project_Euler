# C NELSON 2022
# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143
# (Answer = 6857)

$n = 600851475143
$answer = 0
$div = 3
$sqroot = [math]::Sqrt($n)

if (($n -band 1) -ne 1)
{
    while (($n -band 1) -ne 1)
    {
        $n = $n / 2
    }
    if ($n -eq 1)
    {
        $div = 2
    }
}

while (($n -gt 1) -and ($div -lt $sqroot))
{
    if ($n % $div -eq 0 )
    {
        $n = $n / $div
    }
    else
    {
        $div += 2
    }
}

if ($n -ne 1) {$answer = $n}
else {$answer = $div}

Write-Output $answer

