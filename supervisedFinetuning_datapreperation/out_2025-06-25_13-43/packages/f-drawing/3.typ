
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *
  let (a, b, c) = ((0, 0), (1, 1), (2, -1))

  // Explicit Bézier curve with two control points
  // bezier(start, ctrl1, ctrl2, end)
  bezier((0, -0.5), (0.5, 0.5), (1.5, -1.5), (2, -0.5), stroke: purple, name: "my-bezier")

  // Bézier curve passing through points a, b, c. Name it "b" to access control points.
  bezier-through(a, b, c, name: "b", stroke: black)

  // Show calculated control points for the bezier-through curve
  // They are named "b.ctrl-1" and "b.ctrl-2"
  line(a, "b.ctrl-1", stroke: gray + 0.5pt, dashes: (2pt, 2pt))
  circle("b.ctrl-1", radius: 0.05, fill: gray)
  line(c, "b.ctrl-2", stroke: gray + 0.5pt, dashes: (2pt, 2pt))
  circle("b.ctrl-2", radius: 0.05, fill: gray)
})
