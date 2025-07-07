
#set page("a4", margin: 2cm, numbering: "1") // Global settings for document body

// Title page with custom settings
#page(margin: (top: 5cm, rest: 2.5cm))[
  #align(center, text(2em, weight: "bold")[My Awesome Document])
  #v(2cm)
  #align(center, [Authored by: Jane Doe])
  #v(3cm)
  #align(center, [Date: October 26, 2023])
]

// Content for the main document, starting on a new page with global settings
#pagebreak()

= Introduction
#lorem(100)
#pagebreak()
= Further Content
#lorem(100)
