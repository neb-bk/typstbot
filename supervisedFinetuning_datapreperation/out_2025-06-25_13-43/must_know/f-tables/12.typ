
#table(
  columns: 2,
  fill: (x, y) => if y % 2 == 0 { luma(240) } else { white }, // Light gray for even rows, white for odd
  [Header A], [Header B],
  [Row 1, Cell 1], [Row 1, Cell 2],
  [Row 2, Cell 1], [Row 2, Cell 2],
  [Row 3, Cell 1], [Row 3, Cell 2],
  [Row 4, Cell 1], [Row 4, Cell 2],
)
