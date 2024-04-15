(load "streams.rkt")

(define integers
  (cons-stream
   1
   (map-stream (lambda (x)
                 (+ x 1))
               integers)))

(define (integers-special stream)
  (define (divides? deeltal deler)
    (= 0 (modulo deeltal deler)))
  (streamfilter (lambda (x) (not (or (divides? x 2)
                                     (divides? x 3)
                                     (divides? x 5))))
                stream))
