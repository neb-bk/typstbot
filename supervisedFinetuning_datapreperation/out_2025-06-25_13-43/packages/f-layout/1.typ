
#import "@preview/pinit:0.2.2": *
#set page(height: 6em, width: 20em)
#set text(size: 20pt)

This is some #pin("start-text")important content#pin("end-text") to highlight.
#pinit-highlight("start-text", "end-text", fill: aqua.lighten(70%))
