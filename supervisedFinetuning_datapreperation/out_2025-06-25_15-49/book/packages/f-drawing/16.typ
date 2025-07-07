
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *
  // Draw a rectangle from (0,0) to (2,1)
  rect((0,0), (2,1), stroke: red + 1pt, fill: red.lighten(80%))

  // Draw a path combining lines and curves
  path(
    (3,0), // MoveTo: Start point of the path
    "L", (4,1), // LineTo: Draw a line to (4,1)
    "C", (5,2), (6,-1), (7,0), // CurveTo: Draw a Bezier curve to (7,0) with control points (5,2) and (6,-1)
    "Z", // ClosePath: Close the path back to the start point of the subpath
    stroke: blue + 1.5pt, fill: blue.lighten(80%)
  )
})
