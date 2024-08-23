(define (my-append l1 l2)
  (define (iter res l)
    (if (null? l)
        res
        (iter (cons (car l) res) (cdr l))))
  (iter l2 (reverse l1)))
