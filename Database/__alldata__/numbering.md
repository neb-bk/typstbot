# Math Numbering
## Number by current heading

> See also built-in numbering in [math package section](../../packages/math.md#theorems)

```typ
/// original author: laurmaedje
#set heading(numbering: "1.")

// reset counter at each chapter
// if you want to change the number of displayed 
// section numbers, change the level there
#show heading.where(level:1): it => {
  counter(math.equation).update(0)
  it
}

#set math.equation(numbering: n => {
  numbering("(1.1)", counter(heading).get().first(), n)
  // if you want change the number of number of displayed
  // section numbers, modify it this way:
  /*
  let count = counter(heading).get()
  let h1 = count.first()
  let h2 = count.at(1, default: 0)
  numbering("(1.1.1)", h1, h2, n)
  */
})


= Section
== Subsection

$ 5 + 3 = 8 $ <a>
$ 5 + 3 = 8 $

= New Section
== Subsection
$ 5 + 3 = 8 $
== Subsection
$ 5 + 3 = 8 $ <b>

Mentioning @a and @b.
```

## Number only labeled equations
### Simple code
```typ
// author: shampoohere
#show math.equation:it => {
  if it.fields().keys().contains("label"){
    math.equation(block: true, numbering: "(1)", it)
    // Don't forget to change your numbering style in `numbering`
    // to the one you actually want to use.
    //
    // Note that you don't need to #set the numbering now.
  } else {
    it
  }
}

$ sum_x^2 $
$ dif/(dif x)(A(t)+B(x))=dif/(dif x)A(t)+dif/(dif x)B(t) $ <ep-2>
$ sum_x^2 $
$ dif/(dif x)(A(t)+B(x))=dif/(dif x)A(t)+dif/(dif x)B(t) $ <ep-3>
```

### Make the hacked references clickable again
```typ
// author: gijsleb
#show math.equation:it => {
  if it.has("label") {
    // Don't forget to change your numbering style in `numbering`
    // to the one you actually want to use.
    math.equation(block: true, numbering: "(1)", it)
  } else {
    it
  }
}

#show ref: it => {
  let el = it.element
  if el != none and el.func() == math.equation {
    link(el.location(), numbering(
      // don't forget to change the numbering according to the one
      // you are actually using (e.g. section numbering)
      "(1)",
      counter(math.equation).at(el.location()).at(0) + 1
    ))
  } else {
    it
  }
}

$ sum_x^2 $
$ dif/(dif x)(A(t)+B(x))=dif/(dif x)A(t)+dif/(dif x)B(t) $ <ep-2>
$ sum_x^2 $
$ dif/(dif x)(A(t)+B(x))=dif/(dif x)A(t)+dif/(dif x)B(t) $ <ep-3>
In @ep-2 and @ep-3 we see equations
```
