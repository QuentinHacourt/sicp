;; Predicaat `and?`
(define (and? exp)
  (tagged-list? exp 'and))

;; abstractie-procedures

(define (and-args exp)
  (cdr exp))

(define (next-arg exp)
  (cdr exp))

(define (current-arg exp)
  (car exp))

;; Vertaal-procedure `and->if`
(define (and->if exp)
  (define (recursive exp)
    (cond ((null? exp) 'true)
          ((null? (next-arg exp)) (current-arg exp))
          (else (make-if (current-arg exp)
                         (recursive (next-arg exp))
                         'false))))
  (recursive (and-args exp)))
