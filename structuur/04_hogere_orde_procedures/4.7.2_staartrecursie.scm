(define (iter-product factor a next b)
  (define (iter ctr res)
    (if (> ctr b)
	res
	(iter (next ctr) (* res (factor ctr)))))
  (iter a 1))
