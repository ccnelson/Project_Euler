# C NELSON 2022
# 2520 is the smallest number that can be divided by 
# each of the numbers from 1 to 10 without any remainder.
# what is the smallest positive number that is evenly 
# divisible by all of the numbers from 1 to 20?
# (Answer: 232792560)

function isPrime {
    param([int]$n)

    if ($n -le 1) { return $false}
    if ($n -eq 2) { return $true}
    if (($n -band 1) -ne 1 ) { return $false}
    $boundary = [Math]::floor([math]::Sqrt($n))  
    for ($i = 3; $i -le $boundary; $i += 2)
    {
        if (($n % $i) -eq 0) { return $false }
    }
    return $true
}

function primeFactorization {
    param([int]$n, [Collections.Generic.List[Int]]$primelist)

    $primeIndex = 0
    $factorList = New-Object Collections.Generic.List[Int]

    while ($n -gt 1)
    {
        if ($n % $primelist[$primeIndex] -eq 0)
        {
            $factorList.Add($primelist[$primeIndex])
            $n = $n / $primelist[$primeIndex]
        }
        else
        {
            $primeIndex += 1
        }
    }
    return $factorList
}


$limit = 20
$listOfPrimes = New-Object Collections.Generic.List[Int]

for ($i = 0; $i -le $limit; $i++)
{
    if (isPrime $i)
    {
        $listOfPrimes.Add($i)
    }
}

$primeFactorList = New-Object Collections.Generic.List[Collections.Generic.List[Int]]
for ($i = 0; $i -le $limit; $i++ )
{
    $x = primeFactorization $i $listOfPrimes
    $primeFactorList.Add($x)
}

$primesForAdding = New-Object Collections.Generic.List[Int]
for ($i = 0; $i -le $limit; $i++)
{
    if (isPrime $i)
    {
        $pcounter = 0
        foreach($sublist in $primeFactorList)
        {
            $lpcounter = 0
            foreach($item in $sublist)
            {
                if ($item -eq $i)
                {
                    $lpcounter += 1
                }
            }
            if ($lpcounter -gt $pcounter)
            {
                $pcounter = $lpcounter
            }
        }
        $primesForAdding.Add($pcounter)
    }
    else
    {
        $primesForAdding.Add(0)
    }
}

$answer = 1

for ($i = 0; $i -lt $primesForAdding.Count; $i++)
{
    if ($primesForAdding[$i] -gt 0)
    {
        for ($j = 1; $j -le $primesForAdding[$i]; $j++)
        {
            $answer *= $i
        }
    }
}

Write-Output "Answer: $answer"

