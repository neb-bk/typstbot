
#import "@preview/drafting:0.2.2": *

// Example of a basic rule grid
#rule-grid(width: 10cm, height: 3cm, spacing: 20pt)
#place(
  dx: 180pt,
  dy: 40pt,
  rect(fill: white, stroke: red, width: 1in, "This will originate at (180pt, 40pt)")
)

// Example with divisions and square cells, offset horizontally
#rule-grid(dx: 10cm + 3em, width: 3cm, height: 1.2cm, divisions: 5, square: true, stroke: green)

// The rule grid doesn't take up space, so add it explicitly for layout
#v(3cm + 1em)
