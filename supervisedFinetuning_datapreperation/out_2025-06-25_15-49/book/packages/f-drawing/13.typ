
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *
  rect((0,0), (2,1), name: "r", stroke: red) // A rectangle named 'r'
  circle("r.center", radius: .1, fill: black) // Circle at the center of 'r'
  circle("r.top-left", radius: .1, fill: blue) // Circle at the top-left corner of 'r'
  line("r.bottom", "r.top", stroke: green + 1pt) // Draw a line between bottom-center and top-center of 'r'
  content("r.bottom-right", anchor: "top-left", pad(left: .2em, [Bottom Right!])) // Text label
})
