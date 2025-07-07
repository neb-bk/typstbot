
#set page(margin: 2cm) // Set some margins to show the effect

#rule-grid(
  width: 100%, // Span full page width
  height: 100%, // Span full page height
  spacing: 1cm,
  stroke: luma(85%),
  relative: false // Crucial for absolute page positioning
)

#lorem(50) // Content will flow over the grid
#absolute-place(
  dx: 1cm, dy: 1cm,
  rect(fill: red.lighten(70%), width: 5cm, height: 2cm, "Absolute top-left")
)
