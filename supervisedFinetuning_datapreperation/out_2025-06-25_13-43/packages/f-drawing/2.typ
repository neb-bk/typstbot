
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *

  // Draw a red line from (0,0) to (2,2)
  line((0,0), (2,2), stroke: red + 1pt)

  // Draw a blue circle centered at (1,0) with radius 0.5
  circle((1,0), radius: 0.5, fill: blue.lighten(50%))

  // Draw a green rectangle from (0.5, 1.5) to (2.5, 0.5)
  rect((0.5, 1.5), (2.5, 0.5), stroke: green, fill: green.lighten(80%))
})
