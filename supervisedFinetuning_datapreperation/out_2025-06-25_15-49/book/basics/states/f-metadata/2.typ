
// Define some metadata
#metadata("This is a secret note.") <secret-note>

// Somewhere else in the document, retrieve and display it.
#set text(fill: gray, size: 0.8em)
Note to Self: #context {
  query(<secret-note>).first().value
}

#pagebreak()

#metadata("Application Version: 2.1.0") <app-version>

This document was generated using Application Version: #context {
  query(<app-version>).first().value
}
