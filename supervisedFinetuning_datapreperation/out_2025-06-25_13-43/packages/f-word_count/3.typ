
#import "@preview/wordometer:0.1.4": word-count, total-words

// Global exclusion demonstrating selector, and conceptual name/function exclusion
#show: word-count.with(exclude: (
  heading.where(level: 1),
  "caption", // Exclude elements named "caption"
  figure.caption, // Exclude figure captions explicitly
  raw.where(block: true) // Exclude raw blocks
))

= This Heading is Excluded

#figure(
  image("../../../image.png"),
  caption: [This caption is excluded by name/function.]
)

#raw("This raw block is excluded.", block: true)

In this document, after global exclusions, there are #total-words words.

// Local exclusion demonstrating label
#word-count(total => [
  This text is counted.
  #[This sentence is excluded only from this block's count.] <no-wc>
  Words in this block: #total.words.
], exclude: <no-wc>)
