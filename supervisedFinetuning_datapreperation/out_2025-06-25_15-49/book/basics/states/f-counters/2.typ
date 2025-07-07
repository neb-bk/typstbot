
#set heading(numbering: "1.")

= Section One
Current heading display: #context counter(heading).display()

#set heading(numbering: ":1:1:")

= Section Two
Updated heading display: #context counter(heading).display()

// Display with a specific pattern, overriding the set style for this instance
#context counter(heading).display("Chapter I: 1.")
