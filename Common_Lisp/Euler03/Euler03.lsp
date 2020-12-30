; C NELSON 2020
; The prime factors of 13195 are 5, 7, 13 and 29.
; What is the largest prime factor of the number 600851475143
; (Answer = 6857)

; solution divides out all factors until largest prime factor remains

(defvar n 600851475143)
(defvar finalAnswer 0)
(defvar div 3)
(defvar nsqrt (sqrt n))

(defun Euler03()
    (loop while (evenp n)
        do
        (setf n (/ n 2))
        (if (= n 1)
            (setf div 2)
        )
    )

    (loop while (and (> n 1) (< div nsqrt))
        do
        (if (zerop (mod n div))
            (setf n (/ n div))
            (setf div (+ div 2))
        )
    )

    (if (= n 1)
        (setf finalAnswer div)
        (setf finalAnswer n)
    )
)

(time(Euler03))

(format t "Answer:  ~A" finalAnswer)
