
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *
  group(name: "g", {
    rotate(45deg) // Rotate everything inside this group
    rect((0,0), (1,1), name: "r", stroke: red) // A rectangle inside the group
    copy-anchors("r") // Makes 'r's anchors accessible via 'g' (e.g., g.top, g.bottom-left)
  })
  circle("g.top", radius: .1, fill: black) // Accessing the 'top' anchor of 'r' through 'g'
  text("g.bottom", "Rotated Rectangle", anchor: "south") // Adding text relative to a rotated anchor
  line((0,0), "g.center", stroke: gray, dash: "dotted") // Line from origin to rotated center
})
