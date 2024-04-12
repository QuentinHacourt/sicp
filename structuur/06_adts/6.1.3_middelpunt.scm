(define (make-punt x y)
  (cons x y))

(define (x punt)
  (car punt))

(define (y punt)
  (cdr punt))

(define (make-segment start einde)
  (cons start einde))

(define (start-punt segment)
  (car segment))

(define (end-punt segment)
  (cdr segment))

(define (middelpunt segment)
  (make-punt (/ (+ (x (start-punt segment)) (x (end-punt segment))) 2)
	     (/ (+ (y (start-punt segment)) (y (end-punt segment))) 2)))
