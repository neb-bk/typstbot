
#import "@preview/wordometer:0.1.4": word-count

This is some introductory text before the counted section.

#word-count(total => [
  This is the block of text whose words and characters we want to count.
  It includes multiple sentences to demonstrate the functionality.
  The number of words in this block is #total.words
  and there are #total.characters letters.
])

This is text after the counted section, which will not be included in the above count.
