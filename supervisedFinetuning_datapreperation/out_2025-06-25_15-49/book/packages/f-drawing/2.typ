
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *
  let (p1, p2, p3, p4) = ((0,0), (1,1), (2,0), (1,-1))
  line(p1, p2, p3, p4, stroke: blue + 2pt) // Draws a polyline in blue with 2pt thickness
  circle(p1, radius: .1, fill: red) // Mark the start
  circle(p4, radius: .1, fill: green) // Mark the end
})
