
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *

  let p1 = (0,0)
  let p2 = (2,1)
  let p3 = (1,-1)

  circle(p1, radius: 0.1, fill: red, name: "point1")
  circle(p2, radius: 0.1, fill: blue, name: "point2")
  circle(p3, radius: 0.1, fill: green, name: "point3")

  // Label point1 to its right (east), padded by 0.5em
  content("point1", anchor: "east", pad(right: 0.5em, text(fill: red)[Point A]))

  // Label point2 to its left (west), padded by 0.5em
  content("point2", anchor: "west", pad(left: 0.5em, text(fill: blue)[Point B]))

  // Label point3 below it (south)
  content("point3", anchor: "south", text(fill: green)[Point C])

  // Add a general title at the top center of the canvas
  content((1, 1.5), anchor: "center", text(size: 1.2em, weight: "bold")[My Labeled Points])
})
