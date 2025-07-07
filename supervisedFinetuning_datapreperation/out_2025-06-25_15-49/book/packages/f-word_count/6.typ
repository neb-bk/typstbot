
#import "@preview/wordometer:0.1.4": word-count, total-words

#show: word-count.with(exclude: (heading.where(level: 1), raw.where(block: true)))

= Main Title (Not counted)

This is some regular text that will be counted.

