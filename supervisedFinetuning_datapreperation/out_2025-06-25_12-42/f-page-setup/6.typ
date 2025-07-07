
#set page(
  paper: "a5",
  margin: (x: 2.5cm, y: 3cm),
  header: context {
    let page-counter =
    let matches = query(<big-table>)
    let current = counter(page).get()
    let has-table = matches.any(m => counter(page).at(m.location()) == current)

    if not has-table [
      _Lisa Strassner's Thesis_ #h(1fr) National Academy of Sciences
    ]
  }
)

#lorem(100)
#pagebreak()

#table(
  columns: 2 * (1fr,),
  [A], [B],
  [C], [D],
) <big-table>
