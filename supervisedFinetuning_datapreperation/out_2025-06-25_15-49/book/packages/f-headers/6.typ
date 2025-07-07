
#import "@preview/hydra:0.6.1": hydra

#set heading(numbering: "1")
#set figure(caption: [
  #h(1em) #smallcaps("Figure") #counter(figure).display()\
  #hydra(1): "This image relates to the current section."
])

= Getting Started
#lorem(30)

#figure(
  image("../../../../image.png"),
  caption: "Overview of the system architecture."
)

#lorem(50)

= Advanced Features
#lorem(30)

#figure(
  image("../../../../image.png"),
  caption: "Detailed view of a specific component."
)

#lorem(50)
