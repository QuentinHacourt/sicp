(define (accumulate combiner null-value term a next b)
  (define (iter ctr res)
    (if (> ctr b)
	res
	(iter (next ctr) (combiner res (term ctr)))))
  (iter a null-value))

(define (add a b)
  (accumulate + b (lambda (x) 1) 1 (lambda (x) (+ x 1)) a))

(define (multiply a b)
  (accumulate + 0 (lambda (x) a) 0 (lambda (x) (+ x 1)) (- b 1)))
