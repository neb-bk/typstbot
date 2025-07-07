
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *
  intersections(name: "demo", {
    circle((0, 0), radius: 1.5, stroke: blue)
    bezier((0,0), (3,0), (1,-1), (2,1), stroke: red)
    line((0,-1), (0,1), stroke: green)
    rect((1.5,-1),(2.5,1), stroke: orange)
  })
  for-each-anchor("demo", (name) => {
    // Mark each intersection point with a small black circle
    circle("demo." + name, radius: .1, fill: black)
  })
})
