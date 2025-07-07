
#let example_counter = counter("example")
#let example(content) = {
  example_counter.step()
  block(width: 100%)[*Example #context example_counter.display():* #content]
}

= Main Examples
#example[
  This is the first example.
]
#example[
  This is the second example.
]

= Special Series
#example_counter.update(1) // Reset the counter for a new series starting from 1
#example[
  This is the first example of the special series.
]
#example[
  This is the second example of the special series.
]
