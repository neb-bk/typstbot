
#import "@preview/drafting:0.2.2": *
#import "@preview/colorful-boxes:1.1.0": stickybox

#let (l-margin, r-margin) = (1in, 2in)
#set page(margin: (left: l-margin, right: r-margin, rest: 0.1in))
#set-page-properties(margin-left: l-margin, margin-right: r-margin)

#let custom-sticky-rect(stroke: none, fill: none, width: 0pt, content) = {
  // The stroke and fill from the margin-note call can be ignored or used
  stickybox(rotation: 20deg, width: width/1.5, fill: fill.mix(yellow, 80%), content)
}
#set-margin-note-defaults(rect: custom-sticky-rect, stroke: none, side: right, fill: yellow)

#lorem(20)
#margin-note(dy: -25pt)[This note now looks like a sticky note!]
