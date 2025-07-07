
#set page(header: context {let matches = query(<big-table>) let current = counter(page).get() let has-table = matches.any(m => counter(page).at(m.location()) == current) if not has-table [Lisa Strassner's Thesis #h(1fr) National Academy of Sciences]}) 

#lorem(100)
#pagebreak()

#table(columns: 2 * (1fr,), [A], [B], [C], [D],) <big-table>
