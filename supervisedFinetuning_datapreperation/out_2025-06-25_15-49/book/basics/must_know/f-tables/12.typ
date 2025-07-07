
#let highlight = (fill: luma(220)) // Defines 'highlight.fill' to a light gray color

#table(
  columns: 2,
  fill: (x, y) => if y == 2 { highlight.fill },
  [A], [B],
  [C], [D],
  [E], [F],
  [G], [H],
)
