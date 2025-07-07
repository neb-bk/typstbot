
#import "@preview/highlight:0.1.0"
#table(
  columns: 2,
  fill: (x, y) => if y == 2 { highlight.fill }, // Highlight the third row (index 2)
  [A], [B],
  [C], [D],
  [E], [F],
  [G], [H],
)
