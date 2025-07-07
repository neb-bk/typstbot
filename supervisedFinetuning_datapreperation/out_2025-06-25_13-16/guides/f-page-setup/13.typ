
// Produce a book bound on the right, even though it is set in English.
#set page(binding: right, margin: (inside: 2.5cm, outside: 2cm, y: 1.75cm))
#set text(lang: "en")

#lorem(100) // Page 1: inside margin on the right
#pagebreak()
#lorem(100) // Page 2: inside margin on the left
