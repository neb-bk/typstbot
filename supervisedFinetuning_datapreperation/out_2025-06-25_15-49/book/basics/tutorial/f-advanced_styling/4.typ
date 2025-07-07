
#let framify(object) = rect(object, stroke: orange)

#show: framify

Framed text.

// It's the same result if you use an arrow function:
#show: a => framify(a)

Double-framed.
