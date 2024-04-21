(load "streams.rkt")

(define (cut stream)
  (define (split res rem el)
    (cond ((empty-stream? rem) (cons res the-empty-stream))
          ((eq? (head rem) el) (split (cons-stream el res) (tail rem) el))
          (else (cons res rem))))

  (if (empty-stream? stream)
      the-empty-stream
      (let ((gesplits ( split the-empty-stream stream (head stream))))
        (cons-stream (car gesplits) (cut (cdr gesplits))))))  )
