(define (super-merge-n lsts n)
					;given a list of lists, puts the first one in the back
  (define (rotate lsts)
    (append (cdr lsts) (list (car lsts))))
					;given a list of lists, checks if all lists are the empty list
  (define (all-empty? lsts)
    (equal? lsts '()))
					;given a list of lists, checks if the first list is the empty list
  (define (first-empty? lsts)
    (if (null? (car lsts))
	#t
	#f))
					;given a list of lists, returns the first element of the first list
  (define (first-elem lsts)
    (car (car lsts)))
					;given a list of lists, returns the same list but with the first element from the first list removed
  (define (rem-first-elem-from-first-list lsts)
					;given a list, returns the same list with the first element removed from it
    (define (rem-first-elem lst)
      (if (null? lst)
	  '()
	  (cdr lst)))

    (if (null? lsts)
	'()
	(cons (rem-first-elem (car lsts)) (cdr lsts))))
  
  (define (iter lsts ctr res)
    (cond
     ((all-empty? lsts) res)
					;((equal? lsts '()) res)
     ((first-empty? lsts) (iter (cdr lsts) 0 res))
     ((< ctr n) (iter (rem-first-elem-from-first-list lsts) (+ ctr 1) (append res (list (first-elem lsts)))))
     (else (iter (rotate lsts) 0 res))))
  (iter lsts 0 '()))
