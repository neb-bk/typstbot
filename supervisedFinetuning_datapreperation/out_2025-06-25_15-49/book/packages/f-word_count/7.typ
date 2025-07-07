
#import "@preview/wordometer:0.1.4": word-count

#word-count(total => [
  This is a sample paragraph.
  It demonstrates how to access the word and character counts.
  Total words in this paragraph: #total.words.
  Total characters in this paragraph: #total.characters.
])
