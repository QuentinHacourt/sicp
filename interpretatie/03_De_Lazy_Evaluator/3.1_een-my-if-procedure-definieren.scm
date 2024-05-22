(define (my-if pred? consequent alternative)
  (cond (pred? consequent)
        (else alternative))))
