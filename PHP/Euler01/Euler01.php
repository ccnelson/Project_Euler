
<?php

// C NELSON 2021
/* If we list all the natural numbers below 10 that are multiples of 3 or 5, 
we get 3, 5, 6 and 9. The sum of these multiples is 23.
Find the sum of all the multiples of 3 or 5 below 1000. 
(Answer = 233168) */

// solution uses arithmetic series formula with inclusion-exclusion principle

$sumOfThrees = 0;
$sumfFives = 0;
$sumOfFifteens = 0;
$finalAnswer = 0;

// arithmetic series formula : Sn = n/2(2a+(n-1)d)
// a = 1st term, d = common difference, n = no. of terms
function seqSum($a, $d, $n)
{
    return ($n / 2) * (2 * $a + ($n - 1) * $d);
}

$tic = microtime(true);

$sumOfThrees = seqSum(3, 3, intdiv(999, 3));
$sumfFives = seqSum(5, 5, intdiv(999, 5));
$sumOfFifteens = seqSum(15, 15, intdiv(999, 15));

$finalAnswer = ($sumOfThrees + $sumfFives) - $sumOfFifteens;

$toc = microtime(true);
$rawDuration = ($toc - $tic) / 60;
$timeElapsed = number_format((float) $rawDuration, 10);

echo "Answer:\t".$finalAnswer."\nTook:\t".$timeElapsed;

?>