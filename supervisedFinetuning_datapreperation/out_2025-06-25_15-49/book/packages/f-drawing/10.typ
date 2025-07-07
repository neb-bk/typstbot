
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *
  // Draw an ellipse with x-radius 1.5cm and y-radius 3cm centered at (0,0)
  circle((0,0), radius:(1.5, 3), stroke: teal + 1.5pt)
  // Draw a regular circle for comparison
  circle((3,0), radius: 1.5, stroke: orange + 1.5pt, dash: "dotted")
  content((0, -3.5), text(fill: teal)[Ellipse], anchor:"north")
  content((3, -2), text(fill: orange)[Circle], anchor:"north")
})
