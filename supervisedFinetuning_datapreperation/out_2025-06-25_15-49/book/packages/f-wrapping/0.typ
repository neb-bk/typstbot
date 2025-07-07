
#import "@preview/wrap-it:0.1.1": wrap-content

#set par(justify: true)
#let fig = figure(
  rect(fill: teal, radius: 0.5em, width: 8em),
  caption: [A simple figure to wrap],
)
#let body = lorem(40)

#wrap-content(fig, body)
