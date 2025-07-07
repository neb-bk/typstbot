
#import "@preview/showybox:2.0.1": showybox

#showybox(
  title: "Information",
  frame: (
    border-color: blue.darken(30%),
    title-color: blue.lighten(30%),
    body-color: blue.lighten(95%)
  ),
  title-style: (
    color: blue.darken(50%),
    weight: "bold"
  ),
  body-style: (
    color: black
  )
)[
  #image("../../../image.png", width: 1.5em) This box provides general information relevant to the current topic. Please read carefully.

  #lorem(20)
]
