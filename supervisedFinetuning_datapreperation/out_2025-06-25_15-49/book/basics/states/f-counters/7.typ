
#set heading(numbering: "1.1.")

= First Section
== Sub-Section

Raw heading counter value: #context counter(heading).get()

#let chapter_counter = counter("chapter_num")
#chapter_counter.update(4)

Raw chapter counter value: #context chapter_counter.get()
