
#set text(10pt)

#figure(
  image("../../../../../image.png"),
  caption: [My First Figure]
) <fig:first>

#table(
  columns: 2,
  [Header 1], [Header 2],
  [Data A], [Data B]
) <tbl:data>

#v(1em)

#let custom_ref(label) = {
  let target_elem = query(label).first()
  if target_elem == none {
    return [\[Reference not found: #label\]]
  }

  let page_num = target_elem.location().page()
  let prefix = ""
  let num = ""
  let caption = target_elem.caption

  if target_elem.func() == figure {
    prefix = "Figure"
    num = counter(figure).at(target_elem.location()).first()
  } else if target_elem.func() == table {
    prefix = "Table"
    num = counter(table).at(target_elem.location()).first()
  } else {
    return [\[Unknown element type for #label\]]
  }

  [
    #prefix #num: #emph(caption) (Page #page_num)
  ]
}

For more details, see #custom_ref(<fig:first>).

The collected data is summarized in #custom_ref(<tbl:data>).

Also, check a non-existent reference: #custom_ref(<non-existent-label>).
