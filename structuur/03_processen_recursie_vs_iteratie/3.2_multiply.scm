(define (rec-multiply x y)
  (if (= y 1)
      x
      (+ x (rec-multiply x (- y 1)))))

(define (iter-multiply x y)
  (define (iter a b)
    (display a)
    (newline)
    (display b)
    (newline)
    (if (= b 1)
        (+ x a)
        (iter (+ a x) (- b 1))))
  (iter 0 y))



























;; (define (rec-multiply x y)
;;     (if (= 0 y)
;;         0
;;         (+ x (rec-multiply x (- y 1)))))

;; (define (iter-multiply x y)
;;   (define (iter result counter)
;;       (if (= 0 counter)
;;           result
;;           (iter (+ result x) (- counter 1))))
;;   (iter 0 y))
