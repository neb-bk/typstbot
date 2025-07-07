
#import "@preview/wordometer:0.1.4": word-count, total-words

#show: word-count.with(exclude: heading.where(level: 1))

= This Heading Will Not Be Counted
== This Subheading Will Be Counted

This document contains some example text.
The total words shown will exclude the level 1 heading above.
Total words in document: #total-words.
