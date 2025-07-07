
#let my-rect-style = (
  width: 100pt,
  height: 50pt,
  fill: red.lighten(60%),
  stroke: 2pt + red,
  radius: 5pt,
)

#stack(dir: ltr, spacing: 1em,
  #rect(..my-rect-style, [
    Styled Rectangle 1
  ]),
  #rect(..my-rect-style, fill: blue.lighten(60%), stroke: 2pt + blue, [
    Styled Rectangle 2
  ]) // Override some parameters
)
