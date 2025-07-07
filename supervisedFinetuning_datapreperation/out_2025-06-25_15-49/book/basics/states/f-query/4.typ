
#set text(10pt)

#text(red)[This is red text.]
#text(blue)[This is blue text.]
#text(red)[Another red text here.]

#let red_texts = query(selector(it => it.func() == text and it.fill == red))

#v(1em)
#box(fill: lightblue, inset: 5pt, [
  Found #red_texts.len() red text elements.
])

#for loc in red_texts {
  #let element_body = loc.body
  - Red text content: #repr(element_body)
}
