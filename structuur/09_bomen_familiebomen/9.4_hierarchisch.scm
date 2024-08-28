(define (atom? x)
  (not (pair? x)))

(define (baas x)
  (car x))

(define (onderlingen x)
  (cdr x))

(define organigram
  '(directeur
    (hoofd-verkoop (verkoopsleider-vlaanderen)
                   (verkoopsleider-brussel))
    (hoofd-productie (hoofd-inkoop (bediende1)
                                   (bediende2)
                                   (bediende3))
                     (hoofd-fakturen))
    (hoofd-administratie (hoofd-personeel)
                         (hoofd-boekhouding))))

(define (hierarchisch? p1 p2 organigram)
  (define (boom org pad)
    (cond ((and (eq? (baas org) p1) (member p2 pad)) #t)
          ((and (eq? (baas org) p2) (member p1 pad)) #t)
          (else (bomen (onderlingen org) (cons (baas org) pad)))))

  (define (bomen orgs pad)
    (if (null? orgs)
        #f
        (or (boom (baas orgs) pad)
            (bomen (onderlingen orgs) pad))))
  (boom organigram '()))

(hierarchisch? 'directeur 'verkoopsleider-brussel organigram)
