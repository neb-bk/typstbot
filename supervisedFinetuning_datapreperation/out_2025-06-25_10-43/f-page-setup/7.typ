
#set page(header: context {
  let page-counter = counter(page).get()
  let matches = query(<big-table>)
  let has-table = matches.any(m => counter(page).at(m.location()) == page-counter)

  if not has-table [
    _Lisa Strassner's Thesis_
    #h(1fr)
    National Academy of Sciences
  ]
})
