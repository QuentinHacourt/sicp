(define (rec-add x y)
    (if (= 0 y)
        x
        (+ 1 (rec-add x (- y 1)))))
