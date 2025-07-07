
#set page(
  "a5", 
  margin: (x: 2.5cm, y: 3cm),
  header: [
    _My Typst Document_
    #h(1fr)
    John Doe
  ],
  footer: context [
    #h(1fr)
    #counter(page).display("1")
    #h(1fr)
  ]
)

#lorem(150)
#pagebreak()
#lorem(100)
