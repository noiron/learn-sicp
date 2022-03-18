#lang sicp
(define (* a b)
  (define (iter accumulator a b)
    (cond ((= b 0) accumulator)
        ; Next line, use `iter` to replace `*` in ex1.17 
        ((even? b) (iter accumulator (double a) (halve b)))
        (else (iter (+ a accumulator) a (- b 1)))))

  (iter 0 a b))

(define (double x)
  (+ x x))

(define (halve x)
  (/ x 2))

(* 10 8)
(* 5 4)
(* 4 5)