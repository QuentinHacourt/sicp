(define (parasol n)
  (define (display-n t n)
    (if (> n 0)
	(begin
	  (display t)
	  (display-n t (- n 1)))))
  (define (top lvl)
    (if (< lvl n)
	(begin
	  (display-n " " (- (- n 1) lvl))
	  (display-n "*" (+ 1 (* 2 lvl)))
	  (newline)
	  (top (+ lvl 1)))))
  (define (stick lvl)
    (if (< lvl 3)
	(begin
	  (display-n " " (- n 1))
	  (display "*")
	  (newline)
	  (stick (+ lvl 1)))))
  (top 0)
  (stick 0))
