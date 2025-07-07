
#let text-params = (fill: blue, size: 0.8em, weight: "bold")

#set text(font: "New Computer Modern", weight: "regular") // Default text settings

Some regular text. #text(..text-params)[This text is styled using spread parameters.].

And some more regular text.
