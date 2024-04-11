(define (last lst)
  (cond
   ((null? lst) #f)
   ((null? (cdr lst)) (car lst))
   (else (last (cdr lst)))))
