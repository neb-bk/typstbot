
#import "@preview/cetz:0.3.4"

#cetz.canvas(length: 1cm, {
  import cetz.draw: *
  import cetz.angle: angle
  let (a, b, c) = ((0,0), (-1,1), (1.5,0))

  line(a, b, stroke: black)
  line(a, c, stroke: black)

  // Draw angle at 'a' between 'c' and 'b', with a blue stroke and custom label.
  // The mark 'end: ">"' adds an arrow.
  set-style(angle: (radius: 1, label-radius: .5), stroke: blue)
  angle(a, c, b, label: $alpha$, mark: (end: ">", fill: blue), stroke: blue)

  // Draw angle at 'b' between 'a' and 'c', with red stroke, inside the angle, and a dynamic label.
  set-style(stroke: red)
  angle(a, b, c, label: n => $#{n/1deg} degree$,
    mark: (end: ">", fill: red), stroke: red, inner: false)
})
