
// template.typ
#let apply-my-template(body) = [
  #show heading.where(level: 1): text(red)
  #set page(margin: 1in)
  #body
]


// main.typ
#import "template.typ": apply-my-template
#show: apply-my-template

#set text(font: "Linux Libertine O")
= My Document Title
This is some content in the main document.
