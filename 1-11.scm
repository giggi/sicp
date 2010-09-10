; 再起
(define (f0 n)
  (if (< n 3)
      n
      (+ (f0 (- n 1)) (* 2 (f0 (- n 2))) (* 3 (f0 (- n 3))))))

;gosh> (f0 2)
;2
;gosh> (f0 1)
;1
;gosh> (f0 3)
;4
;gosh> (f0 5)
;25
;gosh> (f0 10)
;1892


; 反復
(define (f1 n)
  (define (f1-iter a b c count)
    (if (= count 0)
        c
        (f1-iter
         (+ a (* 2 b) (* 3 c))
         a
         b
         (- count 1))))
  (f1-iter 2 1 0 n))

;gosh> (f1 2)
;2
;gosh> (f1 1)
;1
;gosh> (f1 3)
;4
;gosh> (f1 5)
;25
;gosh> (f1 10)
;1892

         


; 復習でfib
(define (fib0 n)
  (if (< n 2)
      n
      (+ (fib0 (- n 1)) (fib0 (- n 2)))))
;gosh> (fib0 1)
;1
;gosh> (fib0 5)
;5
;gosh> (fib0 10)
;55
;gosh> (fib0 15)
;610


(define (fib1 n)
  (define (fib-iter a b count)
    (if (= count 0)
        b
        (fib-iter (+ a b) a (- count 1))))
  (fib-iter 1 0 n))

;gosh> (fib1 1)
;1
;gosh> (fib1 5)
;5
;gosh> (fib1 10)
;55
;gosh> (fib1 15)
;610


