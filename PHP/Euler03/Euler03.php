
<?php

// C NELSON 2021
/* The prime factors of 13195 are 5, 7, 13 and 29.
What is the largest prime factor of the number 600851475143
(Answer = 6857) */

// solution divides out all factors until largest prime factor remains

$finalAnswer = 0;
$n = 600851475143;
$div = 3;

$tic = microtime(true);

$nsqrt = sqrt(floatval($n));

if (($n & 1) != 1)
{
    while (($n & 1) != 1)
    {
        $n = $n / 2;
    }
    if ($n == 1)
    {
        $div = 2;
    }
}

while ($n > 1 && $div < $nsqrt)
{
    if ($n % $div == 0)
    {
        $n = $n / $div;
    }
    else
    {
        $div += 2;
    }
}

$finalAnswer = ($n != 1) ? $n : $div;

$toc = microtime(true);
$rawDuration = ($toc - $tic) / 60;
$timeElapsed = number_format((float) $rawDuration, 10);

echo "Answer:\t".$finalAnswer."\nTook:\t".$timeElapsed;

?>