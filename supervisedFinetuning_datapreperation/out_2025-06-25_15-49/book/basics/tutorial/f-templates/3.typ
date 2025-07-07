
// template.typ
#let custom-template(body, doc-title: none) = {
  set text(font: "Georgia", size: 12pt)
  set heading(numbering: "1.")

  if doc-title != none {
    align(center, text(doc-title, size: 2em, weight: "bold"))
    pagebreak()
  }

  body
}


// main.typ
#import "template.typ": custom-template

// Apply the template, passing the 'doc-title' argument
#show: custom-template.with(doc-title: "My Custom Project Report")

= Introduction
This is the first section of the report.

== Section A
More content here.
