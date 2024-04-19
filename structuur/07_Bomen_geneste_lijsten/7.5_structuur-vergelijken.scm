(define (atom? x)
  (not (pair? x)))

(define (both-atoms? x y)
  (and (atom? x) (atom? y)))

(define (both-not-atoms? x y)
  (and (pair? x) (pair? y)))

(define (same-structure? tree1 tree2)
  (cond
   ((both-atoms? tree1 tree2) #t)
   ((both-not-atoms? tree1 tree2)
    (and
	 (same-structure? (car tree1) (car tree2))
	 (same-structure? (cdr tree1) (cdr tree2))))
   (else #f)))
