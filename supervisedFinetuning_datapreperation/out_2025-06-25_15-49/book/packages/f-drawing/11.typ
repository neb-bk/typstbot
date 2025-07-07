
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *
  line((0,0), (2,1), stroke: black)
  mark((0,0), (2,1), symbol: ">", fill: red) // Arrow at the end of the line

  line((0,2), (2,3), name: "path2", stroke: black)
  mark("path2", symbol: "<", position: .5, fill: blue) // Arrow in the middle of the line

  line((0,4), (2,5), (4,4), name: "complex-path", stroke: black)
  mark("complex-path", symbol: "|", position: .25, fill: green) // Mark at 25% along the path
  mark("complex-path", symbol: "*", position: .75, fill: purple) // Mark at 75% along the path
})
