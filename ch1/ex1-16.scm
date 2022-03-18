#lang sicp

(define (iter-fast-expt b n)
  (define (iter B N A)
    (cond ((= N 0) A)
          ((even? N) (iter (square B) (/ N 2) A))
          (else (iter B (- N 1) (* A B)))))
  (iter b n 1))

(define (square x)
  (* x x))

(iter-fast-expt 2 16)
