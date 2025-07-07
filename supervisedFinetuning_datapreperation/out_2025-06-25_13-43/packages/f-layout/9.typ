
#import "@preview/drafting:0.2.2": *

#let (l-margin, r-margin) = (1in, 2in)
#set page(margin: (left: l-margin, right: r-margin, rest: 0.1in))
#set-page-properties(margin-left: l-margin, margin-right: r-margin)

#lorem(5) #margin-note[Default style note.]
#set-margin-note-defaults(stroke: purple + 1.5pt, side: left)
#lorem(5) #margin-note[This note has the updated default style.]
