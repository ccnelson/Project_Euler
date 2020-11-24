# If we list all the natural numbers below 10 that are multiples of 3 or 5, 
# we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000. 
# (Answer = 233168)

# solution uses inclusion-exclusion principle

use strict;
use warnings;
use Time::HiRes qw( time );

my $sumofthrees = 0;
my $sumoffives = 0;
my $sumoffifteens = 0;
my $finalanswer = 0;

my $tic = time();

for (my $i = 3; $i < 1000; $i+=3) 
{
	$sumofthrees += $i;
}
for (my $j = 5; $j < 1000; $j+=5) 
{
	$sumoffives += $j;
}
for (my $k = 15; $k < 1000; $k+=15) 
{
	$sumoffifteens += $k;
}
$finalanswer = ($sumofthrees + $sumoffives) - $sumoffifteens;

my $toc = time();
my $elapsed = $toc - $tic;

print "Answer:\t", $finalanswer;
printf("\nTook:\t%0.06f", $elapsed);








