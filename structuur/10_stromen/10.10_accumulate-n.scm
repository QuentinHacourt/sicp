(load "streams.rkt")

(define (accumulate-n op ne streams)
  (if (empty-stream? (head streams))
      the-empty-stream
      (let ((heads (map-stream head streams))
            (tails (map-stream tail streams)))
        (cons-stream (accumulate op ne heads)
                     (accumulate-n op ne tails)))))
