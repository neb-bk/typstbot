
#import "@preview/hydra:0.6.1": hydra

#set page(header: context hydra() + line(length: 100%))
#set heading(numbering: "1.1")
#show heading.where(level: 1): it => pagebreak(weak: true) + it

= Introduction
#lorem(750)

= Content
== First Section
#lorem(500)
== Second Section
#lorem(250)
== Third Section
#lorem(500)

= Annex
#lorem(10)
