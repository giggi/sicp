(define (square x)
  (* x x))

(define (sum-of-square x y)
  (+ (square x) (square y)))

(define (sum-of-square-by-large2 x y z)
  (cond ((and (< x y) (< x z)) (sum-of-square y z))
        ((and (< y x) (< y z)) (sum-of-square x z))
        (else (sum-of-square x y))))

;gosh> (square 3)
;9
;gosh> sum-of-square
;gosh> (sum-of-square 3 4)
;25
;gosh> (sum-of-square-by-large2 2 3 4)
;25
;gosh> (sum-of-square-by-large2 10 3 4)
;116