
#set table(stroke: (x, y) => (
  left: if x == 0 { 1pt } else { none },
  right: 1pt,
  top: if y == 0 { 1pt } else { none },
  bottom: 1pt,
))
#table(
  columns: 2,
  [*Header 1*], [*Header 2*],
  [Data 1], [Data 2],
  [Data 3], [Data 4],
)
