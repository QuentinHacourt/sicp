(define (rec-reverse l)
  (if (null? l)
      '()
      (append (rec-reverse (cdr l)) (list (car l)))))

(define (iter-reverse l)
  (define (iter l acc)
    (if (null? l)
        acc
        (iter (cdr l) (cons (car l) acc))))
  (iter l '()))
