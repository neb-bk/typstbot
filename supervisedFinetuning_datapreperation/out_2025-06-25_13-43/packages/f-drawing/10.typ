
// Import specific functions (canvas) and entire modules (draw)
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  // Now 'draw' is available as a module, and 'canvas' is available directly if needed
  import draw: *
  line((0,0), (1,1), stroke: red)
  circle((0.5,0.5), radius: 0.2, fill: blue)
})

// Alternative: import everything from draw directly
#import "@preview/cetz:0.3.4"
#cetz.canvas(length: 1cm, {
  import cetz.draw: *
  line((1,0), (2,1), stroke: green)
})
