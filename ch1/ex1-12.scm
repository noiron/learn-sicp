#lang sicp

(define (pascal row col)
  ; the first col's and the last col's value are both 1
  (if (or (= col 1) (= col row))
      1
      (+ (pascal (- row 1) col) (pascal (- row 1) (- col 1)))))

(pascal 5 1)
(pascal 5 2)
(pascal 5 3)
(pascal 5 4)
(pascal 5 5)

  