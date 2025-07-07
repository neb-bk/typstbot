
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *
  let (start, cp1, cp2, end) = ((0,0), (1,2), (3,-1), (4,1))
  bezier(start, cp1, cp2, end, stroke: red + 1pt)
  // Optionally visualize control points and lines
  circle(start, radius: .05, fill: black, name: "start")
  circle(end, radius: .05, fill: black, name: "end")
  circle(cp1, radius: .05, fill: blue, name: "cp1")
  circle(cp2, radius: .05, fill: green, name: "cp2")
  line(start, cp1, stroke: gray.lighten(70%), dash: "dotted")
  line(end, cp2, stroke: gray.lighten(70%), dash: "dotted")
  content("cp1", anchor: "south", pad(top: .2em, text("CP1")))
  content("cp2", anchor: "south", pad(top: .2em, text("CP2")))
})
