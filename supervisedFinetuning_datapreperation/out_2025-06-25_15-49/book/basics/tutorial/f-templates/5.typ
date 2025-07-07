
// branded-doc-template.typ
#let branded-doc(body) = {
  // Set default font
  set text(font: "Arial")

  // Set primary heading color to blue
  show heading.where(level: 1): set text(blue)

  // Add a disclaimer at the bottom of every page
  set page(footer: align(center, small(text(gray, "Confidential document. Do not distribute."))))

  body
}


// main.typ
#import "branded-doc-template.typ": branded-doc
#show: branded-doc

= Welcome to our Branded Document
This document showcases our brand identity.

#lorem(50)

== Our Vision
We aim to innovate and lead.
