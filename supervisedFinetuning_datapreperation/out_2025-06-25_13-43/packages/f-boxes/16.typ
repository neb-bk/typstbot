
#import "@preview/showybox:2.0.1": showybox

#showybox(
  title: "Example with Image",
  frame: (
    border-color: purple,
    title-color: purple.lighten(50%),
    body-color: purple.lighten(90%)
  )
)[
  Here is an illustration related to the topic:
  #align(center)[#image("../../../image.png", width: 60%)]
  This image visually represents the concept discussed in the text.
]
