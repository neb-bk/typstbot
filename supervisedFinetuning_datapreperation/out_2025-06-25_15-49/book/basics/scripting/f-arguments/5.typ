
#let dynamic-styled-content(content, ..styles) = {
  // Spread the named arguments from 'styles' directly into set text
  #set text(..styles.named())
  #block(content)
}

#dynamic-styled-content(
  [This block is styled with a custom font and color.],
  font: "EB Garamond",
  fill: red,
  size: 1.1em
)

#dynamic-styled-content(
  [This one has a different look!],
  fill: blue,
  weight: "bold",
  stroke: (paint: green, thickness: 0.5pt)
)
