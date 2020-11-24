# Placeholder

use strict;
use warnings;
use Time::HiRes qw( time );


my $finalanswer = 0;

my $tic = time();



my $toc = time();
my $elapsed = $toc - $tic;

print "Answer:\t", $finalanswer;
printf("\nTook:\t%0.06f", $elapsed);








