#lang racket
(zero? 1)
(zero? (sub1 1))
(= 0 1)
(= 0 0)
;(= (zero? 1) 
;   (= 0 1))
(symbol=? 'foo 'FOO)
(expt 53 53)
(sqrt -1)
(* (sqrt -1) (sqrt -1))
(/ 4 6)
(/ 4.0 6)
(string-append "tutti" "frutti")
(string-append "tutti" " " "frutti")
(cons 1 2)
(define cell (cons 'a 'b))
(cons 'chicken empty)

(cons 'a '(10 20))

(car cell)
(cdr cell)

(cons 'chicken '())
(cons 'pork '(beef chicken))
(cons 'pork (cons 'beef (cons 'chicken '())))

(list 'pork 'beef 'chicken)

(first (cons 'pork (cons 'beef (cons 'chicken empty))))

(rest (list 'pork 'beef 'chicken))

(first (rest '(pork beef chicken)))

(list 'cat (list 'duck 'bat) 'ant)

(first '((peas carrots tomatoes) (pork beff chicken)))

(rest '(peas carrots tomatoes))

(rest (first '((peas carrots tomatoes) (pork beef chicken))))

(cons (cons 'peas (cons 'carrots (cons 'tomatoes '())))
      (cons (cons 'pork (cons 'beef (cons 'chicken '()))) '()))

(second '((peas carrots tomatoes) (pork beef chicken) duck))

(third '((peas carrots tomatoes) (pork beef chicken) duck))

(first (second '((peas carrots tomatoes)
                 (pork beef chicken)
                 duck)))

; struckter in racket

(struct student (name id# dorm))
(define freshman1 (student 'Joe 1234 'NewHall))

(student-name freshman1)
(student-id# freshman1)

(define mini (student 'Mini 1234 'NewHall))
(define nicole (student 'Nicole 5678 'NewHall))
(define rose (student 'Rose 8765 'NewHall))
(define eric (student 'Eric 4321 'NewHall))
(define in-class (list mini nicole rose eric))
(student-id# (third in-class))

; nested structure
(struct student-body (freshmen sophomores juniors seniros))
(define all-students
  (student-body (list freshman1 (student 'Mary 0101 'OldHall))
                (list (student 'Jeff 5678 'OldHall))
                (list (student 'Bob 4321 'Apartment))
                empty))
(student-name (first (student-body-freshmen all-students)))
(student-name (second (student-body-freshmen all-students)))
(student-name (first (student-body-juniors all-students)))

; stucture transparency
(struct example (x y z))
(define ex1 (example 1 2 3))

(struct example2 (p q r) #:transparent)
(define ex2 (example2 9 8 7))



