(define (atom? x)
  (not (pair? x)))

(define (deep-map f tree)
  (cond
   ((null? tree) '())
   ((atom? tree) (f tree))
   (else (cons (deep-map f (car tree))
	       (deep-map f (cdr tree))))))
