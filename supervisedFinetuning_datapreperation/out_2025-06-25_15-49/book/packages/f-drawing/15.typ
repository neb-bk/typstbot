
#import "@preview/cetz:0.3.4": canvas
#import cetz.draw: line, circle // Only import line and circle functions
#import cetz.angle: angle // Only import the angle function

#canvas(length: 1cm, {
  line((0,0), (1,1), stroke: red)
  circle((0,0), radius: 0.1, fill: black)
  angle((0,0), (1,0), (0,1), label: $90\degree$, stroke: blue)
  // If you tried to use 'rect((1,1), (2,2))' here, it would cause an error 
  // because 'rect' was not explicitly imported from cetz.draw.
})
