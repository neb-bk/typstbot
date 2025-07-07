
#import "@preview/pinit:0.2.2": *
#set page(height: 5em, width: 20em)
#set text(size: 16pt)

Point #pin("A")One and Point #pin("B")Two.
#pinit-line(stroke: 2pt + red, start-dy: 0.5em, end-dy: 0.5em, "A", "B")
