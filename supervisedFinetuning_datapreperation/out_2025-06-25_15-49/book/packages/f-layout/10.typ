
#import "@preview/drafting:0.2.2": *
#set page(height: 10em, width: 25em, margin: 1in)

#context {
  let (dx, dy) = (25%, here().position().y)
  let content-str = (
    "This absolutely-placed box will originate at (" + repr(dx) + ", " + repr(dy) + ")"
    + " in page coordinates (relative to the content area)"
  )
  absolute-place(
    dx: dx, dy: dy,
    rect(
      fill: green.lighten(60%),
      radius: 0.5em,
      width: 2.5in,
      height: 0.5in,
      [#align(center + horizon, content-str)]
    )
  )
}
#v(1in) // Add vertical space to show document flow continues below the absolute element.
