
#import "@preview/droplet:0.3.1": dropcap

#dropcap(
  height: 2,
  justify: true,
  gap: 6pt,
  transform: letter => context {
    let height = measure(letter).height

    grid(columns: 2, gutter: 6pt,
      align(center + horizon, text(blue, letter)),
      // Use "place" to ignore the line's height when
      // the font size is calculated later on.
      place(horizon, line(
        angle: 90deg,
        length: height + 6pt,
        stroke: blue.lighten(40%) + 1pt
      )),
    )
  }
)[
  #lorem(42)
]
