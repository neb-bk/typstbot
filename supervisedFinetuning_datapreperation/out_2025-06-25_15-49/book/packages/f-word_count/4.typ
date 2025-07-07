
#import "@preview/wordometer:0.1.4": word-count

#word-count(total => [
  This is the main text to be counted.
  However, this specific phrase #[should not be included in the count] <no-wc>.
  The word count for this block is #total.words.
], exclude: <no-wc>)
