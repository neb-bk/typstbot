
#import "@preview/pinit:0.2.2": *
#set page(height: 5em, width: 30em)
#let crimson = rgb("#c00000")

$f(n) = O(g(n))$: #pin(1)$f(n)$ is *asymptotically smaller* than $g(n)$.#pin(2)

#pinit-line(stroke: 3pt + crimson, start-dy: -0.25em, end-dy: -0.25em, 1, 2)
