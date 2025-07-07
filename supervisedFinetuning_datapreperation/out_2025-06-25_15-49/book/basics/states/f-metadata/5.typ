
// Define multiple metadata entries early in the document
#metadata("Document Author: Alice Smith") <author-info>
#metadata("Last Modified: 2023-10-27") <mod-date>
#metadata("Status: Approved") <doc-status>

= My Typst Document

This is the main content of my document. It contains various sections and information.

#pagebreak()

#set text(size: 0.9em, font: "CMU Serif")

#align(right)[_Generated Information_]
#v(0.5em)

#set par(justify: true)

// Retrieve and display the author info
Author: #context {
  query(<author-info>).first().value
}

// Retrieve and display the modification date
Modified On: #context {
  query(<mod-date>).first().value
}

// Retrieve and display the document status
Approval Status: #context {
  query(<doc-status>).first().value
}
