(define (rec-sum-lists l1 l2)
  (cond
   ((and (null? l1) (null? l2)) '())
   ((null? l1) l2)
   ((null? l2) l1)
   (else (cons
          (+ (car l1) (car l2))
          (rec-sum-lists (cdr l1) (cdr l2))))))
