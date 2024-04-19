(define (atom? x)
  (not (pair? x)))

(define (deep-map f tree)
  (cond
   ((null? tree) '())
   ((atom? tree) (f tree))
   (else (cons (deep-map f (car tree))
	       (deep-map f (cdr tree))))))

(define (deep-combine combiner null-value tree)
  (cond
   ((null? tree) null-value)
   ((atom? tree) tree)
   (else (combiner
	  (deep-combine combiner null-value (car tree))
	  (deep-combine combiner null-value (cdr tree))))))

(define (count-atoms tree)
  (define (set x)
    1)
  (deep-combine + 0 (deep-map set tree)))
