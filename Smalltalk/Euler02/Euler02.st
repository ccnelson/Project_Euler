" Placeholder "




finalanswer := 0.

tic := Time millisecondClockValue.




toc := Time millisecondClockValue.
duration := toc - tic.

Transcript show: 'Answer:   '.
finalanswer printNl.

Transcript show: 'Took:     '.
Transcript show: duration printString.
Transcript show: 'ms'.

