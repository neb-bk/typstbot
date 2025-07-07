
#show heading: set text(navy)

= This is navy-blue
But this stays black.

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
With a base health of 15, the dragon is the most powerful creature.
