(load "streams.rkt")

(define integers
  (cons-stream
   1
   (map-stream
    (lambda (x)
      (+ x 1))
    integers)))

(define (triplets)
  (streamfilter
   (lambda (l)
     (>
      (+ (car l) (cadr l))
      (caddr l)))
   (cartesian-product integers integers integers)))
