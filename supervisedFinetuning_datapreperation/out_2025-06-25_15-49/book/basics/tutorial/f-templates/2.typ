
#let markup-template(body) = [
  #show heading.where(level: 1): underline
  #set text(font: "serif")
  #body
]


#let script-template(body) = {
  show heading.where(level: 1): underline
  set text(font: "serif")
  body // body is a content block, so it doesn't need # here
}
