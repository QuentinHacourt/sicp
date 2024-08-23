(define (last l)
  (cond
   ((null? l) #f)
   ((null? (cdr l)) (car l))
   (else (last (cdr l)))))
