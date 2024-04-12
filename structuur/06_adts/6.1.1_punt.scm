(define (make-punt x y)
  (cons x y))

(define (x punt)
  (car punt))

(define (y punt)
  (cdr punt))
