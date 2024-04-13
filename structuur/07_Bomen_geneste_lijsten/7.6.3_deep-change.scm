(define (atom? x)
  (not (pair? x)))

(define (deep-map f tree)
  (cond
   ((null? tree) '())
   ((atom? tree) (f tree))
   (else (cons (deep-map f (car tree))
	       (deep-map f (cdr tree))))))

(define (deep-change e1 e2 tree)
  (define (change x)
    (if (eq? x e1)
	e2
	x))
  (deep-map change tree))
