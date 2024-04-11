(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a) (sum term (next a) next b))))

(define (product factor a next b)
  (if (> a b)
      1
      (* (factor a) (product factor (next a) next b))))
  
