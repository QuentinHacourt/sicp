(define (accumulate combiner null-value term a next b)
  (define (iter ctr res)
    (if (> ctr b)
	res
	(iter (next ctr) (combiner res (term ctr)))))
  (iter a null-value))

(define (product factor a next b)
  (accumulate * 1 factor a next b))

(define (sum factor a next b)
  (accumulate + 0 factor a next b))
  
