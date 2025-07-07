
#import "@preview/tablex:0.0.6": tablex, hlinex
#import "@preview/tablem:0.2.0": tablem

#let three-line-table = tablem.with(
  render: (columns: auto, ..args) => {
    tablex(
      columns: columns,
      auto-lines: false, // Disable default lines
      align: center + horizon,
      hlinex(y: 0), // Top line
      hlinex(y: 1), // Line after header
      ..args, // Pass through other arguments (like cell content)
      hlinex(), // Bottom line
    )
  }
)

#text(1.2em)[Custom Three-Line Table]
#three-line-table[
  | *Fruit* | *Color* | *Taste* |
  | ------- | ------- | ------ |
  | Apple   | Red     | Sweet  |
  | Lemon   | Yellow  | Sour   |
  | Berry   | Blue    | Tart   |
]
