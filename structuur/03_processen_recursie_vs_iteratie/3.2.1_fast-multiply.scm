(define (double x)
    (+ x x))

(define (halve x)
    (/ x 2))

(define (rec-fast-multiply x y)
    (cond ((= y 0) 0)
        ((even? y) (rec-fast-multiply (double x) (halve y)))
        (else (+ x (rec-fast-multiply x (- y 1))))))

(define (iter-fast-multiply x y)
    (define (iter res ctr x)
        (cond
            ((= ctr 0) res)
            ((even? ctr) (iter res (halve ctr) (double x)))
            (else (iter (+ res x) (- ctr 1) x))))
    (iter 0 y x))
