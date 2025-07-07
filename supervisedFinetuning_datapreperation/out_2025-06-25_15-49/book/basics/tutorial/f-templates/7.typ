
// document-layout.typ
#let document-layout(body, header-content: none) = {
  set page(margin: 1in)
  set text(font: "New Computer Modern")

  // Include the header content if provided
  if header-content != none {
    align(center, header-content)
    line(length: 100%)
    v(1em)
  }

  body
}


// main.typ
#import "document-layout.typ": document-layout

#show: document-layout.with(header-content: [
  #text(2em, "My Awesome Document") \\
  #text(0.8em, upper("Confidential - For Internal Use"))
])

= Introduction
This is the main body of the document.
It follows the custom header.

#lorem(30)
