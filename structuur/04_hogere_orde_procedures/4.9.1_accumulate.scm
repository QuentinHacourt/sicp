(define (accumulate combiner null-value term a next b)
  (define (iter ctr res)
    (if (> ctr b)
	res
	(iter (next ctr) (combiner res (term ctr)))))
  (iter a null-value))
