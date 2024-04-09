(define (display-n x n)
    (if (> n 0)
        (begin
            (display x)
            (display-n x (- n 1)))))
