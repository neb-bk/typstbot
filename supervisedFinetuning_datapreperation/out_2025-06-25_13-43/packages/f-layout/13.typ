
#import "@preview/drafting:0.2.2": *

#let (l-margin, r-margin) = (1in, 2in)
#set page(margin: (left: l-margin, right: r-margin, rest: 0.1in))
#set-page-properties(margin-left: l-margin, margin-right: r-margin)

#set-margin-note-defaults(hidden: true)

#lorem(20)
#margin-note[This note will be hidden by default.]
#margin-note(hidden: false, dy: -2.5em, stroke: red + 2pt)[This note will always be visible.]
