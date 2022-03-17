#lang scheme

; (define (sqrt x)
;   (sqrt_inner 1.0 x))

; (define (sqrt_inner guess x)
;   (if (good_enough guess x) guess (sqrt_inner (next_guess guess x) x)))

; (define (sqrt_inner2 guess x)
;   (if (good_enough2 guess (next_guess guess x)) guess (sqrt_inner (next_guess guess x) x)))

; (define (next_guess guess x)
;   (average guess (/ x guess)))

; (define (average a b)
;   (/ (+ a b) 2))

; (define (good_enough guess x)
;   (< (abs (- (square guess) x)) 0.00001))

; (define (good_enough2 pre current)
;   (< (abs (- pre current)) 0.0001))

; (define (square x)
;   (* x x))

; ; (display (sqrt 10))

; (define (sqrt2 x)
;   (sqrt_inner2 1.0 x)
;   )

; (sqrt2 2.0)

(define (cubert x)
  (define (inner guess x)
    (if (good_enough guess x) guess (inner (next_guess guess x) x)))

  (define (good_enough guess x)
    (< (abs (- guess (next_guess guess x))) 0.00000001))

  (define (next_guess pre x)
    (/ (+ (/ x (* pre pre)) (* 2 pre)) 3))
  (inner 1.0 x))

(cubert 8.0)
