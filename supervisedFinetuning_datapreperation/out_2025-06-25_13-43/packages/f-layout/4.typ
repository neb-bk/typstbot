
#import "@preview/pinit:0.2.2": *
#set page(height: 6em, width: 20em)
#set text(size: 16pt)

This is the #pin("marker")spot.
#pinit-place("marker", dx: 30pt, dy: -20pt)[
  #rect(fill: luma(90%), inset: 4pt, [Offset text])
]
