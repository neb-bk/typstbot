
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *
  circle((0,0), radius: .2, fill: blue, name: "center")
  content("center", anchor: "south", pad(top: .5em, text(fill: blue)[Center Point]))

  rect((1,1), (2,2), name: "box", stroke: black)
  content("box.top-right", anchor: "west", pad(right: .5em, text("Corner Label")))
})
