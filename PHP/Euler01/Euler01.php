
<?php

/* If we list all the natural numbers below 10 that are multiples of 3 or 5, 
we get 3, 5, 6 and 9. The sum of these multiples is 23.
Find the sum of all the multiples of 3 or 5 below 1000. 
(Answer = 233168) */

// solution uses inclusion-exclusion principle

$sumofthrees = 0;
$sumoffives = 0;
$sumoffifteens = 0;
$finalanswer = 0;

$tic = microtime(true);

for ($x = 3; $x < 1000; $x+=3) 
{
    $sumofthrees += $x;
}
for ($y = 5; $y < 1000; $y+=5) 
{
    $sumoffives += $y;
}
for ($z = 15; $z < 1000; $z+=15) 
{
    $sumoffifteens += $z;
}

$finalanswer = ($sumofthrees + $sumoffives) - $sumoffifteens;

$toc = microtime(true);
$raw_duration = ($toc - $tic)/60;
$elapsed = number_format((float) $raw_duration, 10);

echo "Answer:\t".$finalanswer."\nTook:\t".$elapsed;

?>