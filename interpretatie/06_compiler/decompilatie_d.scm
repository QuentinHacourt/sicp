(define antwoord

(compile
    '(begin
        (define (f n)
          (if (< n 2)
              1
              (* n (f (- n 1)))))
        (f 11))
    's
    'next
  )

  )
