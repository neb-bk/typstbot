
#set heading(numbering: "1.")

= Introduction

Manually updating the heading counter:
#counter(heading).update(3)

Another update, multiplying by 2:
#counter(heading).update(n => n * 2)

== Analysis
Current heading number: #context counter(heading).get().
