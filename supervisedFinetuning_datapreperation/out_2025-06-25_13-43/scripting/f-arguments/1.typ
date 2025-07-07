
#let a = ("Dynamic 1", "Dynamic 2", "Dynamic 3")

#table(columns: 3,
  [Header A], [Header B], [Header C],
  [Row 1, Col 1], [Row 1, Col 2], [Row 1, Col 3],
  ..a
)
