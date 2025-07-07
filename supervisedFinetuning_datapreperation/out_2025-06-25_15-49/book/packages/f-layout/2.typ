
#import "@preview/pinit:0.2.2": *
#set page(height: 10em, width: 30em)
#let redbold(body) = {
  set text(fill: rgb("#c00000"), weight: "bold")
  body
}

- Worst case: $T(n) approx c n + (c' \/ 2) n^2 - c''$ #pin(4)

#pinit-place(4, dx: 15pt, dy: -15pt)[#redbold[$T(n) = O(n^2)$]]
