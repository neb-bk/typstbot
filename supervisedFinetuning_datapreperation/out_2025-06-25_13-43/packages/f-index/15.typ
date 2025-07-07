
#import "@preview/cetz:0.3.4": canvas

#set page(width: auto, height: auto, margin: .5cm)

#canvas({
  // Only canvas is available, draw functions would need to be prefixed with 'draw.'
  // if the 'draw' module were also imported, e.g., #import "@preview/cetz:0.3.4": draw
  // For instance, if you wanted to draw a rectangle: draw.rect(width: 1cm, height: 1cm)
})
