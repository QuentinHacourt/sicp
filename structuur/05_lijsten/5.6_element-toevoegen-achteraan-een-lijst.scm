(define (add-to-end e l)
  (if (null? l)
    (cons e '())
    (cons (car l) (add-to-end e (cdr l)))))
