" C NELSON 2020 "
" If we list all the natural numbers below 10 that are multiples of 3 or 5, 
we get 3, 5, 6 and 9. The sum of these multiples is 23.
Find the sum of all the multiples of 3 or 5 below 1000. 
(Answer = 233168) "

" solution uses inclusion-exclusion principle "

sumOfThrees := 0.
sumOfFives := 0.
sumOfFifteens := 0.
finalAnswer := 0.

tic := Time millisecondClockValue.

x := 3.
[x < 1000] whileTrue: [ sumOfThrees := sumOfThrees + x. x := x + 3 ].
x := 5.
[x < 1000] whileTrue: [ sumOfFives := sumOfFives + x. x := x + 5 ].
x := 15.
[x < 1000] whileTrue: [ sumOfFifteens := sumOfFifteens + x. x := x + 15 ].

finalAnswer := (sumOfThrees + sumOfFives) - sumOfFifteens.

toc := Time millisecondClockValue.
timeElapsed := toc - tic.

Transcript show: 'Answer:   '.
finalAnswer printNl.

Transcript show: 'Took:     '.
Transcript show: timeElapsed printString.
Transcript show: ' ms'.

