#lang racket
 
(require rackunit)

(define (solve)
  (define (fib-sum upto filter)
    (define (h i j acc)
      (if (> i upto) acc
          (h j (+ i j) (if (filter i) (+ i acc) acc))))
    (h 1 2 0))
  (fib-sum 4000000 even?))

(check-equal? (solve) 4613732)

; test tail recursive
(define (jrect i j acc)
  (if (> i 10) acc
      (jrect j (+ i j) (if (even? i) (+ i acc) acc))))

(check-equal? (jrect 1 2 0) (+ 2 3 5))