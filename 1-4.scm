(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

;gosh> (a-plus-abs-b 10 1)
;11
;gosh> (a-plus-abs-b 10 -1)
;11
;gosh> (a-plus-abs-b 10 -100)
;110
