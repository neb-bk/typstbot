
#set page("a5", margin: (x: 2.5cm, y: 3cm))
#set page(header: context {
  let matches = query(<big-table>)
  let current = counter(page).get()
  let has-table = matches.any(m =>
    counter(page).at(m.location()) == current
  )

  if not has-table [
    _My Dynamic Header_
    #h(1fr)
    General Content
  ]
})

#lorem(100)
#pagebreak()

= Big Table Section
#table(
  columns: 2 * (1fr,),
  [A], [B],
  [C], [D],
) <big-table>

#pagebreak()
#lorem(50)
