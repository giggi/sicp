;
; sqrt
;

(define (abs x)
  (if (< x 0) (- 0 x) x))
(define (square x)
  (* x x))
(define (cube x)
  (* x x x))

(define (sqrt x)
  (define (average x y)
    (/ (+ x y) 2))
  (define (good-enough? guess x)
    (< (abs (- (square guess) x)) 0.001))
  (define (improve guess x)
    (average guess (/ x guess)))
  (define (square-iter guess x)
    (if (good-enough? guess x)
        guess
        (square-iter (improve guess x) x)))
  (square-iter 1.0 x))

;
; cubic root
;

(define (cubic-root x)
  (define (improve guess x)
    (/ (+ (/ x (square guess)) (* 2 guess)) 3))
  (define (good-enough? guess x)
    (< (abs (- (cube guess) x)) 0.001))
  (define (cubic-root-iter guess x)
    (if (good-enough? guess x)
        guess
        (cubic-root-iter (improve guess x) x)))
  (cubic-root-iter 1.0 x))
