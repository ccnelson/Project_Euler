; C NELSON 2021
; If we list all the natural numbers below 10 that are multiples of 3 or 5, 
; we get 3, 5, 6 and 9. The sum of these multiples is 23.
; Find the sum of all the multiples of 3 or 5 below 1000. 
; (Answer = 233168)

; solution uses arithmetic series formula with inclusion-exclusion principle

(defvar sumOfThrees 0)
(defvar sumOfFives 0)
(defvar sumOfFifteens 0)
(defvar finalAnswer 0)

; arithmetic series formula : Sn = n/2(2a+(n-1)d)
; a = 1st term, d = common difference, n = no. of terms
(defun Seqsum(a d n)
    (* (/ n 2) (+ (* a 2) (* (- n 1) d)))
)   

(defun Euler01()
    (setf sumOfThrees(Seqsum 3 3 (floor 999 3)))
    (setf sumOfFives(Seqsum 5 5 (floor 999 5)))
    (setf sumOfFifteens(Seqsum 15 15 (floor 999 15)))
    (setf finalAnswer(- (+ sumOfThrees sumOfFives) sumOfFifteens))
)

(time(Euler01))

(format t "Answer:  ~A" finalAnswer)
