(define (display-as-binary n)
    (cond
        ((= 0 n) (display "0"))
        ((= 1 n) (display "1"))
        ((even? n)
            (display-as-binary (quotient n 2))
            (display "0"))
        (else
            (display-as-binary (quotient n 2))
            (display "1"))))
