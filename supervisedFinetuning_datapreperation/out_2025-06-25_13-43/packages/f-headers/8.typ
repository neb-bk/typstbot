
#import "@preview/hydra:0.6.1": hydra

#set page(numbering: "1", header: context {
  locate(loc => { // Use locate to get the current page number
    align(left, str(loc.page())) // Display page number on left
    align(right, hydra(1))     // Display main chapter title on right
  })
  line(length: 100%) // A separating line
})

= My Book Chapter One
#lorem(50)

= My Book Chapter Two
#lorem(50)
