# Chris Nelson 2022
# A palindromic number reads the same both ways. 
# The largest palindrome made from the product of 
# two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product 
# of two 3-digit numbers. 
# (Answer = 906609)

function isPalin{
    param([int]$n)
    $stringNum = [string]$n
    $revStringNum = $stringNum[-1..-$stringNum.Length] -join ''
    if ($stringNum -match $revStringNum)
    {
        return $true
    }
    else
    {
        return $false
    }
}

$answer = 0

for ($i = 999; $i -gt 900; $i--)
{
    for ($j = 999; $j -gt 900; $j--)
    {
        $product = $i * $j
        if (isPalin $product)
        {
            if ($product -gt $answer)
            {
                $answer = $product
                $val1 = $i
                $val2 = $j
            }
        }
    }
}

$answer = [string]$answer + " = " + [string]$val1 + " * " + [string]$val2 
Write-Output $answer

