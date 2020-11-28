; If we list all the natural numbers below 10 that are multiples of 3 or 5, 
; we get 3, 5, 6 and 9. The sum of these multiples is 23.
; Find the sum of all the multiples of 3 or 5 below 1000. 
; (Answer = 233168)

; solution uses inclusion-exclusion principle

(defparameter *sumofthrees* 0)
(defparameter *sumoffives* 0)
(defparameter *sumoffifteens* 0)
(defparameter *finalanswer* 0)

(defun Euler01()
	(loop for i from 3 to 999 do (incf *sumofthrees* i)(incf i 2))
	(loop for j from 5 to 999 do (incf *sumoffives* j)(incf j 4))
	(loop for k from 15 to 999 do (incf *sumoffifteens* k)(incf k 14))

	;(setf temp(+ sumofthrees sumoffives))
	;(setf finalanswer(- temp sumoffifteens))

	(setf *finalanswer*(- (+ *sumofthrees* *sumoffives*) *sumoffifteens*))
)

(time(Euler01))

(format t "Answer:	~A" *finalanswer*)