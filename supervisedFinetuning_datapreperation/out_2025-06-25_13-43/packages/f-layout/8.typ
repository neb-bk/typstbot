
#import "@preview/drafting:0.2.2": *

#let (l-margin, r-margin) = (1in, 2in)
#set page(
  margin: (left: l-margin, right: r-margin, rest: 0.1in),
)
#set-page-properties(margin-left: l-margin, margin-right: r-margin)

#lorem(20)
#margin-note(side: right)[This is a note on the right.]
#lorem(10)
#margin-note(side: left)[This is a note on the left.]
#lorem(25)
#margin-note[First overlapping note.]
#margin-note(stroke: blue + 2pt)[Second overlapping note.]
#margin-note(fill: yellow.lighten(80%))[Third overlapping note.]
#lorem(25)
