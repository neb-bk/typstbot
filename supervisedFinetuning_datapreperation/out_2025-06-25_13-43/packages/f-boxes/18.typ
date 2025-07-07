
#import "@preview/showybox:2.0.1": showybox

#showybox(
  title: "Tip 1: Use Variables!",
  frame: (
    border-color: teal.darken(20%),
    title-color: teal.lighten(60%),
    body-color: teal.lighten(90%)
  )
)[
  Define common values as variables to easily update them document-wide. For example, `#let accent = blue.darken(20%)`.
]

#showybox(
  title: "Tip 2: Structure with Sections!",
  frame: (
    border-color: olive.darken(20%),
    title-color: olive.lighten(60%),
    body-color: olive.lighten(90%)
  ),
  shadow: (
    offset: 2pt,
    color: olive.lighten(70%)
  )
)[
  Organize your document with `#heading` and `#figure` elements for better readability and automatic numbering.
]

#showybox(
  title: "Tip 3: Preview Regularly!",
  frame: (
    border-color: maroon.darken(20%),
    title-color: maroon.lighten(60%),
    body-color: maroon.lighten(90%)
  ),
  footer: "Happy Typsting!"
)[
  Always use the live preview feature to see changes as you type. It saves a lot of time!
]
