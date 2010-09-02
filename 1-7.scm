(define (abs x)
  (if (< x 0) (- 0 x) x))
(define (square x)
  (* x x))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (test-good-enough? guess x)
  (if (good-enough? guess x)
      (print #t)
      (print (abs (- (square guess) x)))))


;gosh> (test-good-enough? 2.0 4) //これはOK
;#t
;gosh> (test-good-enough? 1.8 4)
;0.7599999999999998
;#<undef>
;gosh> (test-good-enough? 1.9 4)
;0.3900000000000001
;#<undef>
;gosh> (test-good-enough? 1.99 4)  //これはダメ
;0.039899999999999824
;#<undef>
;gosh> (test-good-enough? 1.99999 4) //これはOK
;#t
;#<undef>
;gosh> (test-good-enough? 2.1 4) //これもダメ
;0.41000000000000014
;#<undef>
