(load "streams.rkt")

(define (accumulate-n op ne streams)
  (if (empty-stream? (head streams))
      the-empty-stream
      (let ((heads (map-stream head streams))
            (tails (map-stream tail streams)))
        (cons-stream (accumulate op ne heads)
                     (accumulate-n op ne tails)))))

(define (print-m matrix)
	(display "[")
	(print-stream (head matrix)) (newline)
	(stream-for-each (lambda (x) (display " ")
						(print-stream x) (newline))
					 (tail matrix))
	(display "]\n"))

(define matrix
	(cons-stream (enumerate-interval 1 3)
				 (cons-stream (enumerate-interval 4 6)
							  (cons-stream (enumerate-interval 7 9)
								           (cons-stream (enumerate-interval 10 12)
														the-empty-stream)))))

(define (transpose m)
  (if (empty-stream? (head m))
      the-empty-stream
      (let ((heads (map-stream head m))
            (tails (map-stream tail m)))
        (cons-stream
         heads
         (transpose tails)))))

;; (display "matrix:")
;; (newline)
;; (print-m matrix)
;; (newline)
;; (display "transposed matrix:")
;; (newline)
;; (print-m (transpose matrix))
