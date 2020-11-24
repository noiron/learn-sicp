#lang sicp

; f recursive version
(define (f-recursive n)
  (if (< n 3)
         n
         (+ (f-recursive (- n 1))
            (* 2 (f-recursive (- n 2)))
            (* 3 (f-recursive (- n 3))))))

(f-recursive 35)

; f iterative version
(define (f-i n)
  (define (f-iter a b c count)
    (cond ((> count n) a)
      (else (f-iter
             (+ a (* 2 b) (* 3 c))
             a
             b
             (+ count 1)))))
  (f-iter 2 1 0 3))

(f-i 35)