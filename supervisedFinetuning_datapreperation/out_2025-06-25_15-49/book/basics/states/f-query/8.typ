
#set text(10pt)

= Introduction <sec:intro>
#lorem(15)

== Section A
#lorem(10)

= Conclusion <sec:concl>
#lorem(12)

#v(2em)
#box(fill: lightgray, inset: 5pt, [
  Querying labels:
  #let intro_loc = query(<sec:intro>).first()
  #let concl_loc = query(<sec:concl>).first()

  #if intro_loc != none {
    - Introduction section found at page #intro_loc.location().page()
  }
  #if concl_loc != none {
    - Conclusion section found at page #concl_loc.location().page()
  }
])
