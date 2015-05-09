#lang racket

(* 1 1)
(- 8 (* 2 3))
(sqrt 9)
(list 1 2 3 4 5 6 7 8 9)
'(1 2 3)

'(sqrt (+ (sqr 3) (sqr 4)))

(list 'sqrt
      (list '+
            (list 'sqr 3)
            (list 'sqr 4)))