(define (filtered-accumulate combiner filter? null-value term a next b)
  (define (iter ctr res)
    (cond
     ((> ctr b) res)
     ((filter? ctr) (iter (next ctr) (combiner (term ctr) res)))
     (else (iter (next ctr) res))))
  (iter a null-value))
