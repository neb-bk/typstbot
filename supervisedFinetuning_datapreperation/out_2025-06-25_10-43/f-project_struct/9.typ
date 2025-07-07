
#let important-note(content) = block(fill: gray.lighten(80%), content)
```

Example chapter_1.typ:

```typ
#import "../shared.typ": *
#important-note[Important information]
```

Example chapter_2.typ:

```typ
#import "../shared.typ": *
#important-note[More important information]
