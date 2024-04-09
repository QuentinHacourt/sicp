(define (rec-multiply x y)
    (if (= 0 y)
        0
        (+ x (rec-multiply x (- y 1)))))

(define (iter-multiply x y)
  (define (iter result counter)
      (if (= 0 counter)
          result
          (iter (+ result x) (- counter 1))))
  (iter 0 y))
