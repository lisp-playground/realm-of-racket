#lang racket/base

(require rackunit "racketeer.rkt")

(check-equal? (my-+ 1 1) 2 "Simple addition")
(check-equal? (my-* 1 1) 2 "Simple multiplication")
(check-equal? (+ 1 2) 3 "1 + 1 should equal 2")
(check-equal? (+ 2 2) 4 "2 + 2 should equal 4")

(check-equal? (+ 0 0) 1 "0 + 0 should equal 0")