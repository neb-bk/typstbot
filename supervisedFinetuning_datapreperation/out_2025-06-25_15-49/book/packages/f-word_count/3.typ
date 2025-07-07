
#import "@preview/wordometer:0.1.4": word-count, total-words

#show: word-count.with(exclude: strike)

This sentence will be counted. This sentence #strike[will not be counted] by wordometer.
Another sentence that is fully counted.

Total words in document: #total-words.
