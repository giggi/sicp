; o n-1行目のリストを入力として,n行目のリストを出力
; o 入力リストの隣合う要素の和を出力リストの要素とする
; o 初期リストは '(0 1 0)
; o リストの先頭、末尾には 0 (ゼロ) を付ける
; 
;        0 1 0
;       0 1 1 0
;      0 1 2 1 0
;     0 1 3 3 1 0
;         ...
;

(define (pascal-triangle n)
  (define (remove-head-and-tail ls)
    (set! ls (cdr ls))
    (set! ls (reverse (cdr (reverse ls)))))
  (define (add-head-and-tail ls x)
    (reverse (cons x (reverse (cons x ls)))))
  (define (gen-next-list ls)
    (cond ((eq? ls '()) '())
          ((eq? (cdr ls) '()) (car ls))
          (else (cons (+ (car ls) (cadr ls)) (gen-next-list (cdr ls))))))
  (define (loop ls i n)
    (if (>= i n)
        #t
        (let ((next-list '()))
          (print (remove-head-and-tail ls))
          (set! next-list (add-head-and-tail (gen-next-list ls) 0))
          ;(print next-list)
          (loop next-list (+ i 1) n))))
  (loop '(0 1 0) 0 n))
