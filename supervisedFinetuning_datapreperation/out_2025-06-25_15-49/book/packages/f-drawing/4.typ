
#import "@preview/cetz:0.3.4"

#cetz.canvas(length: 1cm, {
  import cetz.draw: *
  import cetz.angle: angle
  let (a, b, c) = ((0,0), (1,2), (3,0))
  line(a,b)
  line(a,c)
  angle(a, b, c, label: n => $#{n/1deg} degree$, mark: (size: 0pt)) // Shows angle in degrees
})
