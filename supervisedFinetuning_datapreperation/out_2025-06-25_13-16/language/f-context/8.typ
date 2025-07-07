
#set page(footer: context {
  let current-location = here()

  // Find the last heading before or at the current location
  let current-heading = query(heading, before: current-location).last()

  // Check if we are on the TOC page (example: using a label for TOC)
  // This would be more complex and might involve checking page ranges
  let is-toc-page = locate(<toc-start>).page <= current-location.page and locate(<toc-end>).page >= current-location.page

  if is-toc-page {
    align(center, "Table of Contents")
  } else if current-heading != none {
    // Display the content of the heading
    align(center, current-heading.body)
  } else {
    // Default text for pages without a preceding heading
    align(center, "No Section")
  }
})

#outline()
#label(<toc-start>) // Mark start of TOC for conceptual check
#lorem(20)
#label(<toc-end>) // Mark end of TOC

#pagebreak()

= Introduction
#lorem(50)

#pagebreak()

= Chapter 1: The Basics
#lorem(50)
