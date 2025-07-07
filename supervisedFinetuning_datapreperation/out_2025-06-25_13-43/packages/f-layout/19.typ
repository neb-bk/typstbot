
#import "@preview/droplet:0.3.1": dropcap

#set text(size: 12pt)
#dropcap(
  height: 2,
  gap: 6pt,
  transform: letter => context {
    let height = measure(letter).height // Measure the letter's actual height

    grid(columns: (auto, 1fr), gutter: 6pt,
      align(center + horizon, text(blue, size: 2em, letter)), // Make letter bigger and blue
      // Use "place" to avoid influencing line height calculation for the line
      place(horizon, line(
        angle: 90deg,
        length: height + 6pt, // Line length based on letter height
        stroke: blue.lighten(40%) + 1pt
      )),
    )
  }
)[
  #lorem(42)
]
