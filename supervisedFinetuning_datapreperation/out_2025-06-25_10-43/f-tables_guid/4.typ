
#set table(fill: (_, y) => if calc.odd(y) { rgb("EAF2F5") })
#table(
  columns: 2,
  table.header[Header 1][Header 2],
  [Data 1], [Data 2],
  [Data 3], [Data 4],
)
