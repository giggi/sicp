(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))

;gosh> (A 1 10)
;1024
;gosh> (A 2 4)
;65536
;gosh> (A 3 3)
;65536

; f(n) = 2y
(define (f n) (A 0 n))

; (A 1 n)
; n = 3 で検証
;
;   (A 0 (A 1 (- 3 1)))
;          (A 0 (A 1 1))
;          (A 0 2)
;          4 ;(* 2 2) 
;   (A 0 4)
;   8
;
; g(n) = 2^n
(define (g n) (A 1 n))

; (A 2 n)
; guess: 2^(2n-1)
; n = 3 で検証
;
;   (A 1 (A 2 (- 3 1)))
;           (A 1 (A 2 1))
;           (A 1 2)
;             (A 0 (A 1 1))
;             (A 0 2)
;             4 ;(* 2 2)
;   (A 1 4)
;     (A 0 (A 1 3))
;            (A 0 (A 1 2))
;                   (A 0 (A 1 1))
;                   (A 0 2)
;                     4 ;(* 2 2)
;            (A 0 4)
;            8 ;(* 2 4)
;     (A 0 8)
;     16 ;(* 2 8) = (* 2 2^3)
;
; n = 2 で検証
;   (A 2 2)
;     (A 1 (A 2 1)
;     (A 1 2)
;       (A 0 (A 1 1))
;       (A 0 2)
;         4 ;(* 2 2)
;
; h(n) = (n < 3) ? 2^n : 2^(2^n)
(define (h n) (A 2 n))


; tools
(define (power x n)
  (define (power-iter x n p)
    (if (= n 0)
        p
        (power-iter x (- n 1) (* p x))))
  (power-iter x n 1))
