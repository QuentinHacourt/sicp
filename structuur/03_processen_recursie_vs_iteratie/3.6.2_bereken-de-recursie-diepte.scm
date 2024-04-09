(define (depth-weird x)
    (cond
        ((= x 1) 0)
        ((even? x) (+ 1 (depth-weird (/ x 2))))
        (else (+ 1 (depth-weird (+ (* 3 x) 1))))))
