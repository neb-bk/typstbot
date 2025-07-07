
#import "@preview/pinit:0.2.2": *
#set page(height: 12em, width: 30em)
#let crimson = rgb("#c00000")
#let redbold(body) = {
  set text(fill: crimson, weight: "bold")
  body
}

#let blueit(body) = {
  set text(fill: blue)
  body
}

#blueit[Q: Is $n^(3) = O(n^2)$#pin("que")? How to prove your answer#pin("ans")?]

#pinit-point-to("que", fill: crimson, redbold[No.])
#pinit-point-from("ans", body-dx: -150pt)[
  Show that the equation $(3/2)^n >= c$ \\
  has infinitely many solutions for $n$.
]
