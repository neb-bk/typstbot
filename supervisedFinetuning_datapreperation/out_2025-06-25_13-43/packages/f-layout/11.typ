
#import "@preview/drafting:0.2.2": *

#set page(margin: 1in)
#set-page-properties(margin-left: 1in, margin-right: 1in) // Dummy values for inline-note setup

#lorem(10)
#inline-note[
  #rect(fill: aqua.lighten(80%), inset: 0.5em, [
    This is an inline note that splits the paragraph.
  ])
]
#lorem(10)
