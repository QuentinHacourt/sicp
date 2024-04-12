(define (atom? x)
  (not (pair? x)))

(define (depth-and-leaf-count tree)
  (define (make-res depth count)
    (cons depth count))

  (define (get-depth res)
    (car res))

  (define (get-count res)
    (cdr res))

  (cond
   ((null? tree) (make-res 0 0))
   ((atom? tree) (make-res 0 1))
   (else (let
	     ((car-res (depth-and-leaf-count (car tree)))
	      (cdr-res (depth-and-leaf-count (cdr tree))))
	   (make-res
	    (max (+ 1 (get-depth car-res)) (get-depth cdr-res))
	    (+ (get-count car-res) (get-count cdr-res)))))))
