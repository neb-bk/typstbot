
#import "@preview/hydra:0.6.1": hydra

#set page(
  header: context hydra() + line(length: 100%, stroke: luma(80%)),
  footer: context [
    #h(1fr) #text(luma(60%))[Page #counter(page).display(arabic) of #counter(page).at(last()).display(arabic)]
  ]
)
#set heading(numbering: "1.1")
#show heading.where(level: 1): it => pagebreak(weak: true) + it

= First Chapter
#lorem(400)
== Section A
#lorem(300)
= Second Chapter
#lorem(500)
