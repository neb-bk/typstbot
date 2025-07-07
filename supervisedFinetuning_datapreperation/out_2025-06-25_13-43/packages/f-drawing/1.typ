
#import "@preview/cetz:0.3.4"

#cetz.canvas(length: 1cm, {
  // Drawing commands go here
  import cetz.draw: *
  circle((0,0), radius: 0.5, fill: blue)
  line((-1, -1), (1, 1), stroke: red)
})
