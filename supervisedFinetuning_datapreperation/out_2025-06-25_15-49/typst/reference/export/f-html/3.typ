
#let document(body) = {
  // Check the current export target
  if target == html {
    // Output raw HTML when exporting to HTML
    html.elem("h1", "Welcome to my HTML document!")
    html.elem("p", [This content is optimized for web viewing. Visit our website for more details.])
  } else {
    // Output regular Typst content for other formats (e.g., PDF)
    #set text(font: "Linux Libertine", size: 12pt)
    #align(center)[= Welcome to my Typst Document!]
    This content is optimized for print.
  }
  body
}

#document(
  [
    This is some shared content that appears in both versions.
    You can add sections and paragraphs here.
  ]
)
