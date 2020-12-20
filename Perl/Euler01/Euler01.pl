# C NELSON 2020
# If we list all the natural numbers below 10 that are multiples of 3 or 5, 
# we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000. 
# (Answer = 233168)

# solution uses inclusion-exclusion principle

use strict;
use warnings;
use Time::HiRes qw( time );

my $sumOfThrees = 0;
my $sumOfFives = 0;
my $sumOfFifteens = 0;
my $finalAnswer = 0;

my $tic = time();

for (my $i = 3; $i < 1000; $i += 3) 
{
    $sumOfThrees += $i;
}
for (my $j = 5; $j < 1000; $j += 5) 
{
    $sumOfFives += $j;
}
for (my $k = 15; $k < 1000; $k += 15) 
{
    $sumOfFifteens += $k;
}
$finalAnswer = ($sumOfThrees + $sumOfFives) - $sumOfFifteens;

my $toc = time();
my $timeElapsed = $toc - $tic;

print "Answer:\t", $finalAnswer;
printf("\nTook:\t%0.06f", $timeElapsed);
