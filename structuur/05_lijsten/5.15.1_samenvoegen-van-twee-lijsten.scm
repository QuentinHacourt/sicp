(define (rec-merge-n l1 l2 n)
  (define (rec l1 l2 ctr)
    (cond
     ((and (null? l1) (null? l2)) '())
     ((null? l1) l2)
     ((< ctr n) (cons (car l1) (rec (cdr l1) l2 (+ ctr 1))))
     (else (rec l2 l1 0))))
  (rec l1 l2 0))

(define (iter-merge-n l1 l2 n)
  (define (iter l1 l2 ctr res)
    (cond
     ((and (null? l1) (null? l2)) res)
     ((null? l1) (append res l2))
     ((< ctr n) (iter (cdr l1) l2 (+ ctr 1) (append res (list (car l1)))))
     (else (iter l2 l1 0 res))))
  (iter l1 l2 0 '()))
