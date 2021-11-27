#lang racket

; Alyssa doesn’t see why if needs to be provided as
; a special form. “Why can’t I just define it as
; an ordinary procedure in terms of cond?”.
; Eva claims this can indeed be done,
; and she defines a new version of if:

 (define (new-if predicate
                then-clause
                else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

; Eva demonstrates the program for Alyssa:
 (new-if (= 2 3) 0 5)
 ;5

 (new-if (= 1 1) 0 5)
 ;0

; Delighted, Alyssa uses new-if to rewrite the
; square-root program:

 (define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x) x)))

; What happens when Alyssa attempts to use this
; to compute square roots? Explain.

; Because the interpreter is using applicative
; order evaluation it will end up getting caught
; in an infinite recursive loop once it
; reaches the else clause.