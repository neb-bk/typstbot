
#set heading(numbering: "1.")

= Chapter One <chap-one>
#lorem(5)

= Chapter Two <chap-two>
#lorem(5)

#context [
  // Current heading number (implicitly at 'Chapter Two' location):
  #h(1em) `counter(heading).get()`: #counter(heading).get() \

  // Current heading number (explicitly at 'Chapter Two' location):
  #h(1em) `counter(heading).at(here())`: #counter(heading).at(here()) \

  // Heading number at 'Chapter One' location:
  #h(1em) `counter(heading).at(<chap-one>)`: #counter(heading).at(<chap-one>) \
]
