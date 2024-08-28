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

(define (collegas p organigram)
  (define (boom org pad)
    (if (eq? (baas org) p)
        (append pad (slaafjes (onderlingen org)))
        (bomen (onderlingen org) (cons (baas org) pad))))

  (define (bomen orgs pad)
    (if (null? orgs)
        #f
        (or (boom (baas orgs) pad)
            (bomen (onderlingen orgs) pad))))

  (define (slaafje org)
    (cons (baas org) (slaafjes (onderlingen org))))

  (define (slaafjes orgs)
    (if (null? orgs)
        '()
        (append (slaafje (baas orgs))
                (slaafjes (onderlingen orgs)))))

  (boom organigram '()))
