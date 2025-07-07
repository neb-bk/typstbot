
#set heading(numbering: "(I)")
#show heading: it => [
  #set align(center)
  #set text(font: "Inria Serif")
  ~ #emph(it.body)
     #counter(heading).display(
       it.numbering
     ) ~
]

= Dragon
