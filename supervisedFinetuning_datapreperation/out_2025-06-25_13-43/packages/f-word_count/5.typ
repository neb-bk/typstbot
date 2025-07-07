
#import "@preview/wordometer:0.1.4": word-count, total-words

// Global exclusion: All level 1 headings won't count towards total-words
#show: word-count.with(exclude: (heading.where(level: 1)))

= Document Title (Excluded Globally)

This sentence contributes to the document's total word count.
Total words so far (globally excluding title): #total-words.

#word-count(total => [
  This block has some words.
  #[This specific sentence is excluded only from this block's count.] <local-exclude>
  Words in this block: #total.words (excluding local label).
], exclude: <local-exclude>)

This paragraph is also counted globally. The document now has #total-words words.
