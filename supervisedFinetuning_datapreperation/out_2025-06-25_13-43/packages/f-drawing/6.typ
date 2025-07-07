
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *

  // Group elements and name the group "g"
  group(name: "g", {
    // Rotate the coordinates system by 45 degrees for elements within this group
    rotate(45deg)
    // Draw a rectangle within the rotated coordinate system, name it "r"
    rect((0,0), (1,1), name: "r", stroke: orange, fill: orange.lighten(70%))
    // Copy anchors from "r" to "g"'s coordinate system. 
    // Now "g.top", "g.bottom", etc. refer to the transformed rectangle's anchors.
    copy-anchors("r")
  })

  // Access an anchor of the transformed rectangle through the group name
  circle("g.top", radius: .1, fill: black)
  circle("g.bottom", radius: .1, fill: black)
})
