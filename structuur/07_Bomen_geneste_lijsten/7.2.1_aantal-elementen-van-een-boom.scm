(define (atom? x)
  (not (pair? x)))

(define (leaf-count tree)
  (cond ((null? tree) 0)
		((atom? tree) 1)
		(else (+ (leaf-count (car tree))
				 (leaf-count (cdr tree))))))
