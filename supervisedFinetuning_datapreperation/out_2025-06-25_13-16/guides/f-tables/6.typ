
#set page(width: 16cm)
#set text(font: "IBM Plex Sans")
#show table.cell.where(x: 1): set text(weight: "medium")
#show table.cell.where(y: 0): set text(weight: "bold")

#let frame(stroke) = (x, y) => (
  left: if x > 0 { 0pt } else { stroke },
  right: stroke,
  top: if y < 2 { stroke } else { 0pt },
  bottom: stroke,
)

#set table(
  fill: (_, y) => (none, rgb("EAF2F5"), rgb("DDEAEF")).at(calc.rem(y, 3)),
  stroke: frame(rgb("21222C")),
)

#table(
  columns: (0.4fr, 1fr, 1fr, 1fr),

  table.header[Month][Title][Author][Genre],
  [January], [The Great Gatsby],
    [F. Scott Fitzgerald], [Classic],
  [February], [To Kill a Mockingbird],
    [Harper Lee], [Drama],
  [March], [1984],
    [George Orwell], [Dystopian],
  [April], [The Catcher in the Rye],
    [J.D. Salinger], [Coming-of-Age],
)
