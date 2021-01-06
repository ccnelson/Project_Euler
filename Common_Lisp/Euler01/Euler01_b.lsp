; C NELSON 2020
; If we list all the natural numbers below 10 that are multiples of 3 or 5, 
; we get 3, 5, 6 and 9. The sum of these multiples is 23.
; Find the sum of all the multiples of 3 or 5 below 1000. 
; (Answer = 233168)

; solution uses inclusion-exclusion principle

(defvar sumOfThrees 0)
(defvar sumOfFives 0)
(defvar sumOfFifteens 0)
(defvar finalAnswer 0)

(defun Euler01b()
    (loop for i from 1 to (/ 999 3) do (incf sumOfThrees (* i 3)))
    (loop for j from 1 to (/ 999 5) do (incf sumOfFives (* j 5)))
    (loop for k from 1 to (/ 999 15) do (incf sumOfFifteens (* k 15)))
    (setf finalAnswer(- (+ sumOfThrees sumOfFives) sumOfFifteens))
)

(time(Euler01b))

(format t "Answer:  ~A" finalAnswer)
