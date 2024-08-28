Beschouw het organigram van een bedrijf. De meest voor de hand liggende representatie van zo’n organigram is de boomstructuur. Hieronder vind je een voorbeeld van zo een bedrijf.

Bovenstaande boomstructuur kunnen we in Scheme gemakkelijk voorstellen d.m.v. geneste lijsten:

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
