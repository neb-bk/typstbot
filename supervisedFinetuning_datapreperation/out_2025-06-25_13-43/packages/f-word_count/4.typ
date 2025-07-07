
#import "@preview/wordometer:0.1.4": word-count

#word-count(total => [
  You can exclude elements by label, too.
  #[That was #total-words, excluding this sentence!] <no-wc>
], exclude: <no-wc>)
