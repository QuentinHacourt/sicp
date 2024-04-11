(define (my-equal? l1 l2)
  (cond
   ((and (null? l1) (null? l2)) #t)
   ((or (null? l1) (null? l2)) #f)
   ((= (car l1) (car l2)) (my-equal? (cdr l1) (cdr l2)))
   (else #f)))
