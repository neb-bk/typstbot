
#import "@preview/tada:0.2.0": TableData, to-tablex
#import "@preview/tablex:0.0.6": tablex, hlinex

#let column-data = (
  city: ("Tokyo", "London", "Paris"),
  country: ("Japan", "UK", "France"),
  population: (13.9, 8.9, 2.1),
)

#let city-td = TableData(data: column-data)
#let city-tablex = to-tablex(city-td)

// Apply the three-line table styling directly to the tablex object
#text(1.2em)[City Data with Three-Line Style]
#tablex(
  columns: city-tablex.columns,
  align: center + horizon,
  auto-lines: false,
  hlinex(y: 0),
  hlinex(y: 1),
  city-tablex.body,
  hlinex(),
)
