#lang racket

; Define a procedure that takes three numbers as
; arguments and returns the sum of the squares of
; the two larger numbers

(define (sum_two_larger x y z)
  (cond ((> x y)
      (cond ((> y z)
          (+ (* x x)(* y y)))
            (else (+ (* x x)(* z z)))))
        ((< x y)
         (cond ((> x z)
                (+ (* x x)(* y y)))
               (else (+ (* y y)(* z z)))))))
