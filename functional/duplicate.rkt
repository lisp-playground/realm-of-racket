#lang racket
(require rackunit)

; dup [1,2,3] => [1,1,2,2,3,3]
; dup ["a","b","a"] => ["a","a","b","b","a","a"]
; dup ["a", "a", "b"] => ["a", "a", "a", "a", "b", "b"]
; dup [[1,2], [3,4]] => [[1,2], [1,2], [3,4], [3,4]]

(define (dup2 ls)
  (foldr (lambda (v l) (append (list v v) l)) '() ls))

(check-equal? (dup2 '(1 2 3)) '(1 1 2 2 3 3))
(check-equal? (dup2 '('a 'b 'c 'd)) '('a 'a 'b 'b 'c 'c 'd 'd))
(check-equal? (dup2 '('(1 2) '(3 4))) '('(1 2) '(1 2) '(3 4) '(3 4)))

  
