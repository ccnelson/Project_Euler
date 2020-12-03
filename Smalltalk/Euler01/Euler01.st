" If we list all the natural numbers below 10 that are multiples of 3 or 5, 
we get 3, 5, 6 and 9. The sum of these multiples is 23.
Find the sum of all the multiples of 3 or 5 below 1000. 
(Answer = 233168) "

" solution uses inclusion-exclusion principle "

sumofthrees := 0.
sumoffives := 0.
sumoffifteens := 0.
finalanswer := 0.

tic := Time millisecondClockValue.

x := 3.
[x < 1000] whileTrue: [ sumofthrees := sumofthrees + x. x := x + 3 ].
x := 5.
[x < 1000] whileTrue: [ sumoffives := sumoffives + x. x := x + 5 ].
x := 15.
[x < 1000] whileTrue: [ sumoffifteens := sumoffifteens + x. x := x + 15 ].

finalanswer := (sumofthrees + sumoffives) - sumoffifteens.

toc := Time millisecondClockValue.
duration := toc - tic.

Transcript show: 'Answer:   '.
finalanswer printNl.

Transcript show: 'Took:     '.
Transcript show: duration printString.
Transcript show: 'ms'.

