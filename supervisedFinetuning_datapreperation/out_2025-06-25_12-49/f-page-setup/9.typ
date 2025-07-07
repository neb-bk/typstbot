
#set page("iso-b6", margin: 1.75cm)
#set page(footer: context [*American Society of Proceedings* #h(1fr) #counter(page).display("1/1", both: true)])


#set page("iso-b6", margin: 1.75cm)
#set page(footer: context [*Fun Typography Club* #h(1fr) #let (num,) = counter(page).get() #let circles = num * (box(circle(radius: 2pt, fill: navy,)),) #box(inset: (bottom: 1pt), circles.join(h(1pt)))])
