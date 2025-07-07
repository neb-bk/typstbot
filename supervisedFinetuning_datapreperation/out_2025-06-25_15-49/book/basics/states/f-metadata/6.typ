
// Define the document version as metadata
#metadata("1.0.0-beta") <doc-version>

#set page(footer: [
  #set text(size: 0.7em, fill: gray)
  #align(right)[
    Document Version: #context { query(<doc-version>).first().value }
  ]
])

= My Awesome Document

This document covers various topics and is currently in its beta phase.

It is important to understand that information presented here might be subject to change.

#lorem(30)

#pagebreak()

#lorem(50)

