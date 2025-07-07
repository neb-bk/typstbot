 -norender
#let my_counter = state("doc-counter", 0)

#let next_count() = {
  // Problem: update is not put into the document flow or context
  my_counter.update(c => c + 1)
  // Problem: get is not wrapped in context
  [Current count: #my_counter.get()]
}

#next_count() \
#next_count() \
#next_count() \


#let my_counter = state("doc-counter-fixed", 0)

#let next_count() = {
  // 1. Return the update instruction as content
  // 2. Wrap the get operation in context to evaluate at layout time
  context {
    my_counter.update(c => c + 1)
    [Current count: #my_counter.get()]
  }
}

#next_count() \
#next_count() \
#next_count() \

Final count: #context my_counter.get()
