
#import "@preview/cetz:0.3.4"

#import cetz.plot
#plot.plot(size: (3,2), x-tick-step: 1, y-tick-step: 1, {
  let z(x, y) = {
    (1 - x/2 + calc.pow(x,5) + calc.pow(y,3)) * calc.exp(-(x*x) - (y*y))
  }
  plot.add-contour(x-domain: (-2, 3), y-domain: (-3, 3),
    z, z: (.1, .4, .7), fill: true)
})
