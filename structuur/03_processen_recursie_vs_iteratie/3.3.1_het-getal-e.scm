(define (factorial n)
  (if (zero? n)
      1
      (* n (factorial (- n 1)))))

(define (calc-e n)
  (define (iter ctr res prev-fac)
    (if (> ctr n)
       res
       (let ((new-fac (* ctr prev-fac)))
       (iter (+ ctr 1)
             (+ res (/ 1 new-fac))
             new-fac))))
  (iter 1 1 1))
