
#let styled-box(content, ..box-styles) = {
  box(..box-styles.named(), content)
}

#stack(dir: ltr, spacing: 1em,
  #styled-box(
    fill: blue.lighten(80%),
    stroke: 1pt + blue,
    width: 80pt,
    height: 40pt,
    radius: 5pt,
    align(center + middle, [Hello])
  ),
  #styled-box(
    fill: red.lighten(80%),
    stroke: 2pt + red,
    width: 60pt,
    height: 60pt,
    align(center + middle, [World!])
  )
)

// Example of conditional styling using a variable
#let is-important = true

#styled-box(
  if is-important {
    (fill: yellow.lighten(80%), stroke: 2pt + yellow)
  } else {
    (fill: gray.lighten(90%), stroke: 0.5pt + gray)
  },
  width: 120pt,
  height: 50pt,
  align(center + middle, [
    #if is-important {*Important*} else {Regular}
  ])
)
