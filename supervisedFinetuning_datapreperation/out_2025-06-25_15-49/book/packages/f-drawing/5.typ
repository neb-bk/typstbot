
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *
  intersections(name: "demo", {
    circle((0, 0))
    bezier((0,0), (3,0), (1,-1), (2,1))
    line((0,-1), (0,1))
    rect((1.5,-1),(2.5,1))
  })
  for-each-anchor("demo", (name) => {
    circle("demo." + name, radius: .1, fill: black) // Mark each intersection point
  })
})
