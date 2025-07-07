
#let total_headings = query(heading).len()

= Chapter 1
#lorem(10)

== Section 1.1
#lorem(5)

= Chapter 2
#lorem(12)

=== Sub-section 2.1.1
#lorem(3)

#pagebreak()

#text(12pt, weight: 700)[
  Total headings in document: #total_headings
]
