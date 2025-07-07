
#let format-article(title, ..authors) = {
  let by = authors
    .pos()
    .join(", ", last: " and ") // Joins with commas, using 'and' before the last item

  [*#title* \
  _Written by #by._]
}

#set text(font: "New Computer Modern")

#format-article("The Advanced Use of Typst Arguments", "Jane Doe", "John Smith", "Alice Wonderland")

#par()

#format-article("A Solo Journey", "Curious George")
