
#import "@preview/cetz:0.3.4": canvas, draw
#import "@preview/cetz-plot:0.1.1": plot

#set page(width: auto, height: auto, margin: .5cm)

#let f1(x) = calc.sin(x)
#let fn = (
  ($ x - x^3"/"3! $, x => x - calc.pow(x, 3)/6),
)

#canvas({
  import draw: *

  set-style(axes: (stroke: .5pt, tick: (stroke: .5pt)))

  plot.plot(size: (12, 8),
    x-tick-step: calc.pi/2,
    y-tick-step: 2, y-min: -2.5, y-max: 2.5,
    {
      let domain = (-1.1 * calc.pi, +1.1 * calc.pi)

      for ((title, f)) in fn {
        plot.add-fill-between(f, f1, domain: domain,
          style: (stroke: 1pt + red, fill: luma(100%) + blue.lighten(70%)), label: title) // Modified line
      }
      plot.add(f1, domain: domain, label: $ sin x  $,
        style: (stroke: black))
    })
})
