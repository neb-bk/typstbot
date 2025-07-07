
#import "@preview/wrap-it:0.1.1": wrap-top-bottom

#set par(justify: true)
#let fig1 = figure(
  rect(fill: lime, radius: 0.5em, width: 10em),
  caption: [Figure above],
)
#let fig2 = figure(
  rect(fill: orange, radius: 0.5em, width: 10em),
  caption: [Figure below],
)
#let body = lorem(60)

#wrap-top-bottom(fig1, fig2, body)
