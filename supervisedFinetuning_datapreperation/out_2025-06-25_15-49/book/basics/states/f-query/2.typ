
#set page(header: context {
  let elems = query(
    selector(heading).before(here())
  )
  let default_title = smallcaps[My Awesome Document]
  
  if elems == () {
    align(right, default_title)
  } else {
    let nearest_chapter_body = elems.last().body
    default_title + h(1fr) + emph(nearest_chapter_body)
  }
})

= Introduction to Typst
#lorem(20)

= Core Concepts
#lorem(30)

= Advanced Features
#lorem(15)
