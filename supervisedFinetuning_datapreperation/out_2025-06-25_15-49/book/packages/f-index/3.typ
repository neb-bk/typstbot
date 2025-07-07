
#import "@preview/cetz:0.3.4": canvas, draw

#set page(width: auto, height: auto, margin: .5cm)

#let blue-fill-red-dashed-stroke = (fill: blue, stroke: (paint: red, dash: "long-dash", thickness: 1pt))

#canvas({
  import draw: *

  // Apply the custom style to a rectangle
  set-style(blue-fill-red-dashed-stroke)
  draw.rect((0, 0), (3, 2))

  // You can also apply style directly to a drawing command if it supports it
  // For instance, if draw.circle had a style parameter:
  // draw.circle((5, 1), 1, style: (fill: aqua, stroke: green))

  // Draw another rectangle with a default style or modified style
  set-style(fill: luma(200), stroke: black)
  draw.rect((4, 0), (7, 2))
})
