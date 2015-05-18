#lang racket

(define (cartesian-product a b)
  (reverse (foldl 
            append '() 
            (map (lambda (x) (reverse (map (lambda (y) (list x y)) b))) a))))

(provide cartesian-product)

(define a '(1 2 3))
(define b '(4 5))


; test
(list a b)
(cartesian-product a b)
(map (lambda (x) (reverse (map (lambda (y) (list x y)) b))) a)
(map (lambda (x) (map (lambda (y) (list x y)) b)) a)

(map (lambda (x) (map (lambda (y) (list x y)) b)) a)
