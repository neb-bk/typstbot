
#table(
  columns: 3,
  fill: (x, y) => if y == 2 { blue.lighten(70%) }, // y=0 is first row, y=1 is second, y=2 is third (second data row)
  [Header A], [Header B], [Header C],
  [Row 1, Col 1], [Row 1, Col 2], [Row 1, Col 3],
  [Row 2, Col 1], [Row 2, Col 2], [Row 2, Col 3],
  [Row 3, Col 1], [Row 3, Col 2], [Row 3, Col 3],
)
