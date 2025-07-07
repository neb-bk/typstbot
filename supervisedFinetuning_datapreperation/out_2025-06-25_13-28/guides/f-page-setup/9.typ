
#set page("iso-b6", margin: 1.75cm)
#set page(footer: context [
  *Confidential Document*
  #h(1fr)
  #counter(page).display(
    "Page 1",
    both: false,
  )
])

This page has a custom footer with 'Confidential Document' and 'Page N'.
#pagebreak()
Another page.
