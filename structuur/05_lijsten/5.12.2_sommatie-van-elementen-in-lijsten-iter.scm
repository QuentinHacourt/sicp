(define (iter-sum-lists l1 l2)
  (define (iter l1 l2 res)
    (cond
     ((and (null? l1) (null? l2)) res)
     ((null? l1) (append res l2))
     ((null? l2) (append res l1))
     (else (iter (cdr l1) (cdr l2) (append res (list (+ (car l1) (car l2))))))))
  (iter l1 l2 '()))
