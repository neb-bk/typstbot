
#set page(
  // ... (page setup, header, etc. as needed)
)

// Apply two-column layout to all subsequent content
#show: rest => columns(2, rest)

// Custom formatting for Level 1 headings (full width, centered, smallcaps)
#show heading.where(
  level: 1
): it => block(width: 100%)[
  #set align(center)
  #set text(12pt, weight: "regular")
  #smallcaps(it.body)
]

// Custom formatting for Level 2 headings (italic, specific size, ends with a dot)
#show heading.where(
  level: 2
): it => text(
  size: 11pt,
  weight: "regular",
  style: "italic",
  it.body + [.],
)

// Now let's fill it with words:

= Heading
== Small heading
#lorem(10)
== Second subchapter
#lorem(10)
= Second heading
#lorem(40)

== Second subchapter
#lorem(40)
