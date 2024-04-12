					;(define (atom? x)
					;    (not (pair? x)))
					;    
					;(define (tree-procedure-rec lst)
					;    (cond ((null? lst) base-result)
					;           ((atom? lst) atom-result)
					;           (else (combine-branches (tree-procedure-rec (car lst))
					;                                   (tree-procedure-rec (cdr lst))))))

(define (atom? x)
  (not (pair? x)))

(define (leaf-count tree)
  (cond ((null? tree) 0)
	((atom? tree) 1)
	(else (+ (leaf-count (car tree))
		 (leaf-count (cdr tree))))))
