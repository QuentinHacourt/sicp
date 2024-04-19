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

(define (deep-atom-member? e tree)
  (define (is-elem? x)
    (eq? x e))

  (define (my-or? l r)
    (or l r))

  (deep-combine my-or? #f (deep-map is-elem? tree)))
