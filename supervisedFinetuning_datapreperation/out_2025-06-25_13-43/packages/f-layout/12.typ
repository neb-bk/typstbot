
#import "@preview/drafting:0.2.2": *

#let (l-margin, r-margin) = (1in, 2in)
#set page(margin: (left: l-margin, right: r-margin, rest: 0.1in))
#set-page-properties(margin-left: l-margin, margin-right: r-margin)

#let reviewer-a = margin-note.with(stroke: blue + 1pt, fill: blue.lighten(90%))
#let reviewer-b = margin-note.with(stroke: purple + 1pt, fill: purple.lighten(90%), side: left)

#lorem(20)
#reviewer-a[Comment from Reviewer A.]
#lorem(15)
#reviewer-b[Comment from Reviewer B.]
