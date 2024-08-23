(#%require (only racket/base
                 time error))

;;
;;toegevoegd
;;
(define true #t)
(define false #f)


;; Deelvraag 1: schrijf hier jouw predicaten
(define (lazy? exp)
  (tagged-list? exp 'lazy))

(define (memo? arg)
  (tagged-list? arg 'lazy-memo))

(define (arg-names maybe-tagged-arg-names)
  (map (lambda (decl)
         (if (symbol? decl)
             decl
             (cadr decl)))
       maybe-tagged-arg-names))

(define (thunk-memoizable? obj)
  (tagged-list? obj 'thunked-memoizable))

;; Deelvraag 2: pas force-it aan
(define (force-it-obj)
  (cond
   ((thunk-memoizable? obj)
    (let ((result (actual-value
                   (thunk-exp obj)
                   (thunk-env obj))))
      (set-car! obj 'evaluated-thunk)
      (set-car! (cdr obj) result)
      (set-cdr! (cdr obj) '())
      result))
   ((thunk? obj)
    (actual-value
     (thunk-exp obj)
     (thunk-env obj)))
   ((evaluated-thunk? obj)
    (thunk-value obj))
   (else obj)))
