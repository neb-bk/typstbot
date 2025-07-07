-nopreamble
#import "@preview/hydra:0.6.1": hydra

#set page(header: context hydra() + line(length: 100%, stroke: luma(80%)))
#set heading(numbering: "1.1.1") // More granular numbering for chapters/sections
#show heading.where(level: 1): it => pagebreak(weak: true) + it

= My Document
#lorem(100)

= Introduction
#lorem(200)
== First Section
#lorem(150)
=== Subsection A
#lorem(50)
== Second Section
#lorem(100)

= Conclusion
#lorem(50)
