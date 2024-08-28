;; Onderstaande boomstructuur geeft een stukje weer van het organigram van de VUB. De VUB organisatie kan onderverdeeld worden in een academisch stuk en in een administratief stuk. De adminstratie kan op haar beurt onderverdeeld worden in personeel, financiën, etc. Elke dienst kan dan nog verder opgedeeld worden. De academische organisatie bestaat uit het rectoraat en de faculteiten. De faculteiten zijn bvb. Rechten, Economie en Wetenschappen. (Er zijn nog andere faculteiten maar deze hebben we niet op het organigram aangeduid).

;; Elke faculteit heeft diverse bachelorprogramma’s en masterprogramma’s. Let op, je oplossingen voor de vragen hieronder moeten algemeen zijn; dus kunnen werken in situaties waar er nog een verder opdeling is van het rectoraat, van de richtingen, etc.

(define VUBOrganigram
  '(VUB (academisch (rectoraat)
                    (faculteiten
                     (rechten (bachelor (ba-rechten)
                                        (ba-criminologie))
                              (master (ma-rechten)
                                      (ma-criminologie)))
                     (economie)
                     (wetenschappen (bachelor (ba-wiskunde)
                                              (ba-fysica)
                                              (ba-cw))
                                    (master (ma-wiskunde)
                                            (ma-fysica)
                                            (ma-cw)))))
        (administratief (personeel) (financien))))

;; Maw de diepte van de boom ligt niet vast.
