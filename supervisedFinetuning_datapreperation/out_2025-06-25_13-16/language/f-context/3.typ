
#set heading(numbering: "1.")

= Introduction <intro> // Label the introduction heading
#lorem(5)

= Background <back> // Label the background heading
#lorem(5)

#context [
  // Get current heading number (at 'Background')
  Current heading: #counter(heading).get() \
  // Equivalent using here() (at 'Background')
  Current heading (with here()): #counter(heading).at(here()) \
  // Get heading number at the 'Introduction' label
  Introduction heading: #counter(heading).at(<intro>)
]
