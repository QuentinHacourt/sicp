(define (display-n x n)
    (if (> n 0)
        (begin
            (display x)
            (display-n x (- n 1)))))

(define (parasol n)
  (define (stick i)
      (if (< i 3)
        (begin
          (display-n " " (- n 1))
          (display "*")
          (newline)
          (stick (+ i 1)))))
  (define (top i)
      (if (< i n)
        (begin
          (display-n " " (- n i 1))
          (display-n "*" (+ 1 (* 2 i)))
          (newline)
          (top (+ 1 i)))))
  (top 0)
  (stick 0))
