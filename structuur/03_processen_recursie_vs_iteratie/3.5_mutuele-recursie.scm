(define (my-even? n)
    (if (= n 0)
        #t
        (my-odd? (- n 1))))

(define (my-odd? n)
    (if (= n 0)
        #f
        (my-even? (- n 1))))
