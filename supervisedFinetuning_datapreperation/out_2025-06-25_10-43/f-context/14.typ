
#let c = counter("mycounter")
#c.update(1)
#context [
  #c.update(2)
  #c.display() \ 
  #context c.display()
]
