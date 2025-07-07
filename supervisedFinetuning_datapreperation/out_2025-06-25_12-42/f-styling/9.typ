
#let important-text(content, is-important: false) = {
  set text(red) if is-important
  content
}

Important: #important-text["This text is important.", is-important: true]
Not Important: #important-text["This text is not important."]
