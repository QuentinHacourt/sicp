(define (change-dmv-map e1 e2 lst)
  (map (lambda (x) (if (= x e1)
		       e2
		       x))
       lst))
