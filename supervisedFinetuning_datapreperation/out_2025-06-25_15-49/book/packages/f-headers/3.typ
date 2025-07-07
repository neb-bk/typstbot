
#import "@preview/hydra:0.6.1": hydra

#set page(header: context {
  let l1_heading = hydra(1)
  let l2_heading = hydra(2)
  
  if l1_heading != none {
    align(left, emph(l1_heading))
    if l2_heading != none and l2_heading.len() > 0 {
      h(1em) + "—" + h(1em) + emph(l2_heading)
    }
  }
  line(length: 100%)
})
#set heading(numbering: "1.1")

= Chapter One: Introduction
#lorem(50)

== Section 1.1: Background
#lorem(100)

= Chapter Two: Advanced Topics
#lorem(70)

== Section 2.1: Further Reading
#lorem(120)
