#lang racket

(require rackunit)

; Find the largest prime factor of 600851475143.
; Trial division is good enough.

(define (solve)
  (define (largest-prime-factor n)
    (define (helper i k)
      (cond [(>= i k) k]
            [(zero? (remainder k i)) (helper i (/ k i))]
            [else (helper (add1 i) k)]))
    (helper 2 n))
  (largest-prime-factor 600851475143))

(check-equal? (solve) 6857)

;; test cons
(define (jcon i)
  (cond [(> i 100) 100]
        [else i]))
(check-equal? (jcon 10) 10)
(check-equal? (jcon 101) 100)