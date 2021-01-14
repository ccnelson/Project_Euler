# C NELSON 2021
# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143
# (Answer = 6857)

# Solution divides out all factors until largest prime factor remains

use strict;
use warnings;
use Time::HiRes qw( time );

my $finalAnswer = 0;
my $n = 600851475143;
my $div = 3;

my $tic = time();

my $nsqrt = sqrt($n);

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

my $toc = time();
my $timeElapsed = $toc - $tic;

print "Answer:\t", $finalAnswer;
printf("\nTook:\t%0.06f", $timeElapsed);
