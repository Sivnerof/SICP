#lang simply-scheme

; Example of applicative order vs. normal order

; Code taken from the following article:
; https://web.archive.org/web/20220418035326/https://medium.com/@rshkntshrm/applicative-vs-normal-order-evaluation-2f4433bf5701


; Compound procedures defined for use in examples
(define (square x)
  (* x x))

(define (sum-of-squares x y)
  (+ (square x) (square y)))

(define (f a)
  (sum-of-squares (+ a 1) (* a 2)))

; ===================================
; Applicative Example:

;(f 5)
;(sum-of-squares (+ 5 1) (* 5 2))
;(sum-of-squares 6 10)
;(+ (square 6) (square 10))
;(+ (* 6 6) (* 10 10))
;(+ 36 100)
;136
; ===================================

; ===================================
; Normal Order Example:
;(f 5)
;(sum-of-squares (+ 5 1) (* 5 2))
;(+ (square (+ 5 1)) (square (* 5 2)))
;(+ (* (+ 5 1) (+ 5 1)) (* (* 5 2) (* 5 2)))    ;; only primitives
;(+ (* 6 6) (* 10 10))
;(+ 36 100)
;136
; ===================================