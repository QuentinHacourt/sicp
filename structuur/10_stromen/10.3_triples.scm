(load "streams.rkt")

(define (odd-sum-triples max)
  (map-stream
   (lambda (x)
     (list
      (car x)
      (cdr x)
      (+ (car x) (cdr x))))
   (let ((s (streamfilter
             odd?
             (enumerate-interval 0 (- max 1)))))
     (pairs s s))))
