
// main.typ

#import "template.typ": *
#show: template
= Document Title

#show emph: set text(blue)

#include("chapters/chapter_1.typ")


// template.typ

#let template = doc => {
  set page(header: [My Document])
  show emph: set text(blue)
  doc
}
