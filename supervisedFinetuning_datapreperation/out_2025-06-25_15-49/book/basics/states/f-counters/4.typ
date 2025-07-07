
#set heading(numbering: "1.")

= Introduction
Some text here.

#context counter(heading).display(both: true) \ // Default "1 of 2"
#context counter(heading).display("Section #num of #max", both: true) \ // Custom pattern
#context counter(heading).display(
  (num, max) => [
    *Page #num* of #max
  ],
  both: true
)

= Background
This is the second section.

The current value is: #context counter(heading).display()
