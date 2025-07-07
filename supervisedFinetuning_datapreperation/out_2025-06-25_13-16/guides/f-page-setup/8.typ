
// Simulate a title page that isn't explicitly numbered by Typst's counter
#set page(footer: none) // No footer on this page
#text(2em, weight: "bold")[My Document Title]
#pagebreak()

// Reset page counter to 1 for the main content
#counter(page).update(1)
#set page(footer: context [Page #counter(page).display("1")])

This is the actual page 1 of my document.
#pagebreak()
This is page 2.
#pagebreak()

// Skip 5 pages
#counter(page).update(n => n + 5)

This is page 8 (2 + 5 + 1 for current page).
#pagebreak()
This is page 9.
