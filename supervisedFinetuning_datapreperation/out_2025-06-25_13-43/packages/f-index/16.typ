
#import "@preview/cetz:0.3.4": canvas
#import "@preview/cetz-plot:0.1.1": plot

#set page(width: auto, height: auto, margin: .5cm)

// Define the linear function
#let linear_f(x) = 2 * x

#canvas({
  plot.plot(size: (10, 7), // Set plot size
    x-min: -5, x-max: 5, x-tick-step: 1,
    y-min: -10, y-max: 10, y-tick-step: 2,
    legend: "top-left",
    {
      let domain = (-5, 5) // Define the plot domain

      // Add the linear function to the plot
      plot.add(linear_f, domain: domain, label: $ 2x $,
        style: (stroke: 2pt + blue) // Style the line
      )
    }
  )
})
