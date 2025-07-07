
#import "template.typ": *
#include("chapters/chapter_1.typ")
#include("chapters/chapter_2.typ")
```

Example chapter_1.typ:

```typ
#import "../template.typ": *
#chapter-title("Introduction")
This is the introduction.
