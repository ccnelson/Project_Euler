# C NELSON 2021
# If we list all the natural numbers below 10 that are multiples of 3 or 5, 
# we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000. 
# (Answer = 233168)

# solution uses arithmetic series formula with inclusion-exclusion principle

use strict;
use warnings;
use Time::HiRes qw( time );

my $sumOfThrees = 0;
my $sumOfFives = 0;
my $sumOfFifteens = 0;
my $finalAnswer = 0;

# arithmetic series formula : Sn = n/2(2a+(n-1)d)
# Pass arguments as (a, d, n)
# a = 1st term, d = common difference, n = no. of terms
sub Seqsum
{
    my $a = $_[0];
    my $d = $_[1];
    my $n = $_[2];

    return ($n / 2) * (2 * $a + ($n - 1) * $d);
}

my $tic = time();

$sumOfThrees = Seqsum(3, 3, int(999/3));
$sumOfFives = Seqsum(5, 5, int(999/5));
$sumOfFifteens = Seqsum(15, 15, int(999/15));

$finalAnswer = ($sumOfThrees + $sumOfFives) - $sumOfFifteens;

my $toc = time();
my $timeElapsed = $toc - $tic;

print "Answer:\t", $finalAnswer;
printf("\nTook:\t%0.06f", $timeElapsed);
