#lang racket

; A test to determine whether the interpreter
; is using applicative order
; or normal order evaluation

(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

(test 0 (p))

; In applicative order the scheme interpreter
; will evalute the expressions and subexpressions
; getting stuck in an infinite loop.

; In normal order the interpreter will
; apply the procedure then evaluate the arguments.
; On the first conditional the boolean value,
; equates to true, returning "0"