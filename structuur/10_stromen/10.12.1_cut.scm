(load "streams.rkt")

(define (print-m matrix)
	(display "[")
	(print-stream (head matrix)) (newline)
	(stream-for-each (lambda (x) (display " ")
						(print-stream x) (newline))
					 (tail matrix))
	(display "]\n"))

(define (append-elem-to-last-stream elem stream)
  (cond ((empty-stream? stream)
         (cons-stream (cons-stream elem the-empty-stream) the-empty-stream))
        ((empty-stream? (tail stream))
         (cons-stream (cons-stream elem (head stream)) the-empty-stream))
        (else
         (cons-stream (head stream) (append-elem-to-last-stream elem (tail stream))))))

(define (add-new-stream-with-elem elem stream)
  (if (empty-stream? stream)
         (cons-stream (cons-stream elem the-empty-stream) the-empty-stream)
         (cons-stream (head stream) (add-new-stream-with-elem elem (tail stream)))))

(define (cut stream)
  (define (iter str last res)
    (cond ((empty-stream? str) res)
          ((eq? last (head str)) (iter (tail str) last (append-elem-to-last-stream last res)))
          (else (iter (tail str) (head str) (add-new-stream-with-elem (head str) res)))))
  (iter stream (head stream) the-empty-stream))
