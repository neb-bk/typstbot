
#import "@preview/treet:0.1.1": *

#show list: tree-list
#set par(leading: 0.8em)
#show list: set text(font: "DejaVu Sans Mono", size: 0.8em)
- chapters/
  - chapter_1.typ
  - chapter_2.typ
- main.typ 👁 #text(gray)[← document entry point]
- template.typ
```

```typ
// template.typ
#let heading-style =  (size: 24pt, weight: "bold")
#let chapter-title(title) = block(fill: rgb("f0f0f0"), padding: 1em,  heading(style: heading-style, title))
```

```typ
// main.typ
#import "template.typ": *
#show: doc => {
  set page(paper: "a5")
  doc
}

= Document Title

#include("chapters/chapter_1.typ")
#include("chapters/chapter_2.typ")
```

```typ
// chapter_1.typ
#import "../template.typ": *

#chapter-title("Chapter 1")
This is chapter 1.
```

```typ
// chapter_2.typ
#import "../template.typ": *

#chapter-title("Chapter 2")
This is chapter 2.
