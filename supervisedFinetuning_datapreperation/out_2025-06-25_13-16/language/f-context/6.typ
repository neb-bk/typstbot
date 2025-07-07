
#set text(lang: "de") // Outer most style
#context [
  #set text(lang: "fr") // Style applied inside outer context
  #text.lang // This `text.lang` is part of the outer context, doesn't see 'fr'
  #context text.lang // This inner `context` sees 'fr'
]


#let c = counter("mycounter")
#c.update(1)
#context [
  #c.update(2) // Update inside outer context
  #c.display() // This will display '1' (from outer context's view before the update)\
  #context c.display() // This inner context will display '2' (after the update)
]
