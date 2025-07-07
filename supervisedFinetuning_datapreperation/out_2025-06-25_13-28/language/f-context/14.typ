
#set page(header: locate(it => [
  #set text(size: 10pt, fill: gray)
  #align(right, "Page " + repr(it.page()))
  #context {
    let heading_num = counter(heading).get()
    if heading_num.len() > 0 {
      // Display the most specific heading number (e.g., 1.1 or 2.)
      [#h(1em) Section: #heading_num.map(str).join(".") ]
    }
  }
]))

#set heading(numbering: "1.1")

= Introduction
#lorem(50)

= First Section
#lorem(50)

== Subsection A
#lorem(50)

#pagebreak()

= Second Section
#lorem(50)

== Subsection B
#lorem(50)
