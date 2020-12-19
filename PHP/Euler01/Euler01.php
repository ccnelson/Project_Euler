
<?php

// C NELSON 2020
/* If we list all the natural numbers below 10 that are multiples of 3 or 5, 
we get 3, 5, 6 and 9. The sum of these multiples is 23.
Find the sum of all the multiples of 3 or 5 below 1000. 
(Answer = 233168) */

// solution uses inclusion-exclusion principle

$sumOfThrees = 0;
$sumfFives = 0;
$sumOfFifteens = 0;
$finalAnswer = 0;

$tic = microtime(true);

for ($x = 3; $x < 1000; $x += 3) 
{
    $sumOfThrees += $x;
}
for ($y = 5; $y < 1000; $y += 5) 
{
    $sumfFives += $y;
}
for ($z = 15; $z < 1000; $z += 15) 
{
    $sumOfFifteens += $z;
}

$finalAnswer = ($sumOfThrees + $sumfFives) - $sumOfFifteens;

$toc = microtime(true);
$rawDuration = ($toc - $tic) / 60;
$timeElapsed = number_format((float) $rawDuration, 10);

echo "Answer:\t".$finalAnswer."\nTook:\t".$timeElapsed;

?>