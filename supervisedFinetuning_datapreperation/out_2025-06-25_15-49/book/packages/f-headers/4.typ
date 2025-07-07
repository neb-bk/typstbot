
#import "@preview/hydra:0.6.1": hydra

#set page(height: 10 * 20pt, margin: (y: 4em), footer: context {
  line(length: 100%)
  align(center, emph(hydra(1)))
})
#set heading(numbering: "1")

= First Main Section
#lorem(50)

= Second Main Section
#lorem(100)
