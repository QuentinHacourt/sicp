(define (rec-merge-n l1 l2 n)
  (define (rec l1 l2 ctr)
    (cond
     ((null? l1) l2)
     ((null? l2) l1)
     ((= ctr n) (cons (car l1) (rec l2 (cdr l1) 1)))
     (else (cons (car l1) (rec (cdr l1) l2 (+ ctr 1))))))
  (rec l1 l2 1))

(define (iter-merge-n l1 l2 n)
  (define (iter l1 l2 ctr res)
    (cond
     ((null? l1) (append res l2))
     ((null? l2) (append res l1))
     ((= ctr n) (iter l2 (cdr l1) 1 (append res (list (car l1)))))
     (else (iter (cdr l1) l2 (+ ctr 1) (append res (list (car l1)))))))
  (iter l1 l2 1 '()))
