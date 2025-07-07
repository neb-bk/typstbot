
#import "@preview/wordometer:0.1.4": word-count, total-words

#show: word-count.with(exclude: figure.caption)

This is the main body text of my document, which should be counted.

#figure(
  image("../../../../image.png", width: 50%),
  caption: [This is an image caption that should be excluded from the word count.]
)

More content here.
Total words in document (excluding captions): #total-words.
