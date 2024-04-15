(load "streams.rkt")

(define (fac n)
  (if (= n 0)
      1
      (* n (fac (- n 1)))))

(define (calc-e n)
  (accumulate
   +
   0
   (map-stream
    (lambda (x) (/ 1 (fac x)))
    (enumerate-interval 0 n))))

(define (sinus x n)
  (define (term i)
    (*
     (if (odd? (/ (- i 1) 2)) -1 1)
     (/ (expt x i) (fac i))))
  (accumulate + 0
              (map-stream
               term
               (streamfilter
                odd?
                (enumerate-interval 0 (* 2 n))))))
