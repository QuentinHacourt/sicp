(define (change e1 e2 l)
  (cond
   ((null? l) '())
   ((= e1 (car l)) (cons e2 (change e1 e2 (cdr l))))
   (else (cons (car l) (change e1 e2 (cdr l))))))
