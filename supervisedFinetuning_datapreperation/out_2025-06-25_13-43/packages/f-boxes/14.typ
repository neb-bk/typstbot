
#import "@preview/showybox:2.0.1": showybox

#showybox(
  title: "Warning! Proceed with Caution",
  frame: (
    border-color: yellow.darken(30%),
    title-color: yellow.darken(10%),
    body-color: yellow.lighten(90%)
  ),
  title-style: (
    color: black,
    weight: "bold"
  ),
  body-style: (
    color: black
  )
)[
  #lorem(30)
  Be aware that this section contains experimental information that may change in future versions. Use at your own risk.
]
