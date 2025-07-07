
#set heading(numbering: "1.")

= Introduction
Increment the first level:
#context counter(heading).step()

= Analysis
Let's increment the first level again, effectively skipping a number, or incrementing a sub-level if we were deeper:
#context counter(heading).step(level: 1) // Increments 1st part (e.g., from 1. to 2.)

== Sub-Analysis
At #context counter(heading).display().

// Incrementing a specific sub-level (e.g., from 2.1. to 2.2.)
#context counter(heading).step(level: 2)
== Another Sub-Analysis
At #context counter(heading).display().
