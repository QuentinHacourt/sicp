;; Predicaat `and?`
(define (and? exp)
  (tagged-list? exp 'and))

;; Vertaal-procedure `and->if`
(define (and-exps exp)
  (cdr exp))

(define (next-exps exps)
  (cdr exps))

(define (current-exp exps)
  (car exps))

(define (and->if exp)
  (define (recursive exps)
    (cond
     ((null? exps) 'true)
     ((null? (next-exps exps)) (current-exp exps))
     (else (make-if (current-exp exps)
                     (recursive (next-exps exps))
                     'false))))
  (recursive (and-exps exp)))
