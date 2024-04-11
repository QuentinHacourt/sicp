(define (product factor a next b)
  (if (> a b)
      1
      (* (factor a) (product factor (next a) next b))))

(define (factorial n)
  (product (lambda (n) n) 1 (lambda (x) (+ x 1)) n))
