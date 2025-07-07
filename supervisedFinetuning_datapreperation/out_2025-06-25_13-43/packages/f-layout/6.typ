
#import "@preview/pinit:0.2.2": *

// Pages
#set page(paper: "presentation-4-3")
#set text(size: 20pt)
#show heading: set text(weight: "regular")
#show heading: set block(above: 1.4em, below: 1em)
#show heading.where(level: 1): set text(size: 1.5em)

// Useful functions
#let crimson = rgb("#c00000")
#let redbold(body) = {
  set text(fill: crimson, weight: "bold")
  body
}

// Main body excerpt
#block[
  = Layouting Example

  #block[Insertion Sort as an #pin("r1")example#pin("r2"):]

  - Best Case: $T(n) approx c n + c' n - c''$ #pin(3)
  - Worst case: $T(n) approx c n + (c' \/ 2) n^2 - c''$ #pin(4)

  #pinit-rect("r1", "r2", stroke: 2pt + crimson)

  #pinit-place(3, dx: 15pt, dy: -15pt)[#redbold[$T(n) = O(n)$]]
  #pinit-place(4, dx: 15pt, dy: -15pt)[#redbold[$T(n) = O(n^2)$]]

  Q: Is $n^(3) = O(n^2)$#pin("que")?
  #pinit-point-to("que", fill: crimson, redbold[No.])
]
