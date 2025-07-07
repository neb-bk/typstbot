
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *
  set-style(stroke: blue + 1pt, fill: aqua.lighten(70%)) // Global style

  circle((0,0), radius: .5) // Uses global style (blue stroke, light aqua fill)
  rect((1,0), (2,1), stroke: red + 3pt, fill: yellow) // Overrides stroke and fill locally for this rect
  circle((3,0), radius: .5) // Back to global style (blue stroke, light aqua fill)
})
