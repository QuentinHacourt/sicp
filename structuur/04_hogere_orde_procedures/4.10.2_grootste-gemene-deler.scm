(define (filtered-accumulate combiner filter? null-value term a next b)
  (define (iter ctr res)
    (cond
     ((> ctr b) res)
     ((filter? ctr) (iter (next ctr) (combiner (term ctr) res)))
     (else (iter (next ctr) res))))
  (iter a null-value))

(define (product-gcd n)
  (define (id x) x)
  (define (incr x) (+ x 1))
  (define (filter? i) (= (gcd i n) 1))
  (filtered-accumulate * filter? 1 id 1 incr n))
