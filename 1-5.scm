(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

(test 0 (p))

;gosh> (test 0 p)
; 処理が返えらなくなる.
; 第2引数の評価で無限ループになっているものと思われる.
; これは、使用している処理系(gauche)が ...呼び名わすれた...を
; 採用しているためと思われる.
; そうじゃないパターンを試すには、別の処理系で試す必要あり.
