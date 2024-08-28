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

(define (baas x)
  (car x))

(define (onderlingen x)
  (cdr x))

(define (bazen-van organigram p)
  (define (boom org pad)
    (if (eq? (baas org) p)
        pad
        (bomen (onderlingen org) (cons (baas org) pad))))

  (define (bomen orgs pad)
    (if (null? orgs)
        #f
        (or (boom (baas orgs) pad)
            (bomen (onderlingen orgs) pad))))

  (boom organigram '()))

(bazen-van organigram 'bediende2)
