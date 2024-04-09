(define (my-append lst1 lst2)
  (define (iter lst res)
    (if (null? lst)
        res
        (iter (cdr lst) (cons (car lst) res))))
  (iter (reverse lst1) lst2))
