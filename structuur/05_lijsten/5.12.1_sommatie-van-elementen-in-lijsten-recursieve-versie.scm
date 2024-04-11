(define (rec-sum-lists l1 l2)
  (cond
   ((and (null? l1) (null? l2)) '())
   ((null? l1) (cons (car l2) (rec-sum-lists l1 (cdr l2))))
   ((null? l2) (cons (car l1) (rec-sum-lists (cdr l1) l2)))
   (else (cons (+ (car l1) (car l2)) (rec-sum-lists (cdr l1) (cdr l2))))))
