
#let important-paragraph(content, is-important: false) = {
  set text(red) if is-important
  content
}

#important-paragraph[This is important!]
#important-paragraph(is-important: true)[This is also important!]
#important-paragraph[This is not important.]
