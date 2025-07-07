
#show: rest => columns(2, rest)


#show heading.where(
  level: 1
): it => block(width: 100%)[
  #set align(center)
  #set text(12pt, weight: "regular")
  #smallcaps(it.body)
]


#show heading.where(
  level: 2
): it => text(
  size: 11pt,
  weight: "regular",
  style: "italic",
  it.body + [.],
)

// Example content
= Heading
== Small heading
#lorem(10)
== Second subchapter
#lorem(10)
= Second heading
#lorem(40)

== Second subchapter
#lorem(40)
