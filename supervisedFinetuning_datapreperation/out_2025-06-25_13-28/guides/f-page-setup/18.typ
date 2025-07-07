
#set page("a6") // Global setting: portrait A6

#lorem(20)

#page(flipped: true, margin: 1cm)[
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

#lorem(20) // Content after the flipped page, back to A6 portrait
