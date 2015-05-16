#lang racket

(require rackunit)

(define (solve)
  (foldl + 0
         (filter (lambda (x) (or (zero? (modulo x 3)) (zero? (modulo x 5))))
         (build-list 1000 values))))
                  
(check-equal? (solve) 233168)

; test ...
(define (test)
  (foldl + 0 (build-list 10 values)))

(check-equal? (test) (+ 1 2 3 4 5 6 7 8 9))
(check-equal? (build-list 10 values) (list 0 1 2 3 4 5 6 7 8 9))

(define (jfilter ls)
  (filter (lambda (x) (zero? (modulo x 2))) ls))
(check-equal? (jfilter (list 1 2 3 4)) (list 2 4))
