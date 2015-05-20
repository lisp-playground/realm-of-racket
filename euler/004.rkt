#lang racket

#|
A palindromic number reads the same both ways. 
The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
Find the largest palindrome made from the product of two 3-digit numbers.
|#

(require "common.rkt")

(define(is-palindrome? n)
  (define (helper n acc)
    (if (> n 0)
        (helper (quotient n 10) (+ (remainder n 10) (* 10 acc)))
        acc))
  (equal? n (helper n 0)))

(define (solve)
  (apply max
         (filter is-palindrome?
                 (map (lambda (x) (apply * x))
                      (cartesian-product (range 100 999) (range 100 999))))))


; test
(solve)