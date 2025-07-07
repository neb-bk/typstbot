
#set heading(numbering: "1.1")

#set page(footer: (
  align(end, context {
    // Query for the closest heading *before* the current position on the page.
    // `here()` provides the current location context.
    let current_heading = query(selector(heading).before(here()), limit: 1).first()

    if current_heading != none {
      // Get the counter value for that specific heading's location
      let heading_number = counter(heading).at(current_heading.location()).first()
      let heading_text = current_heading.body
      [Page #page.number - Section #heading_number.repr().join(".") #heading_text]
    } else {
      // If no heading is found before the current position (e.g., on title page)
      [Page #page.number]
    }
  })
))

= Introduction
#lorem(40)

= Methods
#lorem(50)

== Sub-Method A
#lorem(30)

== Sub-Method B
#lorem(30)

= Results
#lorem(60)
