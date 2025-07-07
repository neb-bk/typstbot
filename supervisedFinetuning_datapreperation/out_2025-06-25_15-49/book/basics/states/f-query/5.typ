
#set text(10pt)

#figure(
  image("../../../../../image.png"),
  caption: [A beautiful landscape.]
) <fig:landscape>

#lorem(10)

#figure(
  image("../../../../../image.png"),
  caption: [Abstract art piece.]
) <fig:abstract>

#pagebreak()

#figure(
  image("../../../../../image.png"),
  caption: [Architectural design.]
) <fig:architecture>

#v(2em)
== List of Figures

#let all_figures = query(figure)
#if all_figures.len() == 0 {
  [No figures found.]
} else {
  #for i, fig_loc in all_figures {
    #let fig_caption = fig_loc.caption
    #let fig_number = counter(figure).at(fig_loc.location()).first()
    #let page_num = fig_loc.location().page()
    - Figure #fig_number: #fig_caption (Page #page_num)
  }
}
