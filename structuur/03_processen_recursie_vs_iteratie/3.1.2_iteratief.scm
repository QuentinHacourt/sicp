(define (iter-add x y)
    (if (= 0 y)
        x
         (iter-add (+ x 1) (- y 1))))
