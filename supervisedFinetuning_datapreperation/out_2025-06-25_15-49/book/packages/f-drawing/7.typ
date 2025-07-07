
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *
  let (a, b, c) = ((0, 0), (1, 1), (2, -1))
  line(a, b, c, stroke: gray.lighten(70%)) // Original points as a polyline for reference
  bezier-through(a, b, c, name: "b", stroke: blue + 1.5pt) // Curve passing through a, b, c
  // Show calculated control points if needed
  line(a, "b.ctrl-1", "b.ctrl-2", c, stroke: gray.lighten(40%), dash: "dotted")
  circle("b.ctrl-1", radius: .05, fill: purple, name: "ctrl1")
  circle("b.ctrl-2", radius: .05, fill: orange, name: "ctrl2")
  content("ctrl1", anchor: "north", pad(bottom: .2em, "Ctrl 1"))
  content("ctrl2", anchor: "south", pad(top: .2em, "Ctrl 2"))
})
