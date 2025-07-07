
#set text(size: 12pt) // Set a base font size for the document
Normal text. #box(stroke: red, baseline: 40%, height: 2em, width: 2em) Text next to a box that is 2em by 2em, relative to the current font size.

#set rect(height: 1em) // For comparison in a table
#table(
  columns: 2,
  [Centimeters], rect(width: 2.54cm),
  [Relative to font size], rect(width: 6.5em)
)
