
#let data = ("Row1Col1", "Row1Col2", "Row1Col3")

#table(columns: 3,
  [Header 1], [Header 2], [Header 3],
  ..data,
  [Next Row Item 1], [Next Row Item 2], [Next Row Item 3]
)
