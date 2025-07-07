
#import "@preview/colorful-boxes:1.2.0": outlinebox

#outlinebox(
  title: "Auto Width, Centered",
  color: orange,
  width: auto,
  centering: true
)[
  This box adjusts its width automatically and centers its content.
]

#outlinebox(
  title: "Fixed Width, Left-aligned",
  color: green,
  width: 10cm,
  centering: false
)[
  This box has a fixed width and its content is left-aligned.
]
