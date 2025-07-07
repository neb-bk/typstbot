
#set page("a6") // Default portrait pages

Regular portrait page content.
#pagebreak()

#page(flipped: true)[
  = Multiplication table

  #table(
    columns: 5 * (1fr,),
    ..for x in range(1, 10) {
      for y in range(1, 6) {
        (str(x*y),)
      }
    }
  )
]

#pagebreak()
More regular portrait page content.
