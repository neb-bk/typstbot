
#let foo() = 1em.to-absolute()

#set text(size: 20pt)
#context {
  // foo() needs context to convert '1em' to an absolute length based on current text size.
  // This expression checks if 1em (absolute) equals the current text size.
  foo() == text.size
}

#set text(size: 10pt)
#context {
  foo() == text.size
}
