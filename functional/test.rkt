#lang racket


(append '(1) '(2 3 (5 5)))

(foldr 
 (lambda (v l) (cons v l)) 
 '() 
 '(1 2 3 4))