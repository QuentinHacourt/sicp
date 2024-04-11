(define (change e1 e2 lst)
  (cond
   ((null? lst) '())
   ((= (car lst) e1) (cons e2 (change e1 e2 (cdr lst))))
   (else (cons (car lst) (change e1 e2 (cdr lst))))))


