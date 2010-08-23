10
(+ 5 3 4)
(- 9 1)
(/ 6 2)
(+ (* 2 4) (- 4 6))
(define a 3)
(define b (+ a 1))
(+ a b (* a b))
(= a b)
(if (and (> b a) (< b (* a b)))
    b
    a)
(cond ((= a 4) 6)
      ((= b 4) (+ 6 7 a))
      (else 25))
(+ 2 (if (> b a) b a))
(* (cond ((> a b) a)
         ((< a b) b)
         (else -1))
   (+ a 1))

; the answers
;gosh> 10
;gosh> 12
;gosh> 8
;gosh> 3
;gosh> 6
;gosh> a
;gosh> b
;gosh> 19
;gosh> #f
;gosh> 4
;gosh> 16
;gosh> 6
;gosh> 16