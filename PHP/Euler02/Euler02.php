
<?php

// placeholder


$finalanswer = 0;

$tic = microtime(true);


$toc = microtime(true);
$raw_duration = ($toc - $tic)/60;
$elapsed = number_format((float) $raw_duration, 10);

echo "Answer:\t".$finalanswer."\nTook:\t".$elapsed;

?>