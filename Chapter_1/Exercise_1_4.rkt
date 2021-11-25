#lang racket

; Observe the following procedure and describe
; its behavior

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

; The previous procedure
; binds the resulting expression of a and
; b to the identity "a-plus-abs-b".
; Within the procedure is a conditional with,
; Two possible outcomes.
; If the boolean expression "b > 0",
; equates to true then the the procedure 
; returns a + b
; If the expression equates to false,
; The procedure returns a + |-b|