
#import "@preview/cetz:0.3.4"

#cetz.canvas(length: 1cm, {
  import cetz.draw: * // Import all drawing functions
  line((0,0), (2,1)) // Draws a line from (0,0) to (2,1)
})
