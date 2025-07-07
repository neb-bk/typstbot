
#set page(width: 16cm)
#set text(font: "IBM Plex Sans")
#show table.cell.where(y: 0): set text(weight: "bold", align: center)
#set table(fill: (_, y) => if calc.odd(y) { rgb("EAF2F5") })

#table(
  columns: (1fr, 1fr, 1fr),
  align: (left, center, right),
  table.header[
    *Item*
  ][
    *Description*
  ][
    *Price*
  ],
  [Widget A], [A useful widget], [19.99],
  [Widget B], [Another widget], [29.99],
  [Widget C], [The best widget], [39.99],
)
