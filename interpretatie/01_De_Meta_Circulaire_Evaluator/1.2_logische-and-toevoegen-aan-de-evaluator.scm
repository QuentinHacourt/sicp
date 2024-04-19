#lang r5rs

;; Predicaat `and?`

(define (and? exp)
  (tagged-list? exp 'and))

;; Verticaal-procedure `and->if`

(define (and-args exp)
  (cdr exp))

(define (and->if exp)
  (define (and-args->if exps)
    (cond
     ((null? exps) 'true)
     ((null? (cdr exps)) (car exps))
     (else (make-if (car exps)
               (and-args->if (cdr exps))
               'false))))
  (and-args->if (and-args exp)))
