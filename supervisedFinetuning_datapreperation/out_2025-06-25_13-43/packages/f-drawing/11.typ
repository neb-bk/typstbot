
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *

  // Draw a simple line
  line((0,0), (2,1), stroke: black)
  // Add an arrow mark at the end of the line
  mark((0,0), (2,1), symbol: ">", fill: black)

  // Draw another line with a custom mark
  line((0,1.5), (2,0.5), stroke: blue)
  mark((0,1.5), (2,0.5), symbol: "|", fill: blue) // A vertical bar at the end

  // You can also add marks at both ends or the middle
  line((0,3), (2,3), stroke: red)
  mark((0,3), (2,3), symbol: ("<", ">"), fill: red) // Arrows at both ends
})
