
#set page(
  paper: "a5", 
  margin: (x: 2.5cm, y: 3cm),
  header: context {
    if counter(page).get().first() > 1 [
      _Lisa Strassner's Thesis_
      #h(1fr)
      National Academy of Sciences
    ]
  }
)

#lorem(100) // Content for the first page (no header)
#pagebreak()
#lorem(100) // Content for the second page (with header)
#pagebreak()
#lorem(100) // Content for the third page (with header)
