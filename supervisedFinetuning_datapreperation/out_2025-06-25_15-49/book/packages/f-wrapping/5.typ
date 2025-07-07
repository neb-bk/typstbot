
#import "@preview/wrap-it:0.1.1": wrap-content

// Set paragraph justification for better text flow
#set par(justify: true)

// Define a custom figure with a teal rounded rectangle
#let custom_fig = figure(
  rect(fill: teal, radius: 0.5em, width: 8em),
  caption: [My Custom Wrapped Figure],
)

// Define placeholder text content
#let text_content = lorem(50)

// Wrap the text around the figure, aligning the figure to the right
#wrap-content(
  custom_fig,
  text_content,
  align: right,
  column-gutter: 1.5em
)

#v(2em) // Add some vertical space

// Another example: wrapping a boxed figure to the bottom-left
#let boxed_fig = box(custom_fig, inset: 0.5em, stroke: 1pt red)
#wrap-content(
  boxed_fig,
  lorem(60),
  align: bottom + left,
  column-gutter: 1em
)
