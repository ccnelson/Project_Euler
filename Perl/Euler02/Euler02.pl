# C NELSON 2020
# Each new term in the Fibonacci sequence is generated by 
# adding the previous two terms.
# By starting with 1 and 2, the first 10 terms will be:
# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
# By considering the terms in the Fibonacci sequence whose 
# values do not exceed four million,
# find the sum of the even-valued terms.
# (Answer = 4613732)

# Solution uses bitwise AND to test least significant bit

use strict;
use warnings;
use Time::HiRes qw( time );

my $n1 = 1;
my $n2 = 0;
my $n3 = 0;
my $finalAnswer = 0;

my $tic = time();

while ($n3 < 4000000)
{
    $n3 = $n1 + $n2;
    if (($n3 & 1) != 1)
    {
        $finalAnswer += $n3;
    }
    $n1 = $n2;
    $n2 = $n3;
}

my $toc = time();
my $timeElapsed = $toc - $tic;

print "Answer:\t", $finalAnswer;
printf("\nTook:\t%0.06f", $timeElapsed);
