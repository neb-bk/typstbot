
#let warning(body, important: false) = {
  set text(red) if important
  [⚠️ #body]
}

#warning[This is a regular note.]
#warning(important: true)[This is a critical warning!]
