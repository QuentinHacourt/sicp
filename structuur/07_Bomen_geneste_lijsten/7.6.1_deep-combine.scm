(define (atom? x)
  (not (pair? x)))

(define (deep-combine combiner null-value tree)
  (cond
   ((null? tree) null-value)
   ((atom? tree) tree)
   (else (combiner
	  (deep-combine combiner null-value (car tree))
	  (deep-combine combiner null-value (cdr tree))))))
