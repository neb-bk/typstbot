
#import "@preview/drafting:0.2.2": *
#import "@preview/pinit:0.2.2": *

#let (l-margin, r-margin) = (1.5in, 1in)
#set page(
  margin: (left: l-margin, right: r-margin, rest: 0.1in),
)
#set-page-properties(margin-left: l-margin, margin-right: r-margin)

#set text(size: 12pt)

#lorem(20)
// 1. Add a margin note on the left.
#margin-note(side: left, dy: -2em)[Key Principle]
#pin("margin-concept-point") // A pin in the main flow near where the note is introduced.
#lorem(10)

// 2. Highlight a definition within the main text.
A crucial aspect of algorithms is #pin("def-start")_computational complexity_, which measures the resources required.#pin("def-end")
#pinit-highlight("def-start", "def-end", fill: yellow.lighten(80%))

// 3. Draw an arrow from the conceptual point associated with the margin note to the highlighted definition.
// The arrow originates from the "margin-concept-point" pin in the main text flow.
#pinit-point-from("margin-concept-point", stroke: 1.5pt + red, body: text(8pt, "See here for detail:"))
#lorem(20)
