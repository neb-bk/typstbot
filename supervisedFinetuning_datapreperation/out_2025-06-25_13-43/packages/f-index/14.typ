
#import "@preview/cetz:0.3.4": canvas, draw
#import "@preview/cetz-plot:0.1.1": plot

#set page(width: auto, height: auto, margin: .5cm)

#let f1(x) = calc.sin(x)

#canvas({
  import draw: *

  plot.plot(size: (10cm, 6cm), // Modified line
    x-tick-step: calc.pi/2,
    x-format: plot.formats.multiple-of,
    y-tick-step: 2, y-min: -2.5, y-max: 2.5,
    legend: "inner-north",
    {
      let domain = (-1.1 * calc.pi, +1.1 * calc.pi)
      plot.add(f1, domain: domain, label: $ sin x  $, style: (stroke: black))
    })
})
