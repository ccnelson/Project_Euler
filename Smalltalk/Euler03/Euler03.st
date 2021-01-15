" C NELSON 2021 "
" The prime factors of 13195 are 5, 7, 13 and 29.
What is the largest prime factor of the number 600851475143
(Answer = 6857) "

" solution divides out all factors until largest prime factor remains "

finalAnswer := 0.
n := 600851475143.
div := 3.

tic := Time millisecondClockValue.

nsqrt := n sqrt.

[n even] whileTrue:[
    n := (n / 2).
].

n = 1 ifTrue: [div := 2]. 

[(n > 1) & (div < nsqrt)] whileTrue: [
    n \\ div = 0 ifTrue: [n := (n / div)]
                ifFalse: [div := (div + 2)].

].

n ~= 1 ifTrue: [finalAnswer := n]
       ifFalse: [finalAnswer := div].

toc := Time millisecondClockValue.
timeElapsed := toc - tic.

Transcript show: 'Answer:   '.
finalAnswer printNl.
Transcript show: 'Took:     '.
Transcript show: timeElapsed printString.
Transcript show: ' ms'.
