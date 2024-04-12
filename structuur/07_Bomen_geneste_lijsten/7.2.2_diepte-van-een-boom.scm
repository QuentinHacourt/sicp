(define (atom? x)
  (not (pair? x)))

(define (depth tree)
  (cond
   ((null? tree) 0)
   ((atom? tree) 0)
   (else (max (+ 1 (depth (car tree)))
	      (depth (cdr tree))))))
